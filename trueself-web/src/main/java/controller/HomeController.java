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

	@Get("/home")
	public void home() {

	}

	@Get("/perfil")
	public void perfil() {
		if (IndexController.getUsuarioLogado().getTipo() == 1) {
			result.include("usuarioLogado", IndexController.getPessoaLogada());
			result.redirectTo(DadosUsuarioController.class).perfil();
		} else if (IndexController.getUsuarioLogado().getTipo() == 2) {
			result.include("usuarioLogado", IndexController.getEmpresaLogada());
			result.redirectTo(DadosUsuarioController.class).empresa();
		}
	}

	@Get("/sair")
	public void sair() {
		result.redirectTo(IndexController.class).index();

	}

	@Get("/alterarSenha")
	public void alterarSenha() {
		result.redirectTo(AlterarSenhaController.class).alterar();

	}
}
