
<%@page import="br.recife.edu.ifpe.model.repositorios.RepositorioProfissionalEnfermagem"%>
<%@page import="br.recife.edu.ifpe.model.classes.ProfissionalEnfermagem"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Richard Albor" />
        <title>Prof Enfermagem - Duendes Flow</title>        
        <link rel="icon" type="image/x-icon" href="assets/img/duendeIco.png" />       
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />

    </head>
    <body id="page-top">
        <!-- Navigation-->
         <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="index.jsp">Duendes Flow</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="grupo.jsp">Grupo</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="prof-enfermagem.jsp">Prof. Enfermagem</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="vacina.jsp">Vacina</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="paciente.jsp">Paciente</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container">
                <div class="row">

                    <div class="container col-md-6 col-sm-12">
                        <!-- Masthead Heading-->
                        <h4 class=" text-uppercase mb-0">Profissionais de Enfermagem Cadastrados</h4>

                    </div>               
                </div>
            </div>
        </header>





        <%
            List<ProfissionalEnfermagem> profEnfermagemLista = RepositorioProfissionalEnfermagem.getCurrentInstance().readAll();
        %>

        <div class="container p-3">
            <div class="row text-center">
                <div class="col-12">
                    <%
                        String mensagem = (String) session.getAttribute("msg");
                        if (mensagem != null) {
                            out.println("<h2>" + mensagem + "</h2>");
                            session.removeAttribute("msg");
                        }
                    %>
                    <button id="btn-modal-topo" class="btn btn-success" onclick="modalCadastrarOpen()">Cadastrar Novo Prof Enfermagem</button>
                </div>
            </div>
        </div>


        <div class="container p-3">
            <div class="row text-center">
                <div class="col-12">
                    <table class="table table-striped table-dark">

                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Coren</th>
                                <th scope="col">Ano de Formação</th>
                                <th scope="col">Contato</th>
                                <th scope="col">Ações</th>
                            </tr>
                        </thead>  

                        <%
                            for (ProfissionalEnfermagem profEnfermagem : profEnfermagemLista) {
                        %>
                        <tbody>

                            <tr>
                                <td><%=profEnfermagem.getId()%></td>
                                <td><%=profEnfermagem.getNome()%></td>
                                <td><%=profEnfermagem.getCoren()%></td>
                                <td><%=profEnfermagem.getAnoFormacao() %></td>
                                <td><%=profEnfermagem.getContato() %></td>
                                <td>
                                    <a class="m-1" href="ProfEnfermagemServlet?codigo=<%=profEnfermagem.getId()%>&redirect=visualiza">visualizar</a>
                                    <a class="m-1" href="ProfEnfermagemServlet?codigo=<%=profEnfermagem.getId()%>&redirect=atualiza">atualizar</a>
                                    <a class="m-1" href="#" onclick="deleteGrupo(<%= profEnfermagem.getId()%>)">deletar</a>
                                </td>
                            </tr>
                        </tbody>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>


        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright © Richard Ferreira Albor 2021</small></div>
        </div>
        
        
                
        
        
        <div id="modalVisualizar" 
             style="top:15vh; position: absolute; width:89vw;  height: 98vh; margin-left: 5vw; margin-right: 5vw ; border: 1px black solid; background:white">
		
		<%@include file="visualiza-prof-enfermagem.jsp"%>		
		<br />		
                <div class="text-center" ><button id="botaoVisualizar" class="btn btn-danger " onclick="modalVisualizaClose()">Fechar</button></div>	
	</div>

	<div id="modalCadastrar"
             style="top:13vh; position: absolute; width:89vw;  height: 98vh; margin-left: 5vw; margin-right: 5vw ; border: 1px black solid; background:white">

		<%@include file="cadastra-prof-enfermagem.jsp"%>

		<br />
                <div class="text-center" ><button id="botaoCadastar" class="btn btn-danger m-auto" onclick="modalCadastrarClose()">Fechar</button></div>	
	</div>
        
        


	<script>
		var modal = document.getElementById("modalVisualizar");
		var modal2 = document.getElementById("modalCadastrar");
	<%
		
		String redirect = request.getParameter("redirect");
	
		if (redirect == null) {
		
	%>
		document.body.removeChild(modal);
		document.body.removeChild(modal2);
		
	<%
		} else if (redirect.equals("visualiza")) {
	%>
		document.body.removeChild(modal2);
	<%
		} else {
	%>
		document.body.removeChild(modal);
	<%}%>
	
		function modalVisualizaClose() {                   
                    document.body.removeChild(modal);			
		}

		function modalCadastrarClose() {
			document.body.removeChild(modal2);
		}

		function modalCadastrarOpen() {
			
			document.body.appendChild(modal2);
		}
		
		
		function deleteGrupo(id) {
                fetch("ProfEnfermagemServlet?id=" + id, {method: 'delete'}).then(function (response) {
                    location.reload();
                });
            }
		
	</script>


       





















        <!-- Bootstrap core JS-->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="js/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
