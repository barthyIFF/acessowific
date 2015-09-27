package goaccess
import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class UsuarioTemporarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 500, 500)
        respond UsuarioTemporario.list(params), model:[usuarioTemporarioInstanceCount: UsuarioTemporario.count()]
    }

    def show(UsuarioTemporario usuarioTemporarioInstance) {
        respond usuarioTemporarioInstance
    }

    def create() {
        respond new UsuarioTemporario(params)
    }

    @Transactional
    def save(UsuarioTemporario usuarioTemporarioInstance) {
        if (usuarioTemporarioInstance == null) {
            notFound()
            return
        }

        if (usuarioTemporarioInstance.hasErrors()) {
            respond usuarioTemporarioInstance.errors, view:'create'
            return
        }

        usuarioTemporarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario'), usuarioTemporarioInstance.id])
                redirect usuarioTemporarioInstance
            }
            '*' { respond usuarioTemporarioInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioTemporario usuarioTemporarioInstance) {
        respond usuarioTemporarioInstance
    }

    @Transactional
    def update(UsuarioTemporario usuarioTemporarioInstance) {
        if (usuarioTemporarioInstance == null) {
            notFound()
            return
        }

        if (usuarioTemporarioInstance.hasErrors()) {
            respond usuarioTemporarioInstance.errors, view:'edit'
            return
        }

        usuarioTemporarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioTemporario.label', default: 'UsuarioTemporario'), usuarioTemporarioInstance.id])
                redirect usuarioTemporarioInstance
            }
            '*'{ respond usuarioTemporarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioTemporario usuarioTemporarioInstance) {

        if (usuarioTemporarioInstance == null) {
            notFound()
            return
        }

        usuarioTemporarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioTemporario.label', default: 'UsuarioTemporario'), usuarioTemporarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
