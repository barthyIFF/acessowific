package goaccess
import grails.plugin.springsecurity.annotation.Secured
@Secured('ROLE_ADMIN')

class AjaxController {
	def index(){
	
}

def indexajax() {}
    def difference(int a, int b) {
        [a:a, b:b, difference:a-b]
    }
}
	
	


