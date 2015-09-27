package goaccess
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.SimpleDateFormat;

@Transactional(readOnly = false)
class SolicitacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	@Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 500, 500)
        respond Solicitacao.list(params), model:[solicitacaoInstanceCount: Solicitacao.count()]
    }
	
	

	@Secured('ROLE_SUPERUSER')
	def indexAutorizador(Integer max) {
		//[Claudio - 10/09/15] Listando apenas as solicitacoes do username que está logado atualmente	
		User operadorLogado = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()		
		AutorizadorProf autorizador = AutorizadorProf.findByUsername(operadorLogado.username)		
		def solicitacoesPorAutorizador = Solicitacao.findAllByAutorizador(autorizador)
		[solicitacoesPorAutorizador:solicitacoesPorAutorizador]
	}
	
	@Secured('ROLE_ADMIN')
	def indexOperador(Integer max) {
		//[Claudio - 17/09/15] Listando apenas as solicitacoes do username que está logado atualmente
		User logado = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()
		OperadorCTI op = OperadorCTI.findByUsername(logado.username)
		def solicitacoesPorOperador = Solicitacao.findAllByOperador(op)
		[solicitacoesPorOperador:solicitacoesPorOperador]
	}

	
	@Secured('ROLE_SUPERUSER')	
	def aprovaSol(Solicitacao solicitacaoInstance) {
		if (solicitacaoInstance == null) {
			notFound()
			return 
		}

		if (solicitacaoInstance.hasErrors()) {
			respond solicitacaoInstance.errors, view:'indexAutorizador'
			return
		}
		AutorizadorProf at = AutorizadorProf.findById(solicitacaoInstance.autorizador.id)
		OperadorCTI op = OperadorCTI.findById(solicitacaoInstance.operador.id)
		solicitacaoInstance.status = "Solicitacao APROVADA. Aguardando cadastro pelo operador: "+op.nome
		solicitacaoInstance.save(flush:true)
	    render "Solicitacao APROVADA com sucesso!"	
				
	}
	
	@Secured('ROLE_SUPERUSER')	
	def reprovaSol(Solicitacao solicitacaoInstance) {
		if (solicitacaoInstance == null) {
			notFound()
			return
		}

		if (solicitacaoInstance.hasErrors()) {
			respond solicitacaoInstance.errors, view:'indexAutorizador'
			return
		}
		AutorizadorProf at = AutorizadorProf.findById(solicitacaoInstance.autorizador.id)		
		solicitacaoInstance.status = "Solicitacao REPROVADA por: "+at.nome
		solicitacaoInstance.save(flush:true)
		render "Solicitacao REPROVADA com sucesso!"
				
	}
	
	@Secured('ROLE_ADMIN')
	def encerraSol(Solicitacao solicitacaoInstance) {
		if (solicitacaoInstance == null) {
			notFound()
			return
		}

		if (solicitacaoInstance.hasErrors()) {
			respond solicitacaoInstance.errors, view:'indexAutorizador'
			return
		}		
		solicitacaoInstance.status = 'Solicitacao FINALIZADA. Acesso a rede garantido.'
		solicitacaoInstance.save(flush:true)
		render "Solicitacao ENCERRADA com sucesso!"
				
	}
	
	@Secured('ROLE_ADMIN')
	def op_reprovaSol(Solicitacao solicitacaoInstance) {
		if (solicitacaoInstance == null) {
			notFound()
			return
		}

		if (solicitacaoInstance.hasErrors()) {
			respond solicitacaoInstance.errors, view:'indexAutorizador'
			return
		}
		OperadorCTI op = OperadorCTI.findById(solicitacaoInstance.operador.id)
		solicitacaoInstance.status = "Solicitacao REPROVADA por: "+op.nome
		solicitacaoInstance.save(flush:true)
		render "Solicitacao REPROVADA com sucesso!"
				
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def consultaStatus() {
		Solicitacao s = Solicitacao.findByNumProtocolo(params.protocolo)
		if (s == null)
			//render "<h4>Consulta ao protocolo "+params.protocolo+":<font color='red'> Solicitacao nao encontrada.</font></h4>"
			render "<h4><font color='red'> Solicitacao nao encontrada.</font></h4>"
		else
			//render "<h4>Consulta ao protocolo "+params.protocolo+": <font color='red'>"+s.status+"</font></h4>"
			render "<h4><font color='red'>"+s.status+"</font></h4>"
			
	}

	
	@Secured('ROLE_ADMIN')
    def show(Solicitacao solicitacaoInstance) {
        respond solicitacaoInstance
    }
	@Secured('ROLE_ADMIN')
    def create() {
        respond new Solicitacao(params)
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def save(Solicitacao solicitacaoInstance) {
        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        if (solicitacaoInstance.hasErrors()) {
            respond solicitacaoInstance.errors, view:'create'
            return
        }
		
		//Definindo o numero do protocolo automaticamente		
		//Fomata a data
		String dataFormatada = new SimpleDateFormat("ddMMyyyy").format(new Date())		
		//Pega a solicitacao com o maior ID no banco
		def s = Solicitacao.listOrderById(max:2, order: "desc")[0]
		int ultimoId
		//Checa se a tabela de solicitacoes esta vazia (primeira solicitacao)
		if (s == null)
			ultimoId = 9998
		else
			//Pega somente o maior ID e o incrementa
			ultimoId = s.id
		ultimoId = ultimoId+1
		//Colocando zeros a esquerrda para que fique compativel com a consulta Rest
		String ultimoIdCom0s = String.format("%05d", ultimoId);
		//Define o numProtocolo 
		solicitacaoInstance.numProtocolo =  dataFormatada+ultimoIdCom0s
		
		//Claudio - 17/09/15: Definindo o status inicial da solicitacao 
		AutorizadorProf at = AutorizadorProf.findById(solicitacaoInstance.autorizador.id)
		solicitacaoInstance.status = "AGUARDANDO APROVACAO de "+at.nome
				
		solicitacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect solicitacaoInstance
            }
            '*' { respond solicitacaoInstance, [status: CREATED] }
        }
    }
	
	@Secured('ROLE_ADMIN')
    def edit(Solicitacao solicitacaoInstance) {
        respond solicitacaoInstance
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def update(Solicitacao solicitacaoInstance) {
        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        if (solicitacaoInstance.hasErrors()) {
            respond solicitacaoInstance.errors, view:'edit'
            return
        }

        solicitacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect solicitacaoInstance
            }
            '*'{ respond solicitacaoInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def delete(Solicitacao solicitacaoInstance) {

        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        solicitacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'solicitacao.label', default: 'Solicitacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
