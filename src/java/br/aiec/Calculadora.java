package br.aiec;

/*
 * Página de controle da página de Calculadora
 */

import br.aiec.helpers.Divisor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Página de controle da Calculadora
 * 
 * @author GRA (Anne, Gilmar Ricardo)
 */
@WebServlet(name = "Calculadora", urlPatterns = {"/calculadora"})
public class Calculadora extends HttpServlet {
    
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
           request.setAttribute("resultado", "");
           request.setAttribute("categoria", "");
           request.getRequestDispatcher("calculadora.jsp").forward(request, response);
        } finally {
            out.close();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String numerador = request.getParameter("num1").replace(",", ".");
        String denominador = request.getParameter("num2").replace(",", ".");
        
        Divisor divisor = new Divisor(numerador, denominador);
        String resultado = divisor.getResult().toString().replace(".", ",");
        String category = divisor.getCategory();
        
        request.setAttribute("categoria", category);
        request.setAttribute("resultado", resultado);
        request.setAttribute("avisos", divisor.getWarnings());
        
       request.getRequestDispatcher("calculadora.jsp").forward(request, response);
    }
}
