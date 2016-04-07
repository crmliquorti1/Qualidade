<div id='cssmenu' class="no-print">
    <ul>
        <li><a href="/Qualidade/paginas/others/home.jsp">HOME</a></li>

        <li class='has-sub'><a href='#'>RECURSOS HUMANOS</a>
            <ul>
                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarFuncionarioAtivo">
                        <input type="submit" value="Funcionarios Ativos" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarFuncionarioInativo">
                        <input type="submit" value="Todos Funcionarios" class="botaoMenu">
                    </form>
                </li>

                <li style="display:none;" ><a href="#" class="subMenu"> Cargos </a></li>
                <li style="display:none;" ><a href="#" class="subMenu"> Perfil de Cargo </a></li>
                <li style="display:none;"><a href="qualificacaoPessoa.jsp" class="subMenu"> Qualifica��o de Pessoa </a></li>
                <li style="display:none;"><a href="treinamentos.jsp" class="subMenu"> Treinamentos </a></li>
                <li style="display:none;"><a href="treinamentosPrevistos.jsp" class="subMenu">Treinamentos Previstos </a></li>
                <li style="display:none;"><a href="treinamentosRealizados.jsp" class="subMenu">Treinamentos Realizados </a></li>
                <li style="display:none;"><a href="cadastrarTreinamento.jsp" class="subMenu">Solicita��o de Treinamento </a></li>
                <li style="display:none;"><a href="solicitarContratacao.jsp" class="subMenu"> Solicita��o de Contrata��o </a></li>
                <li style="display:none;"><a href="#" class="subMenu"> Pesquisa de Clima Organizacional </a>
                    <ul style="display:none;">
                        <li><a href="grupoPerguntas.jsp" class="subMenu"> Grupo de Perguntas</a></li>
                        <li><a href="questionario.jsp" class="subMenu"> Question�rio</a></li>
                        <li><a href="grupoParticipantes.jsp" class="subMenu"> Grupo de Participantes</a></li>
                        <li><a href="pesquisas.jsp" class="subMenu"> Pesquisa</a></li>
                    </ul>
                </li>
            </ul>
        </li>

       <li class='has-sub'><a href='#'>DOCUMENTOS</a>


            <ul>
                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc Admin">
                        <input type="submit" value="Administrativo" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc Comercial">
                        <input type="submit" value="Comercial" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST"> 
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc Recepcao">
                        <input type="submit" value="Recep��o" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc Tecnica">
                        <input type="submit" value="T�cnica" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc. Clinico">
                        <input type="submit" value="Cl�nico" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc. Faturamento">
                        <input type="submit" value="Faturamento" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Doc. RH">
                        <input type="submit" value="Recursos Humanos" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="Logistica">
                        <input type="submit" value="Log�stica" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="PoP - Documentos">
                        <input type="submit" value="PoP - Documentos" class="botaoMenu">
                    </form>
                </li>

                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarDocs">
                        <input type="hidden" name="diretorio" value="RNC">
                        <input type="submit" value="RNC" class="botaoMenu">
                    </form>
                </li>   
            </ul>


        </li>
<!--        <li class='has-sub'><a href='#'>ATENDIMENTO</a>
            <ul>
                <li>
                    <form action="/Qualidade/FrontControllerServlet" method="POST">
                        <input type="hidden" name="controle" value="ListarPaciente">
                        <input type="submit" value="Paciente" class="botaoMenu">
                    </form>
                </li>
            </ul>
        </li>-->
    </ul>
</div>
