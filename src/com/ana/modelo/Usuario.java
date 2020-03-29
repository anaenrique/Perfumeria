package com.ana.modelo;

public class Usuario {
	private String nombre;
	private String usuario;
	private String contrasenia;
	private String email;
	
	
	public Usuario() {
		
	}


	public Usuario(String nombre,String usuario, String contrasenia, String email,
			String estado_envio) {
		this.nombre = nombre;
		this.usuario = usuario;
		this.contrasenia = contrasenia;
		this.email = email;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasenia() {
		return contrasenia;
	}


	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

}
