package me.rafaelvargas.rendering

class RenderController {
	
	def pdfRenderingService
    
	def index() {}
	
	def test(){
		pdfRenderingService.render(template: "/render/pdf", model: [:],response)
	}
	
	def generate(){
		if(!params.body){
			flash.error = "Debes de escribir el cuerpo del XHTML"
			redirect action:'index'
			return
		}
		
		pdfRenderingService.render(template: "/render/pdfGenerate", model: [body:params.body],response)
	}
}
