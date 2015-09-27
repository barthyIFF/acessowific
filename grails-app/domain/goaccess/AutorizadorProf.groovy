package goaccess

class AutorizadorProf extends Cliente {

	String nome
	String cpf	
	String email
	String setorResponsavel
	Integer numMemo
	String celularNum
	
	static belongsTo = [papel:Papel]
	
	String toString () {
		"${this.nome}"
	}
	
	static hasMany = [solicitacoes:Solicitacao]
	
    static constraints = {
		nome(nullable:false,blank:false)
		cpf(blank:false)
		email(email:true,blank:false)
		setorResponsavel(blank:false)
		numMemo(blank:false)
		celularNum(blank:false)
    }
}
