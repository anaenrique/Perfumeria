package com.ana.modelo;

public class Productos {
	
	private int id_producto;
	private String nombre;
	private String descripcion;
	private String imagen;
	private double precio;
	private String sexo;
	private String categoria;
	private int stock;
	private int total_vendido;
	
	public Productos() {
		
	}

	public Productos(int id_producto, String nombre, String descripcion, String imagen, double precio, String sexo,
			String categoria, int stock, int total_vendido) {
		
		this.id_producto = id_producto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.precio = precio;
		this.sexo = sexo;
		this.categoria = categoria;
		this.stock = stock;
		this.total_vendido = total_vendido;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getTotal_vendido() {
		return total_vendido;
	}

	public void setTotal_vendido(int total_vendido) {
		this.total_vendido = total_vendido;
	}
	
	
}
