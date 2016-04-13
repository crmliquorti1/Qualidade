<%-- 
    Document   : index
    Created on : 07/01/2016, 10:26:07
    Author     : Vinicius Nunes
--%>
<%@page import="java.util.List"%>
<%@page import="gerenciador.entidades.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "../include/head.jsp" />

<script type="text/javascript" src="/Qualidade/js/tooltip.js"></script>
<script type="text/javascript" src="/Qualidade/js/bootstrap-confirmation.js"></script>
<script type="text/javascript" src="/Qualidade/js/bootstrap-confirmation.min.js"></script>
<script type="text/javascript" src="/Qualidade/js/Gruntfile.js"></script>

</head>

<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />



    <div class="span12">

        <div class="table-head">

            <a href="paginas/others/cadastrarFuncionario.jsp" button type="button" style="margin-top:1%; margin-bottom:1%; margin-left:1%;" class="btn btn-default" align="right">Cadastrar Nova</button> </a>
            
      
            
            <form action="FrontControllerServlet" method="POST">
            
                
                <label>Buscar pelo Nome: </label> &nbsp;<input type="search" name="nomeBusca"> &nbsp;
                <input type="hidden" name="controle" value="BuscaFuncionario">
                
                <input type="submit" value="buscar" class="btn btn-default"> &nbsp;
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </form>
            <br>
            <br>

        </div>

        <div class="table-responsive">
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
                        <td>
                            <form action="FrontControllerServlet" method="POST">
                                <center>
                                    <button type="submit" class="btn btn-default">Alterar</button>
                                    <input type="hidden" name="controle" id="controle" value="ListarEdicaoFuncionario">
                                    <input type="hidden" name="id_funcionario" id="id_funcionario" value="${u.id_funcionario}">
                                </center>
                            </form>
                        </td>
                        <td>

                            <center>

                                <form action="/Qualidade/FrontControllerServlet" method="POST">


                                    <input type="hidden" name="controle" id="controle" value="ExcluirFuncionario">
                                    <input type="hidden" name="id_funcionario" id="id_funcionario" value="${u.id_funcionario}">
                                    <button  type="submit" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir?');"> <i class="fa fa-trash"></i></button>
                                </form>
                            </center>

                        </td>
                        </tr>

                    </c:forEach>


                </tbody>
            </table>
        </div>

    </div>

    <script>

        $(document).ready(function () {
            $('a[data-confirm]').click(function (ev) {
                var href = $(this).attr('href');
                if (!$('#dataConfirmModal').length) {
                    $('body').append('<div id="dataConfirmModal" class="modal" role="dialog" aria-labelledby="dataConfirmLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="dataConfirmLabel">Please Confirm</h3></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button><a class="btn btn-primary" id="dataConfirmOK">OK</a></div></div>');
                }
                $('#dataConfirmModal').find('.modal-body').text($(this).attr('data-confirm'));
                $('#dataConfirmOK').attr('href', href);
                $('#dataConfirmModal').modal({show: true});
                return false;
            });
        });

    </script>

</body>
</html>