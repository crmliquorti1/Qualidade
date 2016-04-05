<%-- 
    Document   : index
    Created on : 07/01/2016, 10:26:07
    Author     : Vinicius Nunes
--%>
<%@page import="java.util.List"%>
<%@page import="gerenciador.entidades.Pessoa"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "../include/head.jsp" />
</head>

<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />



    <div class="span12">

        <div class="table-head">

            <a href="paginas/others/cadastrarFuncionario.jsp" button type="button" style="margin-top:1%; margin-bottom:1%; margin-left:1%;" class="btn btn-default" align="right">Cadastrar Nova</button> </a>
            <br>
        </div>


        <table class="table table-striped" width="100%" height="100%" border="1">

            <tbody>
                <thead>



                    <tr style="background-color: #6C7B8B;">
                    <th width="169" style="color:#fff;">Nome </th>
                    <th width="73" style="color:#fff;">Login </th>
                    <th width="181" style="color:#fff;">Email </th>
                    <th width="270" style="color:#fff;">Cargo</th>
                    <th width="160" style="color:#fff;">Nível de Acesso</th>
                    <th width="90" style="color:#fff;">&nbsp;  </th>

                    </tr>

                </thead>

                <c:forEach var="u" items="${lista_funcionarios}">


                    <tr>
                    <td>
                        <form action="FrontControllerServlet" method="POST">
                            <input type="hidden" name="controle" value="PerfilFuncionario">
                            <input type="hidden" name="id_funcionario" value="${u.id_funcionario}">
                            <input type="submit" value="${u.nome}" class="botaoFunc">                            
                        </form>
                    </td>
                    <td>${u.login}</td>
                    <td>${u.email}</td>
                    <td>${u.cargoPrincipal} </td>
                    <td>${u.acesso} </td>
                    <td><form action="FrontControllerServlet" method="POST">
                            <center>
                                <button type="submit" class="btn btn-default">Alterar</button>
                                <input type="hidden" name="controle" id="controle" value="ListarEdicaoFuncionario">
                                <input type="hidden" name="id_funcionario" id="id_funcionario" value="${u.id_funcionario}">
                            </center>
                        </form>
                    </td>

                    </tr>

                </c:forEach>


            </tbody>
        </table>

    </div>

    <script>
        $('#confirm-delete').on('show.bs.modal', function (e) {
            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
            $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
        });
    </script>

</body>
</html>