package br.grupofortes.vraptor.controller;

import static br.com.caelum.vraptor.view.Results.json;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.grupofortes.vraptor.dao.ProdutoDao;
import br.grupofortes.vraptor.model.Produto;

@Resource
@Path("/produtos")
public class ProdutosController {

	private ProdutoDao produtoDao;
	private Result result;
	private Validator validator;

	public ProdutosController(ProdutoDao produtoDao, Result result,
			Validator validator) {
		this.result = result;
		this.produtoDao = produtoDao;
		this.validator = validator;
	}

	@Get({ "", "/" })
	public void produtos() {
		result.include("produtos", produtoDao.list());
	}

	@Get("/new")
	public void formulario() {
	}

	@Post("/save")
	public void save(final Produto produto) {
		validator.validate(produto);
		validator.onErrorUsePageOf(this).formulario();
		produtoDao.save(produto);
		result.redirectTo(this).produtos();
	}

	@Get("/edit/{id}")
	public void edit(Long id) {
		result.include("produto", produtoDao.carrega(id));
	}

	@Put("/update")
	public void update(Produto produto) {
		validator.validate(produto);
		validator.onErrorUsePageOf(this).edit(produto.getId());

		if (produtoDao.update(produto))
			result.include("mensagem", "Produto atualizado com sucesso!");
		else
			result.include("mensagem",
					"Ocorreu um problema ao atualizar o produto.");
		result.redirectTo(this).produtos();
	}

	@Delete("/remove/{id}")
	public void remove(Long id) {
		produtoDao.delete(produtoDao.carrega(id));
		result.redirectTo(this).produtos();
	}

	@Get("find.json")
	public void findJson(String q) {
		result.use(json()).withoutRoot().from(produtoDao.busca(q)).exclude("id", "descrição").serialize();
	}

	@Get("/find/{nome}")
	public void find(String nome) {
		result.include("nome", nome)
				.include("produtos", produtoDao.busca(nome));
	}
}
