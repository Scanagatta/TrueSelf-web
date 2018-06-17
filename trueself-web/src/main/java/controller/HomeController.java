package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;

@Controller
@Path("/home")
public class HomeController {
	
	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;
	
	@Get("/home")
	public void home() {
		
	}
	
}
