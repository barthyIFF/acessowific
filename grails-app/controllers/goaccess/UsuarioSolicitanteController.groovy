package goaccess
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured


@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class UsuarioSolicitanteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 500, 500)
        respond UsuarioSolicitante.list(params), model:[usuarioSolicitanteInstanceCount: UsuarioSolicitante.count()]
    }

    def show(UsuarioSolicitante usuarioSolicitanteInstance) {
        respond usuarioSolicitanteInstance
    }

    def create() {
        respond new UsuarioSolicitante(params)
    }

    @Transactional
    def save(UsuarioSolicitante usuarioSolicitanteInstance) {
        if (usuarioSolicitanteInstance == null) {
            notFound()
            return
        }

        if (usuarioSolicitanteInstance.hasErrors()) {
            respond usuarioSolicitanteInstance.errors, view:'create'
            return
        }

        usuarioSolicitanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante'), usuarioSolicitanteInstance.id])
                redirect usuarioSolicitanteInstance
            }
            '*' { respond usuarioSolicitanteInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioSolicitante usuarioSolicitanteInstance) {
        respond usuarioSolicitanteInstance
    }

    @Transactional
    def update(UsuarioSolicitante usuarioSolicitanteInstance) {
        if (usuarioSolicitanteInstance == null) {
            notFound()
            return
        }

        if (usuarioSolicitanteInstance.hasErrors()) {
            respond usuarioSolicitanteInstance.errors, view:'edit'
            return
        }

        usuarioSolicitanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioSolicitante.label', default: 'UsuarioSolicitante'), usuarioSolicitanteInstance.id])
                redirect usuarioSolicitanteInstance
            }
            '*'{ respond usuarioSolicitanteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioSolicitante usuarioSolicitanteInstance) {

        if (usuarioSolicitanteInstance == null) {
            notFound()
            return
        }

        usuarioSolicitanteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioSolicitante.label', default: 'UsuarioSolicitante'), usuarioSolicitanteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
