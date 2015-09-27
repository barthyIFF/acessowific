package goaccess
class UsuarioTemporario extends UsuarioSolicitante {

	Date tempoAcesso
	String evento
	String setorEvento
	Integer numEvento
	
	String toString () {
		"${this.nome}"
	}
	
	static constraints = {
		tempoAcesso(nullable:false,blank:false)
		evento(blank:false)
		setorEvento(blank:false)
		numEvento(blank:false)
	}
}
