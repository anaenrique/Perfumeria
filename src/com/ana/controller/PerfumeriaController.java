package com.ana.controller;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ana.dao.PerfumeriaDao;
import com.ana.modelo.Productos;
import com.ana.modelo.Usuario;



@Controller
public class PerfumeriaController {
	
	//Generar inyecciones de dependencia entre la clase DAO
		// y el bean correspondiente
		@Autowired
		PerfumeriaDao dao;
		
		@Autowired
		JavaMailSender emailSender;
		
		
		//private List<Vegetal> carrito = new ArrayList<Vegetal>();
		
		private Usuario usuario;
		
	@RequestMapping(value="/todaPerfumeria")
	public ModelAndView mostrarTodo() {
		List<Productos> listaP = dao.listarProductos();
		//listaCarousel = dao.listarCarousel();
		ModelAndView modelo = new ModelAndView("index");
		System.out.println("Metodo mostrarTodo de PerfumeriaController");
		modelo.addObject("listaP", listaP);
		//modelo.addObject("listaCarousel", listaCarousel);
		return modelo;
	}
	
	@RequestMapping(value="/verCategoria/{sexo}")
	public ModelAndView mostrarSexo(@PathVariable String sexo) {
		List<Productos> listaC = dao.listarSexo(sexo);
		ModelAndView modelo = new ModelAndView("index");
		System.out.println("Metodo mostrarCategoria de PerfumeriaController, sexo: " + sexo);
		modelo.addObject("listaP", listaC);
		return modelo;
	}
	
	@RequestMapping(value="login")
	public String irLogin() {
		return "login";
	}
	
	@RequestMapping(value = "administracion")
	public ModelAndView administracion() {
		List<Productos> listaP = dao.listarProductos();
		ModelAndView modelo = new ModelAndView("adminTienda");
		System.out.println("Metodo administracion de PerfumeriaController");
		modelo.addObject("listaP", listaP);
		return modelo;	
	}
	
	@RequestMapping(value="cerrarSesion")
	public ModelAndView cerrarSesion(HttpSession session) {
		
		ModelAndView modelo = new ModelAndView("redirect:/todaPerfumeria");
		System.out.println("Metodo cerrarSesion de PerfumeriaController");
		usuario = null;
		session.removeAttribute("username");
		session.removeAttribute("usuario");
		return modelo;
		
	}
	
	@RequestMapping(value="acceder", method = RequestMethod.POST)
	public ModelAndView iniciarSesion(@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpSession session) {
		
		List<Productos> listaP = dao.listarProductos();
		
		usuario = dao.iniciarSesion(username, password);
		ModelAndView modelo = null;
		
		if(usuario !=null) {
			if(usuario.getUsuario().equals("admin")) {
				modelo = new ModelAndView("redirect:/administracion");
				
			}
			else {
				modelo = new ModelAndView("redirect:/todaPerfumeria");
				
			}
			session.setAttribute("username", username);
			session.setAttribute("usuario", usuario);
		}
		else {
			modelo = new ModelAndView("login");
			String error = "Datos de inicio de sesión incorrectos";
			modelo.addObject("error", error);
		}
		
		return modelo;
	}
	
	@RequestMapping(value="eliminarProducto/{id_producto}",method=RequestMethod.GET)
	public ModelAndView eliminarVegetal(@PathVariable int id_producto, HttpSession session) {
		System.out.println("Metodo eliminarProducto de PerfumeriaController");
		if(session.getAttribute("usuario")!=null) {
			Usuario user = (Usuario) session.getAttribute("usuario");
			if(user.getUsuario().equals("admin")) {
				if(dao.eliminarProducto(id_producto)==1) {
					System.out.println("Eliminado con exito");
				}
			}
		}
		
		return new ModelAndView("redirect:/administracion");
	}
	
	@RequestMapping(value="editarProducto/{id_producto}", method=RequestMethod.GET)
	public ModelAndView editarProducto(@PathVariable int id_producto) {
		System.out.println("Id_producto: " + id_producto);
		ModelAndView modelo = null;
		
		if(id_producto==-1) {
			modelo = new ModelAndView("editProducto", "producto", new Productos());
			modelo.addObject("titulo", "Agregar Producto");
		}
		else {
			Productos p = dao.buscarProducto(id_producto);
			modelo = new ModelAndView("editProducto", "producto", p);
			modelo.addObject("titulo", "Editar Producto");
		}
		
		return modelo;
	}
	
	@RequestMapping(value="guardarProducto", method=RequestMethod.POST)
	public ModelAndView guardarVegetal(@ModelAttribute("producto") Productos p) {
		if(p.getId_producto()==0) {
			System.out.println("Codigo p: " + p.getId_producto());
			System.out.println("Hay que hacer insert");
			if(dao.insertarProducto(p)==1) {
				System.out.println("Insertado con exito");
			}
		}
		else {
			System.out.println("Codigo p: " + p.getId_producto());
			System.out.println("Hay que hacer update");
			if(dao.editarProducto(p)==1) {
				System.out.println("Modificado con exito");
			}
		}
		return new ModelAndView("redirect:/administracion");
	}
	
	@RequestMapping(value="agregarCarrito/{id_producto}")
	public ModelAndView agregarCarrito(@PathVariable int id_producto, HttpSession session) {
		
		Productos p = dao.buscarProducto(id_producto);
		List<Productos> carrito;
		if(session.getAttribute("carrito")!=null) {
			carrito = (List<Productos>) session.getAttribute("carrito");
			carrito.add(p);
			session.setAttribute("carrito", carrito);
		}
		else {
			carrito = new ArrayList<Productos>();
			carrito.add(p);
			session.setAttribute("carrito", carrito);
		}
		
		return new ModelAndView("redirect:/todaPerfumeria");
	}
	
	@RequestMapping(value="verCarrito")
	public ModelAndView verCarrito(HttpSession session) {
		
		ModelAndView modelo=null;
		
		if(session.getAttribute("usuario")!=null) {
			modelo = new ModelAndView("carrito");
		}
		else {
			modelo = new ModelAndView("login");
			String error = "Inicia sesión para ver el carrito";
			modelo.addObject("error", error);
		}
		return modelo;
	}
	
	@RequestMapping(value="quitarCarrito/{id_producto}")
	public ModelAndView quitarCarrito(@PathVariable int id_producto, HttpSession session) {
		
		List<Productos> carrito;
		if(session.getAttribute("carrito")!=null) {
			carrito = (List<Productos>) session.getAttribute("carrito");
			carrito.remove(id_producto);
			session.setAttribute("carrito", carrito);
		}
		
		return new ModelAndView("redirect:/verCarrito");
	}
	
	@RequestMapping(value="realizarCompra")
	public ModelAndView finCompra(HttpSession session) throws MessagingException {
		
		Usuario u = (Usuario) session.getAttribute("usuario");
		List<Productos> carrito = (List<Productos>) session.getAttribute("carrito");
		
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
		helper.setFrom("ana1234@gmail.com");
		helper.setTo(u.getEmail());
		helper.setSubject("Factura de compra - Fruteria");
		String cuerpo = "<h3>Pedido</h3>"
						+ "<p>Cliente: " + u.getNombre() + "</p>"
				+ "<table>"
					+ "<tr>\r\n" + 
					"	      <th>Nombre:</th>\r\n" + 
					"	      <th>Categoria:</th>\r\n" + 
					"	      <th>Descripcion:</th>\r\n" + 
					"	      <th>Precio:</th>\r\n" + 
					"	</tr>";
		for(Productos p: carrito) {
			cuerpo += "<tr>"
						+"<td>"+p.getNombre()+"</td>"
						+"<td>"+p.getCategoria()+"</td>"
						+"<td>"+p.getDescripcion()+"</td>"
						+"<td>"+p.getPrecio()+"</td>"
					+"</tr>";
		}
		
		cuerpo += "</table>";
		
		helper.setText(cuerpo, true);
		
		emailSender.send(mimeMessage);
		
		session.removeAttribute("carrito");
		
		return new ModelAndView("redirect:/todaPerfumeria");
	}
	
	@RequestMapping(value="irUserForm")
	public String mostrarUserForm(Model modelo, HttpSession session) {
		Usuario user = new Usuario();
		String titulo = "Formulario de registro";
		if(session.getAttribute("usuario")!=null) {
			user = (Usuario) session.getAttribute("usuario");
			titulo = "Editar usuario";
		}
		modelo.addAttribute("user", user);
		modelo.addAttribute("titulo", titulo);
		return "userForm";
	}
	
	@RequestMapping(value="registrarse")
	public String registrarUsuario(Model modelo,@Valid @ModelAttribute("user") Usuario user, BindingResult result) throws MessagingException {
		
		if(result.hasErrors()) {
			modelo.addAttribute("user", user);
			modelo.addAttribute("titulo", "Formulario de registro");
			return "userForm";
		}
		else {
			try {
				if(dao.registrarUsuario(user)==1) {
					System.out.println("Usuario registrado con exito");
					//Enviar email con datos
					MimeMessage mimeMessage = emailSender.createMimeMessage();
					MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
					helper.setFrom("ana1234@gmail.com");
					helper.setTo(user.getEmail());
					helper.setSubject("Registro de usuario");
					String cuerpo = "<h3>Datos de usuario</h3>"
							+ "<table>"
								+ "<tr>\r\n" + 
								"	      <th>Usuario:</th>\r\n" + 
								"	      <th>Nombre:</th>\r\n" + 
								"	      <th>Email:</th>\r\n" + 
								"	      <th>Contraseña:</th>\r\n" +
								"	</tr>";
						cuerpo += "<tr>"
									+"<td>"+user.getUsuario()+"</td>"
									+"<td>"+user.getNombre()+"</td>"
									+"<td>"+user.getEmail()+"</td>"
									+"<td>"+user.getContrasenia()+"</td>"
									
								+"</tr>";
					
					
					cuerpo += "</table>";
					
					helper.setText(cuerpo, true);
					
					emailSender.send(mimeMessage);
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				modelo.addAttribute("user", user);
				modelo.addAttribute("titulo", "Formulario de registro");
				modelo.addAttribute("error", "Ya existe el nombre usuario, introduce otro");
				return "userForm";
			}
			
			return "redirect:/todaPerfumeria";
		}
		
	}
	
	@RequestMapping(value="modificarUsuario")
	public String modificarUsuario(Model modelo,@Valid @ModelAttribute("user") Usuario user, BindingResult result, HttpSession session) throws MessagingException {
		
		if(result.hasErrors()) {
			modelo.addAttribute("user", user);
			modelo.addAttribute("titulo", "Editar usuario");
			return "userForm";
		}
		else {
			if(dao.modificarUsuario(user)==1) {
				System.out.println("Usuario modificado con exito");
				user = dao.iniciarSesion(user.getUsuario(), user.getContrasenia());
				session.setAttribute("usuario", user);
				//Enviar email con datos
				MimeMessage mimeMessage = emailSender.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
				helper.setFrom("ana1234@gmail.com");
				helper.setTo(user.getEmail());
				helper.setSubject("Modificación de usuario");
				String cuerpo = "<h3>Nuevos datos de usuario</h3>"
						+ "<table>"
							+ "<tr>\r\n" + 
							"	      <th>Usuario:</th>\r\n" + 
							"	      <th>Nombre:</th>\r\n" + 
							"	      <th>Contraseña:</th>\r\n" + 
							"	      <th>Email:</th>\r\n" +
							"	</tr>";
					cuerpo += "<tr>"
								+"<td>"+user.getUsuario()+"</td>"
								+"<td>"+user.getNombre()+"</td>"
								+"<td>"+user.getContrasenia()+"</td>"
								+"<td>"+user.getEmail()+"</td>"
							+"</tr>";
				
				
				cuerpo += "</table>";
				
				helper.setText(cuerpo, true);
				
				emailSender.send(mimeMessage);
				
			}
			return "redirect:/todaPerfumeria";
		}
		
	}
		

}
