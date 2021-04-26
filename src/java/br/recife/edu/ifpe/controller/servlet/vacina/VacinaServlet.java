/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.recife.edu.ifpe.controller.servlet.vacina;

import br.recife.edu.ifpe.model.classes.Vacina;
import br.recife.edu.ifpe.model.repositorios.RepositorioVacina;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NoteRichard
 */
public class VacinaServlet extends HttpServlet {
    

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int codigo = Integer.parseInt(request.getParameter("codigo"));

        Vacina g = RepositorioVacina.getCurrentInstance().read(codigo);

        request.setAttribute("grupo", g);

        getServletContext().getRequestDispatcher("/vacina.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String fabricante = request.getParameter("fabricante");
        String tempoEntreAplicacoes = request.getParameter("tempoEntreAplicacoes");
        int quantidadeAplicacoes = Integer.parseInt(request.getParameter("quantidadeAplicacoes"));
        
        
                

        String atualizar = request.getParameter("atualizar");
        String a = request.getParameter("atualizar");

        Vacina v = new Vacina();

        v.setId(id);
        v.setNome(nome);
        v.setFabricante(fabricante);
        v.setTempoEntreAplicacoes(tempoEntreAplicacoes);
        v.setQuantidadeAplicacoes(quantidadeAplicacoes);
        
        

        HttpSession session = request.getSession();

        if (a == null) {

            RepositorioVacina.getCurrentInstance().insert(v);

            session.setAttribute("msg", "A Vacina ID =  " + v.getId() + " foi cadastrado com sucesso!");

        } else {
            RepositorioVacina.getCurrentInstance().update(v);
            session.setAttribute("msg", "A Vacina ID =  " + v.getId() + " foi atualizado com sucesso!");

        }

        response.sendRedirect("vacina.jsp");

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        super.doDelete(request, response);

        int id = Integer.parseInt(request.getParameter("id"));
       

        Vacina v = RepositorioVacina.getCurrentInstance().read(id);

        RepositorioVacina.getCurrentInstance().delete(v);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "A Vacina ID = " + v.getId() + " foi deletada!");

    }
  
}
