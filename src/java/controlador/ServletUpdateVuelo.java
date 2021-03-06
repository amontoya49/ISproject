/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import EJB.ejbVuelo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andres Montoya
 */
@WebServlet(name = "ServletUpdateVuelo", urlPatterns = {"/ServletUpdateVuelo"})
public class ServletUpdateVuelo extends HttpServlet {
    @EJB 
    private ejbVuelo ejbvuelo;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if (request.getMethod().equals("GET"))
        {
            ejbvuelo.leerPorIdVuelo(request.getParameter("id_vuelo"));
            request.setAttribute("ejbvuelo", ejbvuelo);
            request.getRequestDispatcher("updateVuelo.jsp").forward(request, response);
        }
        if (request.getMethod().equals("POST"))
        {
            ejbvuelo.gettVuelo().setIdvuelo(request.getParameter("txtIdVuelo"));
            ejbvuelo.gettVuelo().setFechaSalida(Date.valueOf(request.getParameter("txtFechaS")));
            ejbvuelo.gettVuelo().setFechaLlegada(Date.valueOf(request.getParameter("txtFechaL")));
            ejbvuelo.gettVuelo().setHoraSalida(request.getParameter("txtHoraS"));
            ejbvuelo.gettVuelo().setHoraLlegada(request.getParameter("txtHoraL"));
            ejbvuelo.gettVuelo().setOrigen(request.getParameter("txtOrigen"));
            ejbvuelo.gettVuelo().setDestino(request.getParameter("txtDestino"));
            ejbvuelo.gettVuelo().setTiempo_vuelo(Integer.parseInt(request.getParameter("txtTiempo")));
            ejbvuelo.gettVuelo().setAerolinea(request.getParameter("txtAerolinea"));
            ejbvuelo.gettVuelo().setN_puestos(Integer.parseInt(request.getParameter("txtN_puestos")));
            ejbvuelo.gettVuelo().setPrecio(Integer.parseInt(request.getParameter("txtPrecio")));
            
            String mensaje_respuesta;
            if(ejbvuelo.actualizarVuelo())
            {
                mensaje_respuesta="OK";
            }
            else
            {
                mensaje_respuesta="wrong";
            } 
            request.setAttribute("mensaje", mensaje_respuesta);
            //aca debes decirle que se redireccione al formulario seleccionAdmin.jsp
            //puesto que desde alli, si de va a hacer una nueva actulizacion se debe cargar la id del vuelo.
            request.getRequestDispatcher("resultadoAdmin.jsp").forward(request, response);
            
            
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
        processRequest(request, response);
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
