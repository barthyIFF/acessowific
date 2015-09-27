package goaccess
import grails.plugin.springsecurity.annotation.Secured



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class ClientePapelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ClientePapel.list(params), model:[clientePapelInstanceCount: ClientePapel.count()]
    }

    def show(ClientePapel clientePapelInstance) {
        respond clientePapelInstance
    }

    def create() {
        respond new ClientePapel(params)
    }

    @Transactional
    def save(ClientePapel clientePapelInstance) {
        if (clientePapelInstance == null) {
            notFound()
            return
        }

        if (clientePapelInstance.hasErrors()) {
            respond clientePapelInstance.errors, view:'create'
            return
        }

        clientePapelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clientePapel.label', default: 'ClientePapel'), clientePapelInstance.id])
                redirect clientePapelInstance
            }
            '*' { respond clientePapelInstance, [status: CREATED] }
        }
    }

    def edit(ClientePapel clientePapelInstance) {
        respond clientePapelInstance
    }

    @Transactional
    def update(ClientePapel clientePapelInstance) {
        if (clientePapelInstance == null) {
            notFound()
            return
        }

        if (clientePapelInstance.hasErrors()) {
            respond clientePapelInstance.errors, view:'edit'
            return
        }

        clientePapelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ClientePapel.label', default: 'ClientePapel'), clientePapelInstance.id])
                redirect clientePapelInstance
            }
            '*'{ respond clientePapelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ClientePapel clientePapelInstance) {

        if (clientePapelInstance == null) {
            notFound()
            return
        }

        clientePapelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ClientePapel.label', default: 'ClientePapel'), clientePapelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clientePapel.label', default: 'ClientePapel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
