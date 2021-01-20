package controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class controladorServlet extends HttpServlet{

		private static final long serialVersionUID = 1L;

		@Override
		protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta) 
		throws ServletException, IOException{
			
	       //capturamos los datos
			String r_nombrecompleto = peticion.getParameter("nombre") + " " + peticion.getParameter("apellido");
			String r_email = peticion.getParameter("email");
			int r_edad = Integer.parseInt(peticion.getParameter("edad"));
			String r_mensaje = "";
			
			//validamos edad para mensaje predeterminado
			if (r_edad  >= 18) { 	
				r_mensaje = "Es mayor de edad";
			}else {
				r_mensaje = "Es menor de edad";
				r_email ="Oculto por ser Menor de edad";
			}
			//preparamos los datos objetos y variables
			peticion.getSession().setAttribute("r_nombrecompleto", r_nombrecompleto);
			peticion.getSession().setAttribute("r_email", r_email);
			peticion.getSession().setAttribute("r_edad", r_edad);
			peticion.getSession().setAttribute("r_mensaje", r_mensaje);
			//enviamos los datos al index 
			respuesta.sendRedirect("index.jsp");
			
		}

	}


