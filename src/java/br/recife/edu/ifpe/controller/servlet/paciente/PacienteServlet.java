/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.recife.edu.ifpe.controller.servlet.paciente;

import br.recife.edu.ifpe.model.classes.Grupo;
import br.recife.edu.ifpe.model.classes.Paciente;
import br.recife.edu.ifpe.model.repositorios.RepositorioGrupo;
import br.recife.edu.ifpe.model.repositorios.RepositorioPaciente;
import java.util.Date;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 



/**
 *
 * @author NoteRichard
 */
@WebServlet(name = "PacienteServlet", urlPatterns = {"/PacienteServlet"})
public class PacienteServlet extends HttpServlet {
    
    
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int codigo = Integer.parseInt(request.getParameter("codigo"));

        Paciente p = RepositorioPaciente.getCurrentInstance().read(codigo);

        request.setAttribute("paciente", p);

        getServletContext().getRequestDispatcher("/paciente.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response); //To change body of generated methods, choose Tools | Templates.
        
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");        
        String dataNascimento = request.getParameter("datanascimento");        
        String caracteristica = request.getParameter("caracteristica");
        
              

        
        String paramAtualiza = request.getParameter("atualizar");
        String paramCadastra = request.getParameter("cadastrar");

        Paciente p = new Paciente();
        HttpSession session = request.getSession();
        
        if (paramCadastra != null) {
            p.setId(id);
            p.setNome(nome);  
            p.setDataNascimento(new Date("07/11/1987"));
            p.setCaracteristicasIndividuais(caracteristica);
            
            int grupo = Integer.parseInt(request.getParameter("grupo"));
            p.setGrupo(RepositorioGrupo.getCurrentInstance().read(grupo));
            
            
            RepositorioPaciente.getCurrentInstance().insert(p);
            session.setAttribute("msg", "Paciente ID =  " + p.getId() + " foi cadastrado com sucesso!");

        } else {           
            p.setId(id);
            p.setNome(nome);  
            p.setDataNascimento(new Date("07/11/1987"));
            p.setCaracteristicasIndividuais(caracteristica);
            p.setGrupo(RepositorioPaciente.getCurrentInstance().read(id).getGrupo());
            
            
            RepositorioPaciente.getCurrentInstance().update(p);
            session.setAttribute("msg", "Paciente ID =  " + p.getId() + " foi atualizado com sucesso!");
        }
        
        
//    String page = "paciente.jsp";
//    try {
//
//    } catch (Exception e) {
//      page = "erro.jsp";
//    } finally {
//      page = "paciente.jsp";
//    }
//
//    RequestDispatcher dd=request.getRequestDispatcher(page);
//    dd.forward(request, response);

//    RequestDispatcher dd=request.getRequestDispatcher("paciente.jsp");
//    dd.forward(request, response);

//getServletContext().getRequestDispatcher("/paciente.jsp").forward(request, response);
    response.sendRedirect("paciente.jsp");
   

               
    }

}
