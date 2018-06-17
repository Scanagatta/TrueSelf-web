package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.UsuarioDao;
import model.Usuario;

@Controller
@Path("/index")
public class IndexController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;
	
	private static Usuario usuarioLogado;

	@Get("/index")
	public void index() {
	}

	@Post("/login")
	public void login(Usuario usuario) {
		if (dao.pesquisarLogin(usuario.getEmail()) != null) {
			if (dao.pesquisarSenha(usuario.getEmail()).equals(usuario.getSenha())) {
				//usuarioLogado = dao.pesquisarUsuario(usuario.getEmail());
				result.redirectTo(this).home();
			} else {
				// erro senha incorreta
			}
		} else {
			// erro email nao existe
		}
	}

	@Post("/cadastrar")
	public void cadastrar(Usuario usuario) {
		if (dao.pesquisarLogin(usuario.getEmail()) == null) {
			if (usuario.getSenha().equals(usuario.getConfirmaSenha())) {
				dao.salvar(usuario);
				usuarioLogado = usuario;
				result.redirectTo(this).home();
			} else {
				// erro de senha
			}
		} else {
			// erro email ja cadastrado
		}
	}

	@Get("/home")
	public void home() {
		result.include("usuarioLogado", usuarioLogado);
		result.redirectTo(HomeController.class).home();
	}

	public static Usuario getUsuarioLogado() {
		return usuarioLogado;
	}
	
	
}
