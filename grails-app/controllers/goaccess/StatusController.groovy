package goaccess
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class StatusController {

        def status() { }
		
	    def diferenca() {
			render "status indefinido"		
		}

}