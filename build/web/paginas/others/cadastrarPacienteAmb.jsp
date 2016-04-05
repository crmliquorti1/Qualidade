<%-- 
    Document   : cadastrarPessoa
    Created on : 11/01/2016, 16:02:45
    Author     : Vinicius Nunes
--%>
<jsp:include page = "../include/head.jsp" />


</head>
<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />

    <form action="/Qualidade/FrontControllerServlet" method="POST">

        <input type="hidden" name="controle" value="CadastrarPaciente">

        <div class="tudo">
            <div class="panel panel-default">
                <div class="panel-heading"><center>CADASTRAR PACIENTE</center></div>
                <br>


                <!--ABAS-->
                <div class="container">

                    <ul class="nav nav-tabs nav-justified" id="myTabs">
                        <li class="active"><a id="tab-1" href="#one" data-toggle="tab">Dados do Hospital</a></li>
                        <li><a href="#two" id="tab-2" data-toggle="tab">Dados do Paciente</a></li>
                        <li><a href="#three" id="tab-3" data-toggle="tab">Dados do Convênio</a></li>
                        <li><a href="#four" id="tab-4" data-toggle="tab">Procedimento</a></li>
                    </ul>


                    <!-- INICIO TAB 1-->
                    <div class="linha">
                        <div class="tab-content">
                            <div class="tab-pane active" id="one">
                                <br>

                                <div class="linha"> <h4> Dados do Hospital </h4> </div> 
                                <hr>

                                <div class="table-responsive">
                                    <table width="100%">
                                        <tr>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        </tr>


                                        <td class="tab-lis">
                                        <label class="lis">Nome do Atendente:</label>
                                        <input type="text" required  id="nomeAtendente" name="nomeAtendente" class="form-control" size="20"> 
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis3">Telefone:</label>
                                        <input type="text" required name="telefone" class="form-control" size="20"> 
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis4"> Ramal: </label>
                                        <input type="text" id="ramal" name="ramal" class="form-control" size="1">
                                        </td>
                                        </tr>

                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis"> Dia de Agendamento: </label>
                                        <input type="date" id="dia" name="dia" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis2"> Horário: </label>
                                        <input type="time" id="horario" name="horario" class="form-control">
                                        </td>                                         


                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis">Hospital:</label> 
                                        <select name="hospital" id="hospital" class="form-control">
                                            <option value="CRM Liquor">CRM Liquor</option>
                                            <option value="Complexo Hospitalar Edmundo Vasconcelos">Complexo Hospitalar Edmundo Vasconcelos - (11) 5080-4000</option>
                                            <option value="Hospital Assunção">Hospital Assunção - (11) 4344-8000</option>
                                            <option value="Hospital Bom Clima">Hospital Bom Clima - (11) 2472-4200</option>
                                            <option value="Hospital Bosque da Saúde">Hospital Bosque da Saúde -(11) 5591-7500</option>
                                            <option value="Hospital Carlos Chagas">Hospital Carlos Chagas - (11) 2463-5000</option>
                                            <option value="Hospital da Luz (Santo Amaro)">Hospital da Luz (Santo Amaro) - (11) 2185-0500</option>
                                            <option value="Hospital da Luz (Vila Mariana)">Hospital da Luz (Vila Mariana) - (11) 2117-6000</option>
                                            <option value="Hospital e Maternidade Brasil">Hospital e Maternidade Brasil - (11) 2127-6666</option>
                                            <option value="Hospital e Maternidade Jardins">Hospital e Maternidade Jardins - (11) 3068-5888</option>
                                            <option value="Hospital Jardim Helena (São Miguel)">Hospital Jardim Helena (São Miguel) - (11) 2582-8500</option>
                                            <option value="Hospital Montemagno">Hospital Montemagno - (11) 2076-4000</option>
                                            <option value="Hospital Nipo Brasileiro">Hospital Nipo Brasileiro - (11) 2633-2318</option>
                                            <option value="Hospital Paranaguá">Hospital Paranaguá - (11) 2542-4000</option>
                                            <option value="Hospital Sancta Maggiore (Alto da Mooca)">Hospital Sancta Maggiore (Alto da Mooca) - (11) 4085-9910</option>
                                            <option value="Hospital Sancta Maggiore (Itaim Bibi)">Hospital Sancta Maggiore (Itaim Bibi) - (11) 4085-9300</option>
                                            <option value="Hospital Sancta Maggiore (Liberdade)">Hospital Sancta Maggiore (Liberdade) - (11) 4085-9550</option>
                                            <option value="Hospital Sancta Maggiore (Mooca)">Hospital Sancta Maggiore (Mooca) - (11) 4085-9810</option>
                                            <option value="Hospital Sancta Maggiore (Paraiso)">Hospital Sancta Maggiore (Paraiso) - (11) 4085-9410</option>
                                            <option value="Hospital Sancta Maggiore (Pinheiros)">Hospital Sancta Maggiore (Pinheiros) - (11) 40859195</option>
                                            <option value="Hospital Sancta Maggiore (SB do Campo)">Hospital Sancta Maggiore (SB do Campo) - (11) 4085-9260</option>
                                            <option value="Hospital Sancta Maggiore (Tatuapé)">Hospital Sancta Maggiore (Tatuapé) - (11) 4085-3350</option>
                                            <option value="Santa Casa de São Bernardo do Campo">Santa Casa de São Bernardo do Campo - (11) 4353-3300</option>
                                            <option value="Hospital Santa Helena ( Unimed Paulistana )">Hospital Santa Helena ( Unimed Paulistana ) - (11) 3340-8011</option>
                                            <option value="Hospital Santa Helena (Posto 13)">Hospital Santa Helena (Posto 13) - (11) 4126-6950</option>
                                            <option value="Hospital Santa Helena (Posto 23)">Hospital Santa Helena (Posto 23) - (11) 4336-9999</option>
                                            <option value="Hospital Santa Helena (Posto 9)">Hospital Santa Helena (Posto 9) - (11) 4972-7155</option>
                                            <option value="Hospital São Paulo">Hospital São Paulo - (11) 5576-4356</option>
                                            <option value="Hospital Stella Maris">Hospital Stella Maris - (11) 2423-8500</option>
                                            <option value="Hospital Vidas">Hospital Vidas - (11) 3321-9450</option>
                                            <option value="Hospital Vidas (Alta Complexidade)">Hospital Vidas (Alta Complexidade) - (11) 2197-8670</option>
                                            <option value="Hospital Vitória">Hospital Vitória - (11) 3581-1000</option>
                                            <option value="Hospital Vitória (unidade avançada)">Hospital Vitória (unidade avançada) - (11) 4208-1010</option>
                                            <option value="Santa Casa de São Bernardo do Campo">Santa Casa de São Bernardo do Campo - (11) 4353-3300</option>
                                            <option value="Seisa Unidade Urgência">Seisa Unidade Urgência - (11) 2463-6053</option>
                                            <option value="Unimed Guarulhos (Unidade 1)">Unimed Guarulhos (Unidade 1) - (11) 2464-2000</option>
                                            <option value="Unimed Guarulhos (Unidade 2)">Unimed Guarulhos (Unidade 2) - (11) 2447-9000</option>
                                        </select>
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis2"> Local: </label> 
                                        <input type="text" id="local" name="local" class="form-control" size="15"> 
                                        </td> 

                                        <td class="tab-lis">
                                        <label class="lis4"> Quarto/Leito: </label> 
                                        <input type="text" id="quarto/leito" name="quarto/leito" class="form-control" size="1"> 
                                        </td>   
                                        </tr>


                                    </table>
                                </div>

                                <br>

                                <div class="form-group" style="margin-left:10px;">
                                    <label>Outras Informações:</label>
                                    <br>
                                    <textarea class="form-control" id="outrasInformacoes" name="outrasInformacoes" style="height: 100px;"></textarea>
                                </div>


                                <br><br>

                                <center>
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-2').click()">Próximo <i class="fa fa-chevron-right"></i></a>
                                </center>

                                <br>
                            </div>

                            <!-- FIM DA TAB 1-->



                            <!-- INICIO TAB 2-->
                            <div class="tab-pane" id="two">

                                <br>
                                <div class="linha"> <h4> Dados do Paciente </h4> </div> 
                                <hr>

                                <div class="table-responsive">
                                    <table width="100%">
                                        <tr>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        </tr>

                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis"> RA Paciente:</label>
                                        <input type="text" id="raPaciente" name="raPaciente" class="form-control" size="17">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Nome Paciente:</label> 
                                        <input type="text" id="nomePaciente" name="nomePaciente" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Responsável: </label>
                                        <input type="text" id="responsavel" name="responsavel" class="form-control" size="17">
                                        </td> 
                                        </tr>

                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis"> Data de Nascimento:</label> 
                                        <input id="dataNasc" name="dataNasc" type="date" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> RN:</label>
                                        <select class="form-control">
                                            <option></option>
                                            <option>Sim</option>
                                            <option>Não</option>
                                        </select>
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis">Sexo:</label> 
                                        <select name="sexo" id="sexo" class="form-control">
                                            <option value="Masculino">Masculino</option>
                                            <option value="Feminino">Feminino</option>
                                        </select>
                                        </td>



                                        </tr>

                                        <tr>

                                        <td class="tab-lis">
                                        <label class="lis"> Idade:</label> 
                                        <input type="number" name="idade" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> RG do Paciente:</label> 
                                        <input type="text" id="rgPaciente" name="rgPaciente" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> CPF do Paciente ou Responsável:</label> 
                                        <input type="text" id="cpfePaciente" name="cpfPaciente" class="form-control">
                                        </td>



                                        </tr>

                                        <tr>

                                        <td class="tab-lis">
                                        <label class="lis"> Hora de entrada do Paceinte:</label> 
                                        <input type="time" id="hrPaciente" name="hrPaciente" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Internado desde:</label> 
                                        <input type="date" id="cpfePaciente" name="cpfPaciente" class="form-control">
                                        </td>

                                        </tr>


                                    </table>

                                </div>

                                <br>

                                <div class="form-group" style="margin-left:10px;">
                                    <label>Hipótese Diagnóstica:</label>
                                    <br>
                                    <textarea class="form-control" id="HDPaciente" name="HDPaciente" style="height: 100px;"></textarea>
                                </div>

                                <div class="form-group" style="margin-left:10px;">
                                    <label>Quadro Clínico:</label>
                                    <br>
                                    <textarea class="form-control" id="QCPaciente" name="QCPaciente" style="height: 100px;"></textarea>
                                </div>

                                <div class="form-group" style="margin-left:10px;">
                                    <label>Outras Informações:</label>
                                    <br>
                                    <textarea class="form-control" id="outrasInformacoesPaciente" name="outrasInformacoesPaciente" style="height: 100px;"></textarea>
                                </div>

                                <br>  
                                <center>
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-1').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-3').click()">Próximo <i class="fa fa-chevron-right"></i></a>
                                </center>


                                <br>

                            </div>

                            <!-- FIM DA TAB 2-->


                            <!-- INICIO TAB 3-->
                            <div class="tab-pane" id="three">

                                <br>
                                <div class="linha"> <h4> Dados do Convênio </h4> </div> 
                                <hr>

                                <div class="table-responsive">
                                    <table width="100%">
                                        <tr>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        <th> &nbsp; </th>
                                        </tr>
                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis"> Convênio:</label> 
                                        <input type="text" name="convenio" id="convenio" class="form-control" size="17">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> N° Carteirinha:</label> 
                                        <input type="text" name="numeroCarteirinha" id="numeroCarteirinha" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Prontuário:</label> 
                                        <input type="text" id="prontuario" name="prontuario" class="form-control">
                                        </td>

                                        </tr>

                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis"> Atendimento: </label>
                                        <input type="text" id="atendimento" name="atendimento" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Senha:</label>
                                        <input type="text" id="senha" name="senha" class="form-control" size="17">
                                        </td>


                                        <td class="tab-lis">
                                        <label class="lis"> Médico Solicitante:</label> 
                                        <input type="text" id="medicoSolicitante" name="medicoSolicitante" class="form-control">
                                        </td>
                                        </tr>

                                        <tr>
                                        <td class="tab-lis">
                                        <label class="lis">CRM: </label>
                                        <input type="text" id="crm" name="crm" class="form-control">
                                        </td>

                                        <td class="tab-lis">
                                        <label class="lis"> Hora de Entrada do Paciente:</label>
                                        <input type="time" id="horaEntradaPaciente" name="horaEntradaPaciente" class="form-control">
                                        </td>                                        

                                        <td class="tab-lis">
                                        <label class="lis">Internado Desde: </label>
                                        <input type="date" id="internadoDesde" name="internadoDesde" class="form-control">
                                        </td>                                        
                                        </tr>
                                    </table>
                                </div>


                                <br><br><br>
                                <center>
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-2').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-4').click()">Próximo <i class="fa fa-chevron-right"></i></a>
                                </center>
                                <br>

                            </div>
                            <!-- FIM DA TAB 3-->


                            <!-- INICIO TAB 4-->
                            <div class="tab-pane" id="four">
                                <br>
                                <div class="linha"> <h4> Procedimento </h4> </div> 
                                <hr>


                                <div class="linha">
                                    <div class="table-responsive">
                                    <center>
                                        <table class="table-exames table-striped" width="50%" border="1">

                                            <tr style="background-color: #6C7B8B;">                                            
                                            <th style="color:#fff;"> <input type="checkbox" class="form-control" onClick="toggle(this)"/> </th>
                                            <th style="color:#fff;"> Mnemônico </th>
                                            <th style="color:#fff;"> Sigla </th>
                                            <th style="color:#fff;"> Descrição </th>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar1"/></td>
                                            <td class="tab-lis"> CFLCR </td>
                                            <td class="tab-lis"> CFLCR </td>
                                            <td class="tab-lis"> EXAME FÍSICO </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar2"/></td>
                                            <td class="tab-lis"> 40601129 </td>
                                            <td class="tab-lis"> CITO </td>
                                            <td class="tab-lis"> CITOLÓGICO DIFERENCIAL LCR </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar3"/></td>
                                            <td class="tab-lis"> 40301559 </td>
                                            <td class="tab-lis"> CLLCR </td>
                                            <td class="tab-lis"> CLORETO - LIQUOR</td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar4"/></td>
                                            <td class="tab-lis"> COLE </td>
                                            <td class="tab-lis"> COLE </td>
                                            <td class="tab-lis"> COLETA </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar5"/></td>
                                            <td class="tab-lis"> CON </td>
                                            <td class="tab-lis"> CON </td>
                                            <td class="tab-lis"> CONCLUSÃO </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar6"/></td>
                                            <td class="tab-lis"> EMIC</td>
                                            <td class="tab-lis"> EMIC</td>
                                            <td class="tab-lis"> EXAME MICROSCÓPICO </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar7"/></td>
                                            <td class="tab-lis"> 40302040 </td>
                                            <td class="tab-lis"> GLIL </td>
                                            <td class="tab-lis"> GLICOSE LIQUOR</td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar8"/></td>
                                            <td class="tab-lis"> HIPOT</td>
                                            <td class="tab-lis"> HIPOT </td>
                                            <td class="tab-lis"> HIPÓTESE DIAGNÓSTICA </td>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar9"/></td>
                                            <td class="tab-lis"> 40302377</td>
                                            <td class="tab-lis"> PROTLCR </td>
                                            <td class="tab-lis"> PROTEÍNA LÍQUOR </td>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar10"/></td>
                                            <td class="tab-lis"> QCL</td>
                                            <td class="tab-lis"> QCL </td>
                                            <td class="tab-lis"> QUADRO CLÍNICO </td>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar11"/></td>
                                            <td class="tab-lis"> 40309100</td>
                                            <td class="tab-lis"> LCRAMB</td>
                                            <td class="tab-lis"> Rotina de LCR (Caracteres Gerais, Contagem Global e especifica , Dosagem de Cloretos , Glicose , Proteinas , Reações de VDRL ) </td>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar12"/></td>
                                            <td class="tab-lis"> 40309150</td>
                                            <td class="tab-lis"> PUNC</td>
                                            <td class="tab-lis"> PUNÇÃO LIQUORICA </td>
                                            </tr>


                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar13"/></td>
                                            <td class="tab-lis"> 40309045</td>
                                            <td class="tab-lis"> CNEO </td>
                                            <td class="tab-lis"> PESQUISA DE CELULAS NEOPLASICAS </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar14"/></td>
                                            <td class="tab-lis"> 40309061 </td>
                                            <td class="tab-lis"> ELPTLCR</td>
                                            <td class="tab-lis"> Eletroforese de Proteinas Sericas no Liquor </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar15"/></td>
                                            <td class="tab-lis"> 40307751 </td>
                                            <td class="tab-lis"> TPHA </td>
                                            <td class="tab-lis"> TREPONEMA PALLIDUM , REAÇÃO DE HEMAGLUTINAÇÃO </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar16"/></td>
                                            <td class="tab-lis"> 40306658 </td>
                                            <td class="tab-lis"> CISTI </td>
                                            <td class="tab-lis"> CISTICERCOSE, SOROLOGIA </td>
                                            </tr>

                                            <tr><td class="tab-lis"> <input type="checkbox" name="exame" value="bar17"/></td>
                                            <td class="tab-lis"> 40307760 </td>
                                            <td class="tab-lis"> VDRLCR </td>
                                            <td class="tab-lis"> REAÇÃO DE VDRL - LIQUOR </td>
                                            </tr>

                                        </table>
                                        </center>
                                    </div>
                                </div>


                                <br><br>

                                <center>
                                    <a href="#" class="btn-submit" onclick="   document.getElementById('tab-3').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   

                                    <input type="submit" class="btn-submit" >

                                </center>
                                <br>

                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>


    </form>


    <script type="text/javascript">

        $(function () {
            $("#content section:nth-child(1)").show();
            $(".abas li:first section").addClass("selecionada");
        });

        $(".aba").hover(
                function () {
                    $(this).addClass("ativa")
                },
                function () {
                    $(this).removeClass("ativa")
                }
        );

        $(".aba").click(function () {
            $(".aba").removeClass("selecionada");
            $(this).addClass("selecionada");
            var indice = $(this).parent().index();
            indice++;
            $("#content section").hide();
            $("#content section:nth-child(" + indice + ")").show();
        });


    </script>

    <script language="JavaScript">
        function toggle(source) {
            checkboxes = document.getElementsByName('exame');
            for (var i = 0, n = checkboxes.length; i < n; i++) {
                checkboxes[i].checked = source.checked;
            }
        }
    </script>


</body>
</html>