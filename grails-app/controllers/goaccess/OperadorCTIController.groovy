package goaccess
import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.context.SecurityContextHolder

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class OperadorCTIController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def indexAntigo(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OperadorCTI.list(params), model:[operadorCTIInstanceCount: OperadorCTI.count()]
    }

    def index(Integer max) {
        /*params.max = Math.min(max ?: 10, 100)
        respond OperadorCTI.list(params), model:[operadorCTIInstanceCount: OperadorCTI.count()]*/
		
		//[Claudio - 18/09/15] Listando apenas as solicitacoes do username que está logado atualmente
		User logado = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()
		OperadorCTI op = OperadorCTI.findByUsername(logado.username)
		//Listando somente o status de interesse
		def solicitacoesPorOperadorEStatus = Solicitacao.findAllByOperadorAndStatus(op, "Solicitacao APROVADA. Aguardando cadastro pelo operador: "+op.nome)
		[solicitacoesPorOperadorEStatus:solicitacoesPorOperadorEStatus]
    }

    def show(OperadorCTI operadorCTIInstance) {
        respond operadorCTIInstance
    }

    def create() {
        respond new OperadorCTI(params)
    }

    @Transactional
    def save(OperadorCTI operadorCTIInstance) {
        if (operadorCTIInstance == null) {
            notFound()
            return
        }

        if (operadorCTIInstance.hasErrors()) {
            respond operadorCTIInstance.errors, view:'create'
            return
        }

        operadorCTIInstance.save flush:true
		
		/* As duas proximas linhas sao usadas para autenticacao.
		 * Desta forma pega o papel que foi escolhi na visao
		 * Vou deixar comentado pq eu nao quero que haja essa escolha,
		 * todo operador vai receber o papel "ROLE_ADMIN"
		Papel p = operadorCTIInstance.papel;
		ClientePapel.create(operadorCTIInstance,p);*/
		//Definindo o papel obrigatoriamente
		/*Note que estou procurando e selecionando um papel pelo atributo
		 * authority
		 */
		Papel p = Papel.findByAuthority('ROLE_ADMIN')
		ClientePapel.create(operadorCTIInstance,p);


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'operadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect operadorCTIInstance
            }
            '*' { respond operadorCTIInstance, [status: CREATED] }
        }
    }

    def edit(OperadorCTI operadorCTIInstance) {
        respond operadorCTIInstance
    }

    @Transactional
    def update(OperadorCTI operadorCTIInstance) {
        if (operadorCTIInstance == null) {
            notFound()
            return
        }

        if (operadorCTIInstance.hasErrors()) {
            respond operadorCTIInstance.errors, view:'edit'
            return
        }

        operadorCTIInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OperadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect operadorCTIInstance
            }
            '*'{ respond operadorCTIInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OperadorCTI operadorCTIInstance) {

        if (operadorCTIInstance == null) {
            notFound()
            return
        }
		
		
		//Antes de apagar o cliente tem que apagar o ClientePapel
		ClientePapel cp = ClientePapel.findByCliente(operadorCTIInstance)
		cp.delete(flush:true)
		
        operadorCTIInstance.delete flush:true
		
		render "Operador deletado!"

       /* request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OperadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }*/
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'operadorCTI.label', default: 'OperadorCTI'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


}