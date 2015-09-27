package goaccess

//É filho de Cliente, dentro outras coisas tem username e password
class OperadorCTI extends Cliente {

	
	String nome
	String cpf
	String email
	String celular
	
	//Sempre que um operador for salvo ou apagado o papel tb será
	static belongsTo = [papel:Papel]
	
	static hasMany = [solicitacoes:Solicitacao]
	
	String toString () {
		"${this.nome}"
	}
	
    static constraints = {
		nome(nullable:false,blank:false)
		cpf(blank:false)
		email(email:true,blank:false)
		celular(blank:false)
    }
}