/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.recife.edu.ifpe.controller.servlets.profenfermagem;

import br.recife.edu.ifpe.model.classes.ProfissionalEnfermagem;
import br.recife.edu.ifpe.model.repositorios.RepositorioProfissionalEnfermagem;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ProfEnfermagemServlet extends HttpServlet {

   

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int codigo = Integer.parseInt(request.getParameter("codigo"));

        ProfissionalEnfermagem pf = RepositorioProfissionalEnfermagem.getCurrentInstance().read(codigo);

        request.setAttribute("grupo", pf);

        getServletContext().getRequestDispatcher("/prof-enfermagem.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String coren = request.getParameter("coren");
        int anoFormacao = Integer.parseInt(request.getParameter("anoFormacao"));
        String contato = request.getParameter("contato");
        
         

        String atualizar = request.getParameter("atualizar");
        String a = request.getParameter("atualizar");

        ProfissionalEnfermagem pf = new ProfissionalEnfermagem();

        pf.setId(id);
        pf.setNome(nome);
        pf.setCoren(coren);
        pf.setAnoFormacao(anoFormacao);
        pf.setContato(contato);

        HttpSession session = request.getSession();

        if (a == null) {

            RepositorioProfissionalEnfermagem.getCurrentInstance().insert(pf);

            session.setAttribute("msg", "Prof Infermagem ID =  " + pf.getId() + " foi cadastrado com sucesso!");

        } else {
            RepositorioProfissionalEnfermagem.getCurrentInstance().update(pf);
            session.setAttribute("msg", "Prof Infermagem ID =  " + pf.getId() + " foi atualizado com sucesso!");

        }

        response.sendRedirect("prof-enfermagem.jsp");

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        super.doDelete(request, response);

        int id = Integer.parseInt(request.getParameter("id"));
       

        ProfissionalEnfermagem pf = RepositorioProfissionalEnfermagem.getCurrentInstance().read(id);

        RepositorioProfissionalEnfermagem.getCurrentInstance().delete(pf);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "Prof Infermagem ID = " + pf.getId() + " foi deletado!");

    }
  


}
