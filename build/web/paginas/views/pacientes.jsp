<%@page import="gerenciador.entidades.Pessoa"%>
<%@page import="java.util.List"%>
<%@page import="gerenciador.entidades.Paciente"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "../include/head.jsp" />


<style type="text/css">

    @media (max-width: 480px) {
        table.table-striped{
            width: 95%;
        }
    }

    .copyright{
        position: absolute;
    }
</style>

</head>

<body onload="startTime()">

   <jsp:include page = "../include/navegation.jsp" />


    <div class="table-head">

                            <div class="modal fade" id="cadPaciente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Tipo de cadastro </h4>
                                        </div>

                                        <div class="modal-body">
                                            <p>Selecione o tipo de cadastro de paciente para prosseguir</p>           
                                            
                                            <center>
                                            <a type="button" class="btn btn-default" href="/Qualidade/paginas/others/cadastrarPacienteHospital.jsp">Hospitalar</a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a type="button" class="btn btn-default" href="/Qualidade/paginas/others/cadastrarPacienteAmb.jsp">Ambulatório</a>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>

    <!-- <a href="paginas/others/cadastrarPaciente.jsp"> --> <button class="btn btn-default" style="margin-top:1%; margin-bottom:1%; margin-left:1%;" data-toggle="modal" data-target="#cadPaciente">Cadastrar Novo</button> <!-- </a> -->


        <br>
    </div>

    <div class="table-responsive">
        <table class="table table-striped" width="100%" border="1">

            <tr style="background-color: #6C7B8B;">
            <th width="169" valign="middle" style="color:#fff;">Hospital </th>
            <th width="73" style="color:#fff;">Local </th>
            <th width="181" style="color:#fff;">Paciente </th>
            <th width="181" style="color:#fff;">Idade </th>
            <th width="181" style="color:#fff;">Médico Solicitante</th>
            <th width="270" style="color:#fff;">Hipótese Diagnostica</th>
            <th width="270" style="color:#fff;">Data da Internação</th>
            <th width="270" style="color:#fff;">Horário de Entrada</th>
            <th width="80">&nbsp;</th>
            </tr>

            <c:forEach var="u" items="${pacientes}">

                <tr>
               
                </tr>

            </c:forEach>

        </table>  
    </div>


<!--     <script>
            $('#confirm-delete').on('show.bs.modal', function (e) {
                $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));

                $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
            });
        </script> -->


</body>
</html>