package controller;

import java.time.LocalDate;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.ComentarioDao;
import dao.UsuarioDao;
import model.Comentario;
import model.Usuario;

@Controller
@Path("/visitante")
public class PerfilVisitanteController {
	

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;
	
	@Inject
	private ComentarioDao comentarioDao;

	@Get("/perfilVisitante")
	public void perfilVisitante() {
	}

	@Get("/alterarSenha")
	public void alterarSenha() {
		result.redirectTo(AlterarSenhaController.class).alterar();
	}

	@Get("/home")
	public void home() {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(HomeController.class).home();
	}
	
	@Get("/busca")
	public void busca(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));
		result.redirectTo(BuscaController.class).busca();
	}

	@Get("/perfil")
	public void perfil() {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(DadosUsuarioController.class).perfil();
	}
	
	@Post("/comentar")
	public void comentar(Comentario comentario, String email) {
		comentario.setData(LocalDate.now());
		comentario.setUsuarioEnvia(IndexController.getUsuarioLogado());
		Usuario visitado = dao.pesquisarUsuario(email);
		comentario.setUsuarioRecebe(visitado);
		visitado.adicionarComentario(comentario);
		comentarioDao.salvar(comentario);
		dao.salvar(visitado);
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("visitado", visitado);
		result.redirectTo(this).perfilVisitante();
	}

	@Get("/sair")
	public void sair() {
		result.redirectTo(IndexController.class).index();
	}
}
