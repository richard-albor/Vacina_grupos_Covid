
<%@page import="br.recife.edu.ifpe.model.classes.Vacina"%>
<%@page import="br.recife.edu.ifpe.model.classes.ProfissionalEnfermagem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Vacina grupoEsperado = (Vacina) request.getAttribute("grupo");
    if (grupoEsperado != null) {
%>

<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <table class="table table-dark">

                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Fabricante</th>
                        <th scope="col">Tempo Entre Aplicações</th>     
                        <th scope="col">Quantidade Aplicações</th>
                    </tr>
                </thead> 
                <tbody>

                    <tr>
                        <td><%=grupoEsperado.getId()%></td>
                        <td><%=grupoEsperado.getNome()%></td>
                        <td><%=grupoEsperado.getFabricante()%></td>
                        <td><%=grupoEsperado.getTempoEntreAplicacoes()%></td>  
                        <td><%=grupoEsperado.getQuantidadeAplicacoes()%></td> 
                    </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>
<%
    }
%>