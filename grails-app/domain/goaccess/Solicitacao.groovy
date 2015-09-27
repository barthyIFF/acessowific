package goaccess

class Solicitacao {

	String numProtocolo
	String status			//Vamos combinar dois estados (pendente ou autorizado)
	String tipo
	OperadorCTI operador
	AutorizadorProf autorizador
	UsuarioSolicitante usuario
	Date data
	
	
	String toString(){
		"${this.numProtocolo}"
	}
	
	static belongsTo = [OperadorCTI,AutorizadorProf,UsuarioSolicitante]
	
	static hasMany = [equipamentos:Equipamento]
	
	static constraints = {
		numProtocolo(nullable:false,blank:false)
		status(blank:false)
		tipo(blank:false)
		data(blank:false)
    }
}
