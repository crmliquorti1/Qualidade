<jsp:include page = "../include/head.jsp" />

        <style type="text/css">		

        	.copyright{
                position: relative;
            }

            @media screen and (min-width: 1023px) and (max-width: 1360px) {
            .copyright {
                    position: absolute;
                }
            }

            @media (min-width: 1023px) and (max-width: 1026px) {
            .copyright {
                    position: relative;
                }
            }

            @media (min-width: 738px) and (max-width: 768px) {
            .copyright {
                    position: absolute;
                }
            }

        </style> 
</head>

<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />

    <br>

    <center>
        <div class="container">
            <div class="alert alert-info" style="width: 90%; height: 130px;  vertical-align: middle;">
                <br>
                <br>
                <strong>Nenhum alerta!</strong>
                <br>
                Você não tem nenhum alerta hoje.
        </div>
        </div>
    </center>

    <hr>

    <center>
        <div class="row">
            <div class="col-sm-3">
                <a href="http://crmliquor.com/" style="text-decoration: none; color: #333;"> <h2>CRM Líquor</h2>   </a>         
                <a href="http://crmliquor.com/" style="text-decoration: none; color: #333;"> <img src="/Qualidade/images/crm_home.png"  alt="Cinque Terre" width="200" height="200"> </a>
                <br>
                <a href="http://crmliquor.com/" style="text-decoration: none; color: #333;"> Clique para acessar o site da CRM Líquor.</a>
            </div>

            <div class="col-sm-3">
                <a href="#" style="text-decoration: none; color: #333;"><h2>Manual</h2> </a>         
                <a href="#" style="text-decoration: none; color: #333;"><img src="/Qualidade/images/manual_home.png" class="img-circle" alt="Cinque Terre" width="200" height="200"> </a>
                <br>
                <a href="#" style="text-decoration: none; color: #333;">Clique para ter acesso ao manual do CRM Quality.</a>
            </div>

            <div class="col-sm-3">   

                <div class="modal fade" id="contato-ti" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Entre em contato com a equipe de T.I. </h4>
                            </div>

                            <div class="modal-body">
                                <p>
                                    <b>Telefone:</b> (11) 2373-3392<br>
                                    <b>Ramal:</b> 1116 <br>
                                    <b>Horário de Atendimento:</b> 09:00h às 15:30h.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" style="text-decoration: none; color: #333;" data-href="#" data-toggle="modal" data-target="#contato-ti"><h2>Suporte</h2> </a> 
                <a href="#" style="text-decoration: none; color: #333;" data-href="#" data-toggle="modal" data-target="#contato-ti"><img src="/Qualidade/images/ti_home.png" class="img-circle" alt="Cinque Terre" width="200" height="200"> </a>
                <br>
                <a href="#" style="text-decoration: none; color: #333;" data-href="#" data-toggle="modal" data-target="#contato-ti">Entre em contato com a equipe de T.I.</a>

            </div>
    </center>


    <div class="copyright">&copy;2016 - <strong>CRM Líquor - Versão V1.1</strong></div>

    <script>
        function myFunction() {
            document.getElementsByClassName("topnav")[0].classList.toggle("responsive");
        }
    </script>

</body>
</html>