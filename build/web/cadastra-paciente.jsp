<%@page import="br.recife.edu.ifpe.model.repositorios.RepositorioGrupo"%>
<%@page import="java.util.List"%>
<%@page import="br.recife.edu.ifpe.model.classes.Grupo"%>
<div class="container">
    <!-- Contact Section Heading-->
    <h5 class="page-section-heading text-center text-uppercase text-secondary mb-0">Cadastrar Paciente</h5>
    <!-- Icon Divider-->
    <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
        <div class="divider-custom-line"></div>
    </div>
    <!-- Contact Section Form-->
    <div class="row">
        
        <div class="col-lg-12 mx-auto">
            
            <form method="post" action="PacienteServlet" id="cadastraPaciente">
                <div class="form-group">
                    
                    <input class="form-control" name="id" type="text" placeholder="ID" required="required" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? paciente.id : ''}" />
                </div>
                <div class="form-group">
                    
                    <input class="form-control" name="nome" type="text" placeholder="Nome" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? paciente.nome : ''}" />
                </div>
                <div class="form-group">
                    
                    <input class="form-control" name="datanascimento" type="text" placeholder="Nascimento - dia/mes/ano" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? paciente.dataNascimento : ''}" />
                </div>
                
                <div class="form-group">
                    
                    <input class="form-control" name="caracteristica" type="text" placeholder="características" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? paciente.caracteristicasIndividuais : ''}" />
                </div>
                <input class="" type="hidden" name="${(param.redirect != null && param.redirect eq 'atualiza') ? 'atualizar' : 'cadastrar' }" value="1"/>
                
                
                                
                 <%
                    String parametro = request.getParameter("redirect");
                    if(parametro == null){
                        List<Grupo> gruposCriados = RepositorioGrupo.getCurrentInstance().readAll();                  
                 %>
                
                <div class="form-group">
                    
                    <label for="grupo">Escolha um Grupo</label>
                    <select required class="form-control" id="grupo" name="grupo" form="cadastraPaciente">
                        
                        <%
                            for (Grupo g :gruposCriados ) {
                        %>                        
                         <option value="<%=g.getId()%>"><%=g.getDenominacao()%></option>
                        <%
                          }
                        %>
                    </select>
                                        
                </div>
                
                <% } %>
                
                
                
                
                
                <div class="form-group">
                    <button class="btn btn-primary btn-lg btn-block" id="sendMessageButton" type="submit">Enviar</button>
                </div>
            </form>
        </div>
    </div>
</div>