package com.bit.exam05;

public class WriteArticleServiceImpl {
	private ArticleDao articledao;

	public void setArticledao(ArticleDao articledao) {
		this.articledao = articledao;
	}
	
	public void pro() {
		articledao.insert();
	}
	
}
