package com.ana.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

//import com.ana.modelo.Carousel;
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
					rs.getDouble(5),
					rs.getString(6),
					rs.getString(7),
					rs.getInt(8),
					rs.getInt(9));
					
			return p;
		}
		});
	}
}
