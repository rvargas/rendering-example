package me.rafaelvargas.rendering

class RenderController {
	
	def pdfRenderingService
    
	def index() {
		pdfRenderingService.render(template: "/render/pdf", model: [:],response)
	}
}
