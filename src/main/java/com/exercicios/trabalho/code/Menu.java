/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.exercicios.trabalho.code;

import com.exercicios.trabalho.model.Usuario;
import com.exercicios.trabalho.model.DaoUsuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author rodrigosoares
 */
@WebServlet(name = "Menu", urlPatterns = {"/Menu"})
public class Menu extends HttpServlet {

    public String senha;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void init() {
        senha = getServletConfig().getInitParameter("senha");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String resp = (String) session.getAttribute("logged");
        if (resp == null) {
            String msg = "Sessão Expirada";
            session.setAttribute("msg", msg);
            response.sendRedirect("index.jsp");
        }

        response.setContentType("text/html;charset=UTF-8");
        {
            try (PrintWriter out = response.getWriter()) {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet Menu</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1> Menu </h1>");
                out.println("<h2> Usuário : " + resp + "  </h2>");
                out.println("<a href=\"welcome.jsp\">Welcome </a><br/>");
                out.println("<a href=\"ErroDeJava\">Gerar erro de java</a><br/>");
                out.println("<a href=indexxa.html>Gerar erro de hmtl</a><br/>");
                out.println("<a href=\"sair\"> Sair </a>");
                out.println("</body>");
                out.println("</html>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
//        String user = request.getParameter("user");
//        String password = request.getParameter("password");
//
//        if (user == null || password == null || !(user.equals("rod") && password.equals(senha))) {
//            response.sendRedirect("index.html");
//        } else {
//            request.getSession(true).setAttribute("logged", user);
//            processRequest(request, response);
//        }
        processRequest(request, response);

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
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        DaoUsuario bd = new DaoUsuario(1, "APP", "senha");

        if (!user.isEmpty() && !password.isEmpty()) {
            Usuario userfound = bd.buscar(user);
            if (userfound != null) {
                String userBD = userfound.getNome();
                String passBD = userfound.getSenha();

                if (user.equals(userBD) && password.equals(passBD)) {
                    request.getSession(true).setAttribute("logged", user);
                    processRequest(request, response);
                }
            }
        }
        String msg = "Dados errados. Tente novamente!";
        request.getSession(true).setAttribute("msg", msg);
        response.sendRedirect("index.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
