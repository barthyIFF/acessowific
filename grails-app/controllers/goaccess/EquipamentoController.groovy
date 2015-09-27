package goaccess
import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class EquipamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 500, 500)
        respond Equipamento.list(params), model:[equipamentoInstanceCount: Equipamento.count()]
    }

    def show(Equipamento equipamentoInstance) {
        respond equipamentoInstance
    }

    def create() {
        respond new Equipamento(params)
    }

    @Transactional
    def save(Equipamento equipamentoInstance) {
        if (equipamentoInstance == null) {
            notFound()
            return
        }

        if (equipamentoInstance.hasErrors()) {
            respond equipamentoInstance.errors, view:'create'
            return
        }

        equipamentoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'equipamento.label', default: 'Equipamento'), equipamentoInstance.id])
                redirect equipamentoInstance
            }
            '*' { respond equipamentoInstance, [status: CREATED] }
        }
    }

    def edit(Equipamento equipamentoInstance) {
        respond equipamentoInstance
    }

    @Transactional
    def update(Equipamento equipamentoInstance) {
        if (equipamentoInstance == null) {
            notFound()
            return
        }

        if (equipamentoInstance.hasErrors()) {
            respond equipamentoInstance.errors, view:'edit'
            return
        }

        equipamentoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Equipamento.label', default: 'Equipamento'), equipamentoInstance.id])
                redirect equipamentoInstance
            }
            '*'{ respond equipamentoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Equipamento equipamentoInstance) {

        if (equipamentoInstance == null) {
            notFound()
            return
        }

        equipamentoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Equipamento.label', default: 'Equipamento'), equipamentoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'equipamento.label', default: 'Equipamento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
