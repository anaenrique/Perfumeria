package com.ana.modelo;

public class Usuario {
	private String nombre;
	private String usuario;
	private String contrasenia;
	private String email;
	private int telefono;
	private String NIF;
	
	
	public Usuario() {
		
	}


	public Usuario(String nombre,String usuario, String contrasenia, String email, int telefono, String NIF) {
		this.nombre = nombre;
		this.usuario = usuario;
		this.contrasenia = contrasenia;
		this.email = email;
		this.telefono=telefono;
		this.NIF=NIF;
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

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public int getTelefono() {
		return telefono;
	}
	
	public void setNIF(String NIF) {
		this.NIF = NIF;
	}
	
	public String getNIF() {
		return NIF;
	}



}
