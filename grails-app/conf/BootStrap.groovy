import java.text.SimpleDateFormat;
import goaccess.Papel
import goaccess.Cliente
import goaccess.ClientePapel
import goaccess.UsuarioSolicitante
import goaccess.Solicitacao
import goaccess.AutorizadorProf
import goaccess.OperadorCTI
//Testando se nao precisa da linha abaixo
import goaccess.security.*
class BootStrap {

    def init = { servletContext ->
		/*Claudio 23/08/15- Criando usuarios com autenticacao e autorizacao
		 *Depois de rodar a app a primeira vez essas linhas podem ser apagadas
		 *ROLE_USER = AUTORIZADOR
		 *ROLE_ADMIN = OPERADOR
		 *Teste autorizador como ROLE_SUPERUSER e usuario como ROLE_USER 
		 *Por enquanto, somente para testes, o autorizador so tem acesso a action OutrasTarefas/autorizador.
		 *Tb pra testes o operador NAO tem acesso a OutrasTarefas/autorizador.
		 *Operador tem acesso ao resto da app, por enquanto.
		 */
				
		//Claudio - 28/08/15: Testando so mexer no banco se ele estiver vazio		
		if(ClientePapel.list().size() == 0){
			println("Criando primeiros PAPEIS: operador e autorizador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			Papel p_op = new Papel('ROLE_ADMIN').save()
			Papel p_at = new Papel('ROLE_SUPERUSER').save()
			
			println("Criando primeiros CLIENTES: autorizador 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")			
			AutorizadorProf at = new AutorizadorProf()
			at.celularNum = '123'
			at.cpf = '123'
			at.email = 'autorizador01@eu.eu.br'
			at.nome = 'autorizador'
			at.password = 'autorizador'
			at.username = 'autorizador'
			at.numMemo = 123
			at.setorResponsavel = 'Setor1'
			at.papel = p_at
			at.save(flush: true, failOnError: true)
			ClientePapel.create at, p_at, true
			
			println("Criando primeiros CLIENTES: autorizador 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			AutorizadorProf at2 = new AutorizadorProf()
			at2.celularNum = '1234'
			at2.cpf = '1234'
			at2.email = 'fernandinho@eu.eu.br'
			at2.nome = 'Fernando Henrique Cardoso'
			at2.password = 'fernando'
			at2.username = 'fernando'
			at2.numMemo = 123
			at2.setorResponsavel = 'Casa da Dinda'
			at2.papel = p_at
			at2.save(flush: true, failOnError: true)
			ClientePapel.create at2, p_at, true
			
			println("Criando primeiros CLIENTES: autorizador 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			AutorizadorProf at3 = new AutorizadorProf()
			at3.celularNum = '12345'
			at3.cpf = '12345'
			at3.email = 'lula@eu.eu.br'
			at3.nome = 'Luiz Inacio Lula da Silva'
			at3.password = 'luiz'
			at3.username = 'luiz'
			at3.numMemo = 1234
			at3.setorResponsavel = 'MEC'
			at3.papel = p_at
			at3.save(flush: true, failOnError: true)
			ClientePapel.create at3, p_at, true

			println("Criando primeiros CLIENTES: operador 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			OperadorCTI op = new OperadorCTI()
			op.celular = '123'
			op.cpf = '1231231123'
			op.email = 'operador@eu.eu.br'
			op.nome = 'operador'
			op.password = 'operador'
			op.username = 'operador'
			op.papel = p_op
			op.save(flush: true, failOnError: true)
			ClientePapel.create op, p_op, true
			
			println("Criando primeiros CLIENTES: operador 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			OperadorCTI op2 = new OperadorCTI()
			op2.celular = '12345'
			op2.cpf = '12345'
			op2.email = 'didinha@eu.eu.br'
			op2.nome = 'Dilma Vana Rousseff'
			op2.password = 'dilma'
			op2.username = 'dilma'
			op2.papel = p_op
			op2.save(flush: true, failOnError: true)
			ClientePapel.create op2, p_op, true

			println("Criando primeiros CLIENTES: operador 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			OperadorCTI op3 = new OperadorCTI()
			op3.celular = '54321'
			op3.cpf = '54321'
			op3.email = 'olhinho@eu.eu.br'
			op3.nome = 'Nestor Cunat Cervero'
			op3.password = 'nestor'
			op3.username = 'nestor'
			op3.papel = p_op
			op3.save(flush: true, failOnError: true)
			ClientePapel.create op3, p_op, true

			

			//checa a quantidade no banco e o programa so vai rodar se ela estiver correta
			println("Checando se o banco esta' coerente %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			assert Cliente.count() == 6
			assert Papel.count() == 2
			assert ClientePapel.count() == 6	
				
			if(Solicitacao.list().size() == 0){				
				println("Criando primeiros Usuarios: Usuario solicitante 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
				UsuarioSolicitante usu = new UsuarioSolicitante()
				usu.bairro = 'Parque da Legiao'
				usu.celular = '101112'
				usu.cep = '101112'
				usu.complemento = 'Bloco 2'
				usu.cpf = '101112'
				usu.email = 'rosso@eu.eu.br'
				usu.localidade = 'Brasilia'
				usu.logradouro = 'Asa Norte, sem numero'
				usu.nome = ' Renato Manfredini Junior'
				usu.setor = 'Rock Nascional'
				usu.uf = 'DF'
				usu.save(flush: true, failOnError: true)			
				
				println("Criando primeiros Usuarios: Usuario solicitante 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
				UsuarioSolicitante usu2 = new UsuarioSolicitante()
				usu2.bairro = 'Itapua'
				usu2.celular = '111213'
				usu2.cep = '111213'
				usu2.complemento = 'Casa 4'
				usu2.cpf = '111213'
				usu2.email = 'gil1@eu.eu.br'
				usu2.localidade = 'Bahia'
				usu2.logradouro = 'Estrada da Praia, 150'
				usu2.nome = 'Gilberto Passos Gil Moreira'
				usu2.setor = 'MPB'
				usu2.uf = 'BA'
				usu2.save(flush: true, failOnError: true)

				println("Criando primeiros Usuarios: Usuario solicitante 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
				UsuarioSolicitante usu3 = new UsuarioSolicitante()
				usu3.bairro = 'Alameda das ondas'
				usu3.celular = '121314'
				usu3.cep = '121314'
				usu3.complemento = 'Quadra 15'
				usu3.cpf = '121314'
				usu3.email = 'fera@eu.eu.br'
				usu3.localidade = 'California'
				usu3.logradouro = 'New Point, 42'
				usu3.nome = 'Jack Johnson'
				usu3.setor = 'Surf'
				usu3.uf = 'RJ'
				usu3.save(flush: true, failOnError: true)

				String dataFormatada = new SimpleDateFormat("ddMMyyyy").format(new Date())
				def data = new Date()
				int j = 1
				(1..3).each { i ->
					println("Criando primeiras Solicitacoes:Solicitacao "+j+" - Aguardando Aprovacao %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+i)			
					def Solicitacao s = new Solicitacao()
					s.data = data
					s.numProtocolo = dataFormatada+"9999"+i				
					s.status = 'AGUARDANDO APROVACAO de Fernando Henrique Cardoso'
					s.tipo = 'Tipo1'
					s.autorizador = at2
					s.operador = op2
					s.usuario = usu2
					s.save(flush: true, failOnError: true)
					j++
				}				
				
				(1..3).each { i ->					
					println("Criando primeiras Solicitacoes:Solicitacao "+j+" - Aprovadas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+i)
					def Solicitacao s = new Solicitacao()
					s.data = data
					s.numProtocolo = dataFormatada+"9999"+j
					s.status = 'Solicitacao APROVADA. Aguardando cadastro pelo operador: Dilma Vana Rousseff'
					s.tipo = 'Tipo1'
					s.autorizador = at2
					s.operador = op2
					s.usuario = usu2
					s.save(flush: true, failOnError: true)
					j++
				}
				
				(1..3).each { i ->				
					println("Criando primeiras Solicitacoes:Solicitacao "+j+" - Finalizadas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+i)
					def Solicitacao s = new Solicitacao()
					s.data = data
					s.numProtocolo = dataFormatada+"9999"+j
					s.status = 'Solicitacao FINALIZADA. Acesso a rede garantido.'
					s.tipo = 'Tipo1'
					s.autorizador = at2
					s.operador = op2
					s.usuario = usu2
					s.save(flush: true, failOnError: true)
					j++
				}
				
				(1..11).each { i ->
					println("Criando primeiras Solicitacoes:Solicitacao "+j+" - Aguardando Aprovacao %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"+i)
					def Solicitacao s = new Solicitacao()
					s.data = data
					//Diminuindo a quantidade de 9
					s.numProtocolo = dataFormatada+"999"+j
					s.status = 'AGUARDANDO APROVACAO de Luiz Inacio Lula da Silva'
					s.tipo = 'Tipo1'
					s.autorizador = at3
					s.operador = op3
					s.usuario = usu3
					s.save(flush: true, failOnError: true)
					j++
				}


				
				
				println("Checando se o banco esta' coerente %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				assert UsuarioSolicitante.count() == 3
				assert Solicitacao.count() == 20

	
							
			}
		}
		
		/*Outras Pendencias:
		 * 	- Criar uma forma melhor para fazer logout ou trocar de usuario (verifiquei que plugin tem suporte a Switch User)
		 *  - Substituir a ROLE_ADMIN e ROLE_USER por OPERADOR e AUTORIZADOR nas definições do plugin
		 *  - Fazer o CRUD pra cadastrar usuario e senha. Acho que o erro é pq eu tenho que mandar gravar na tabela cliente_papel e não clientepapel
		 * 
		 * Defido a falta de tempo é possível que algumas pendencias não sejam solucionadas.
		 * Claudio - 23/08/15		
		 */
    }
    def destroy = {
    }
}
