package goaccess

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class ClientePapel implements Serializable {

	private static final long serialVersionUID = 1

	Cliente cliente
	Papel papel

	ClientePapel(Cliente u, Papel r) {
		this()
		cliente = u
		papel = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof ClientePapel)) {
			return false
		}

		other.cliente?.id == cliente?.id && other.papel?.id == papel?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (cliente) builder.append(cliente.id)
		if (papel) builder.append(papel.id)
		builder.toHashCode()
	}

	static ClientePapel get(long clienteId, long papelId) {
		criteriaFor(clienteId, papelId).get()
	}

	static boolean exists(long clienteId, long papelId) {
		criteriaFor(clienteId, papelId).count()
	}

	private static DetachedCriteria criteriaFor(long clienteId, long papelId) {
		ClientePapel.where {
			cliente == Cliente.load(clienteId) &&
			papel == Papel.load(papelId)
		}
	}

	static ClientePapel create(Cliente cliente, Papel papel, boolean flush = false) {
		def instance = new ClientePapel(cliente, papel)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Cliente u, Papel r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = ClientePapel.where { cliente == u && papel == r }.deleteAll()

		if (flush) { ClientePapel.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Cliente u, boolean flush = false) {
		if (u == null) return

		ClientePapel.where { cliente == u }.deleteAll()

		if (flush) { ClientePapel.withSession { it.flush() } }
	}

	static void removeAll(Papel r, boolean flush = false) {
		if (r == null) return

		ClientePapel.where { papel == r }.deleteAll()

		if (flush) { ClientePapel.withSession { it.flush() } }
	}

	static constraints = {
		papel validator: { Papel r, ClientePapel ur ->
			if (ur.cliente == null || ur.cliente.id == null) return
			boolean existing = false
			ClientePapel.withNewSession {
				existing = ClientePapel.exists(ur.cliente.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['cliente', 'papel']
		version false
	}
}
