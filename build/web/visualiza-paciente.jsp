
<%@page import="br.recife.edu.ifpe.model.classes.Paciente"%>
<%@page import="br.recife.edu.ifpe.model.classes.Vacina"%>
<%@page import="br.recife.edu.ifpe.model.classes.ProfissionalEnfermagem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Paciente pacienteEsperado = (Paciente) request.getAttribute("paciente");
    if (pacienteEsperado != null) {
%>

<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <table class="table table-dark">

                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Data Nascimento</th>
                        <th scope="col">Características</th>     
                        <th scope="col">Grupo</th>
                    </tr>
                </thead> 
                <tbody>

                    <tr>
                        <td><%=pacienteEsperado.getId()%></td>
                        <td><%=pacienteEsperado.getNome()%></td>
                        <td><%=pacienteEsperado.getDataNascimentoTexto()%></td>
                        <td><%=pacienteEsperado.getCaracteristicasIndividuais()%></td>  
                        <td>Id - <%=pacienteEsperado.getGrupo().getId()%> (<%=pacienteEsperado.getGrupo().getDenominacao()%>) </td> 
                        
                    </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>
<%
    }
%>