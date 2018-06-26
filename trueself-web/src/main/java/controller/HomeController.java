package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.CidadeDao;
import dao.ComentarioDao;
import dao.EstadoDao;
import dao.UsuarioDao;
import model.Comentario;

@Controller
@Path("/home")
public class HomeController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDao dao;

	@Inject
	private EstadoDao estadoDao;

	@Inject
	private CidadeDao cidadeDao;
	
	@Inject
	private ComentarioDao comentarioDao;

	@Get("/home")
	public void home() {
		
	}

	@Get("/busca")
	public void busca(String nome) {
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.include("nome", nome);
		result.include("usuarios", dao.listarPesquisa(nome));

		result.redirectTo(BuscaController.class).busca();
	}

	@Post("/avaliar")
	public void avaliar(Comentario comentario) {
		Comentario comentario2 = comentarioDao.pesquisarComentario(comentario.getCodigo());
		switch (comentario.getClassificacao()) {
		case 1:
			comentario2.setClassificacao(1);
			comentario2.getUsuarioEnvia().setQtdAnjo(comentario2.getUsuarioEnvia().getQtdAnjo()+1);
			break;
		case 2:
			comentario2.setClassificacao(2);
			comentario2.getUsuarioEnvia().setQtdDemonio(comentario2.getUsuarioEnvia().getQtdDemonio()+1);
			break;
		case 3:
			comentario2.setClassificacao(3);
			comentario2.getUsuarioEnvia().setQtdNeutro(comentario2.getUsuarioEnvia().getQtdNeutro()+1);
			break;
		default:
			break;
		}
		dao.salvar(comentario2.getUsuarioRecebe());
		comentarioDao.salvar(comentario2);
		//atualizar o usuario logado
		IndexController.setUsuarioLogado(dao.pesquisarUsuarioPorCodigo(IndexController.getUsuarioLogado().getCodigo()));
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(this).home();
	}
	
	@Get("/perfil")
	public void perfil() {

		result.include("estados", estadoDao.listarEstados());
		result.include("cidades", cidadeDao.listarCidades());
		result.include("usuarioLogado", IndexController.getUsuarioLogado());
		result.redirectTo(DadosUsuarioController.class).perfil();

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