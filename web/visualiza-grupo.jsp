
<%@page import="br.recife.edu.ifpe.model.classes.Grupo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Grupo grupoEsperado = (Grupo) request.getAttribute("grupo");
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
                        <td><%=grupoEsperado.getDenominacao()%></td>
                        <td><%=grupoEsperado.getIdadeMinima()%></td>
                        <td><%=grupoEsperado.getIdadeMaxima()%></td>                               
                    </tr>
                </tbody>


            </table>
        </div>
    </div>
</div>
<%
    }
%>