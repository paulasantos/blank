package br.grupofortes.vraptor.dao;

import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import br.grupofortes.vraptor.model.Produto;

@Component
public class ProdutoDao extends GenericDao {
	
	public List<Produto> list(){
		return getSession().createCriteria(Produto.class).list();
	}

	public Produto carrega(Long id) {
		return (Produto) getSession().load(Produto.class, id);
	}

	
}
