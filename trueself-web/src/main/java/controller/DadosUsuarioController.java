package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/dadosUsuario")
public class DadosUsuarioController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Get("/perfil")
	public void perfil() {
	}

	@Get("/alterar")
	public void alterar(Usuario usuario) {
		dao.salvar(usuario);
		result.redirectTo(HomeController.class).home();

	}

}
