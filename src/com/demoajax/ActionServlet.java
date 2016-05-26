package com.demoajax;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Created by Luis on 26/05/2016.
 */
@WebServlet(name = "ActionServlet", urlPatterns = {"/actioned"})
public class ActionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ArrayList<Person> persons = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType( "text/html; charset=iso-8859-1" );
        PrintWriter out = response.getWriter();

        // Obtengo los datos de la peticion
        String nombre = request.getParameter("name");
        String apellido = request.getParameter("lastname");
        String edad = request.getParameter("years");

        // Compruebo que los campos del formulario tienen datos para añadir a la tabla
        if (!nombre.equals("") && !apellido.equals("") && !edad.equals("")) {
            // Creo el objeto persona y lo añado al arrayList
            Person persona = new Person(nombre, apellido, edad);
            persons.add(persona);
        }

        out.println("<table class=\"table table-striped\" cellspacing=\"1\" bgcolor=\"#0099cc\">");
        out.println("<tr>");
        out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\"> NOMBRE </td>");
        out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\">APELLIDO</td>");
        out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\">EDAD</td>");
        out.println("</tr>");
        for(int i=0; i<persons.size(); i++){
            Person persona = persons.get(i);
            out.println("<tr>");
            out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\">"+persona.getName()+"</td>");
            out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\">"+persona.getLastname()+"</td>");
            out.println("<td style= rowspan=\"7\" align=\"center\" bgcolor=\"#f8f8f8\">"+persona.getYears()+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");

    }



}
