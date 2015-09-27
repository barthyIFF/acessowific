
package goaccess
import grails.plugin.springsecurity.annotation.Secured

//Autorizando a classe toda
@Secured('ROLE_ADMIN')
class OutrasTarefasController {

	//@Secured('ROLE_ADMIN')
	def index(){		
	}
	
	//@Secured('ROLE_ADMIN')
    def indexInicial() {
		//render "OIiii!!!"
		/*Por enquanto serve apenas para direcionar para a página inicial padrao do Grails,
		 * pois ela tem informações que podem nos ajudar.*/
		
	}
	//@Secured('ROLE_ADMIN')
	def operador() {
		render "ambiente restrito, somente OPERADORES!"
	}
	
	//@Secured(["ROLE_ADMIN", "ROLE_USER"])
	@Secured('ROLE_SUPERUSER')
	def autorizador() {
		render "ambiente restrito, somente AUTORIZADORES!"
	}
	
	//@Secured('ROLE_ADMIN')
	def usuario() {
		render "ambiente restrito, somente USUARIOS!"
	}
	
	//@Secured('ROLE_ADMIN')
	def cadastronovo() {
		render "CADASTRO DE NOVO USUARIO"
	}
	//@Secured('ROLE_ADMIN')
	def cadastroequipamento() {
		render "CADASTRO DE NOVO EQUIPAMENTO"
	}

}
