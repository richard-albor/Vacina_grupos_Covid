/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.recife.edu.ifpe.controller.servlets.grupo;

import br.recife.edu.ifpe.model.classes.Grupo;
import br.recife.edu.ifpe.model.repositorios.RepositorioGrupo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class GrupoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int codigo = Integer.parseInt(request.getParameter("codigo"));

        Grupo g = RepositorioGrupo.getCurrentInstance().read(codigo);

        request.setAttribute("grupo", g);

        getServletContext().getRequestDispatcher("/grupo.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String denominacao = request.getParameter("denominacao");
        String departamento = request.getParameter("departamento");
        int idadeMin = Integer.parseInt(request.getParameter("idadeMinima"));
        int idadeMax = Integer.parseInt(request.getParameter("idadeMaxima"));

        //String atualizar = request.getParameter("atualizar");
        String a = request.getParameter("atualizar");

        Grupo g = new Grupo();

        g.setId(id);
        g.setDenominacao(denominacao);
        g.setIdadeMinima(idadeMin);
        g.setIdadeMaxima(idadeMax);

        HttpSession session = request.getSession();

        if (a == null) {

            RepositorioGrupo.getCurrentInstance().insert(g);

            session.setAttribute("msg", "Grupo ID =  " + g.getId() + " foi cadastrado com sucesso!");

        } else {
            RepositorioGrupo.getCurrentInstance().update(g);
            session.setAttribute("msg", "Grupo ID =  " + g.getId() + " foi atualizado com sucesso!");

        }

        response.sendRedirect("grupo.jsp");

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        super.doDelete(request, response);

        int id = Integer.parseInt(request.getParameter("id"));
       

        Grupo g = RepositorioGrupo.getCurrentInstance().read(id);

        RepositorioGrupo.getCurrentInstance().delete(g);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "O Grupo ID = " + g.getId() + " foi deletado!");

    }
  

}
