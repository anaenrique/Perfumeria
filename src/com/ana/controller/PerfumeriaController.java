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
		
		//private static List<Carousel> listaCarousel;
		//private List<Vegetal> carrito = new ArrayList<Vegetal>();
		
		private Usuario usuario;
		
	@RequestMapping(value="/Perfumeria")
	public ModelAndView mostrarTodo() {
		List<Productos> listaP = dao.listarProductos();
		//listaCarousel = dao.listarCarousel();
		ModelAndView modelo = new ModelAndView("perfumeria");
		System.out.println("Metodo mostrarTodo de PerfumeriaController");
		modelo.addObject("listaP", listaP);
		//modelo.addObject("listaCarousel", listaCarousel);
		return modelo;
	}
		

}
