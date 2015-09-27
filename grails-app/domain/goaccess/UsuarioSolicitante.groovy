package goaccess
import groovy.json.internal.Dates;
import java.text.DateFormat;

class UsuarioSolicitante {

	String nome
	String cpf
	String email
	String setor
	String celular
	/*Acho que ficara mais simples sem autenticacao do usuario, ja que ele
	 * so vai usar a app pra consultar o status de sua solicitacao.*/
	//String login
	//String senha
	String cep
	String logradouro
	String complemento
	String bairro
	String localidade
	String uf
		
	static hasMany = [solicitacao:Solicitacao]	
	

	//static belongsTo = Endereco
	
	String toString () {
		"${this.nome}"
	}
	
	
    static constraints = {
		nome(nullable:false,blank:false)
		cpf(blank:false)
		email(email:true,blank:false)
		setor(blank:false)
		celular(blank:false)
		//login(blank:false)
		//senha(blank:false)
    }
}
