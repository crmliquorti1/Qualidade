<div id='cssmenu' class="no-print">
    <ul>
        <li><a href="/Qualidade/paginas/others/home.jsp">HOME</a></li>

        <li class='has-sub'><a href='#' style="color:grey;">RECURSOS HUMANOS</a>

        <li class='has-sub'><a href='#'>DOCUMENTOS</a>

            <ul>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc Recepcao">
                        <input type="submit" value="Recepção" class="botaoMenu">
                    </form>
                </li>

            </ul>

        </li>
        
        <li class='has-sub'><a href='#'>ATENDIMENTO</a>
            <ul>
                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarPaciente">
                        <input type="submit" value="Paciente" class="botaoMenu">
                    </form>
                </li>
            </ul>
        </li>
    </ul>
</div>