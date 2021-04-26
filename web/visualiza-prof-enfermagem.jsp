
<%@page import="br.recife.edu.ifpe.model.classes.ProfissionalEnfermagem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ProfissionalEnfermagem grupoEsperado = (ProfissionalEnfermagem) request.getAttribute("grupo");
    if (grupoEsperado != null) {
%>

<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <table class="table table-dark">

                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Denominação</th>
                        <th scope="col">Idade Minima</th>
                        <th scope="col">Idade Máxima</th>                                
                    </tr>
                </thead> 
                <tbody>

                    <tr>
                        <td><%=grupoEsperado.getId()%></td>
                        <td><%=grupoEsperado.getNome()%></td>
                        <td><%=grupoEsperado.getCoren()%></td>
                        <td><%=grupoEsperado.getAnoFormacao()%></td>  
                        <td><%=grupoEsperado.getContato()%></td> 
                    </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>
<%
    }
%>