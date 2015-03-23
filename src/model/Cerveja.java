package model;

public class Cerveja implements Comparable<Cerveja> {
	private String nome;
	private String estilo;
	private String cor;
	private String pais;
	private String imagem;

	public Cerveja(String nome, String estilo, String cor, String pais, String imagem) {
		this.nome = nome;
		this.estilo = estilo;
		this.cor = cor;
		this.pais = pais;
		this.imagem = imagem;
	} 

	public String getNome() {
		return nome;
	}

	public String getEstilo() {
		return estilo;
	}

	public String getCor() {
		return cor;
	}

	public String getPais() {
		return pais;
	}

	public String getImagem() {
		return imagem;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public void setImagem(String imagem) {
		this.pais = imagem;
	}

	@Override
	public String toString() {
		return "nome=" + nome + ", estilo=" + estilo + ", cor=" + cor
				+ ", pais=" + pais + ", imagem=" + imagem;
	}

	@Override
	public int compareTo(Cerveja cerveja) {
		if (nome.equals(cerveja.getNome())
				&& estilo.equals(cerveja.getEstilo())
				&& cor.equals(cerveja.getCor())
				&& pais.equals(cerveja.getPais())) {
			return 0;
		}
		return -1;
	}

}
