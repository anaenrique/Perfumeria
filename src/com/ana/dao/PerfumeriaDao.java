package com.ana.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.ana.modelo.Usuario;
import com.ana.modelo.Productos;


public class PerfumeriaDao {
	
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Productos> listarProductos(){
		return template.query("select * from productos", new RowMapper<Productos>() {@Override
		public Productos mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			Productos p = new Productos 
					(rs.getInt(1),
				    rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5),
					rs.getDouble(6),
					rs.getString(7),
					rs.getString(8),
					rs.getInt(9),
					rs.getInt(10));
					
			return p;
		}
		});
	}
	
	public List<Productos> listarProductosPorPaginas(int Nitem, int total){
		return template.query("select * from productos limit "+(Nitem-1)+","+total, new RowMapper<Productos>() {
			@Override
			public Productos mapRow(ResultSet rs, int row) throws SQLException
			{
				Productos p = new Productos 
						(rs.getInt(1),
					    rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDouble(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10));
						
				return p;
			}
			
			
		}
		);
	}
	public List<Productos> listarSexo(String sexo){
		return template.query("select * from productos where sexo='"+sexo+"'", new RowMapper<Productos>() {@Override
			public Productos mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Productos p = new Productos(rs.getInt(1),
					    rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDouble(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10));	
				return p;
				}
			});
	}
	
	public List<Productos> listarCategoriaSexo(String sexo, String categoria){
		return template.query("select * from productos where sexo='"+sexo+"' and categoria='"+categoria+"'", new RowMapper<Productos>() {@Override
			public Productos mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Productos p = new Productos(rs.getInt(1),
					    rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDouble(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10));	
				
				return p;
				}
			});
	}
	
	
	
	public Usuario iniciarSesion(String username, String password) {
		List<Usuario> users = template.query("select * from usuario where usuario='"+username+"' and contrasenia='"+password+"'", new RowMapper<Usuario>() {
			@Override
			public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Usuario u = new Usuario
							   (rs.getString(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(5),
								rs.getInt(4),
								rs.getString(6));
						;
					    
				return u;
			}
		} );
		
		if(users.isEmpty()) {
			return null;
		}
		else {
			return users.get(0);
		}
	}
	
	public int eliminarProducto(int id_producto) {
		// TODO Auto-generated method stub
		String sql = "delete from productos where id_producto=" + id_producto + "";
		return template.update(sql);
	}
	
	public Productos buscarProducto(int id_producto) {
		String sql = "select * from productos where id_producto=?";
		return template.queryForObject(sql, new Object[] { id_producto }, new BeanPropertyRowMapper<Productos>(Productos.class));
	}
	
	public int editarProducto(Productos p) {
		return template.update("update productos set nombre=?, marca=?, descripcion=?, imagen=?, categoria=?, precio=? where id_producto=?",
								p.getNombre(),p.getMarca(),p.getDescripcion(),p.getImagen(),p.getCategoria(),p.getPrecio(),p.getId_producto());
	}

	public int insertarProducto(Productos p) {
		return  template.update("insert into productos(nombre,marca, descripcion,imagen,categoria,precio) values (?,?,?,?,?,?)",
								p.getNombre(),p.getMarca(),p.getDescripcion(),p.getImagen(),p.getCategoria(),p.getPrecio());
	}

	public int registrarUsuario(Usuario user) {
		return  template.update("insert into usuario(usuario, nombre, contrasenia, email, telefono, NIF) values (?,?,?,?,?,?)",
				 user.getUsuario(), user.getNombre(), user.getContrasenia(), user.getEmail(), user.getTelefono(), user.getNIF());
	}
	
	public int modificarUsuario(Usuario user) {
		return  template.update("update usuario set usuario=?, nombre=?, contrasenia=?, email=?, telefono=?, NIF=? where usuario=?",
				user.getUsuario(), user.getNombre(), user.getContrasenia(), user.getEmail(), user.getTelefono(), user.getNIF());
	}
	
	
	//AQUI TIENES EL METODO PARA BUSCAR LOS PRODUCTOS POR NOMBRE
	//He usado el LIKE porque si no hay que meter el nombre exacto del producto, asi lo veo mejor, pero cambialo si quieres por un =
	public List<Productos> listarProductosNombre(String nombre){
		
		return template.query("select * from productos where nombre LIKE'%"+nombre+"%' or marca LIKE'%"+nombre+"%'", new RowMapper<Productos>() {@Override
			public Productos mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Productos p = new Productos(rs.getInt(1),
					    rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDouble(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10));	
				
				return p;
				}
			});
	}

}
