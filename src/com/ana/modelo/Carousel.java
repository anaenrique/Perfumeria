package com.ana.modelo;

public class Carousel {
	
	private int id;
	private String texto;
	private String imagen;
	
	public Carousel() {
	}

	public Carousel(int id, String texto, String imagen) {
		this.id = id;
		this.texto = texto;
		this.imagen = imagen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	

}
