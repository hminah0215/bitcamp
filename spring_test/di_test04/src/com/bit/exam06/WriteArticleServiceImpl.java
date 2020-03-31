package com.bit.exam06;

public class WriteArticleServiceImpl {
	private ArticleDao articledao;

	public void setArticledao(ArticleDao articledao) {
		this.articledao = articledao;
	}
	
	public void pro() {
		articledao.insert();
	}
	
}
