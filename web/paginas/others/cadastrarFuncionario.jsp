<%-- 
    Document   : cadastrarPessoa
    Created on : 11/01/2016, 16:02:45
    Author     : Vinicius Nunes
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<jsp:include page = "../include/head.jsp" />

</head>


<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />

        <form name="form1" action="/Qualidade/CriarFuncionarioServlet" method="POST" onSubmit="return validaNome()"   enctype="multipart/form-data" name="cadFunc">

        <section class="formulario">
            <div class="tudo">
                <div class="panel panel-default">
                    <div class="panel-heading" align="center">CADASTRAR FUNCION�RIO</div><br>


                    <!--ABAS-->


                    <ul class="nav nav-tabs nav-justified" id="myTabs">
                        <li class="active"><a id="tab-1" href="#one" data-toggle="tab">Dados Principais</a></li>
                        <li><a href="#two" id="tab-2" data-toggle="tab">Dados do Colaborador</a></li>
                        <li><a href="#three" id="tab-3" data-toggle="tab">Medicina Ocupacional</a></li>
                        <li><a href="#four" id="tab-4" data-toggle="tab">Documentos Escaneados</a></li>
                    </ul>

                    <div class="container">


                        <!-- INICIO TAB 1-->
                        <div class="linha">
                            <div class="tab-content">

                                <div class="tab-pane active" id="one">

                                    <br>
                                    <div class="linha"> <h4> Dados Principais </h4> </div> 
                                    <hr>
                                    <div class="table-responsive">
                                        <table width="100%">


                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad">N�vel de Acesso:</label>
                                            <select name="acesso" class="form-control">
                                                <option value="Usuario">Usu�rio</option>
                                                <option value="Administrador Master">Administrador Master</option>
                                                <option value="Cadastro Simples">Cadastro Simples</option>
                                                <option value="Usuario Externo">Usu�rio Externo </option>
                                            </select>
                                            </td>

                                            <td class="tab-lis">

                                                <script>

                                                    function validaNome() {

                                                        var aux = document.getElementById("nome").value;

                                                        if (aux === '' || aux === null) {
                                                            alert("E necessario preencher o campo nome");
                                                            return false;
                                                        }
                                                        return true;
                                                    }

                                                </script>
                                            <label class="cad">Nome*:</label> 
                                            <input type="text" id="nome" name="nome" class="form-control" size="20" required />
                                            </td>


                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> Data de Admiss�o: </label> 
                                            <input type="date" name="dataAdmissao" class="form-control"> 
                                            </td>

                                            <td class="tab-lis">
                                                <br>
                                            <label class="cad">E-mail:</label>
                                            <input type="email" name="email" class="form-control" size="20">
                                            <br>
                                            <p class="bloq">
                                                &nbsp;&nbsp;
                                                <input name="enviaAviso" value="s" id="s" type="checkbox" class="form-control"> 
                                                Bloqueia o envio de e-mails do sistema para esta pessoa. 
                                            </p>


                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad">Exige Qualifica��o? </label>
                                            <input type="radio" name="qualificacao" value="Sim" class="form-control"> Sim 
                                            &nbsp;&nbsp;     
                                            <input type="radio" name="qualificacao" value="Nao" class="form-control"> N�o  
                                            </td>          


                                            </tr>

                                            <tr>
                                            <td class="tab-lis">

                                            <label class="cad"> Cargo Principal: </label>
                                            <input type="text" name="cargoPrincipal" class="form-control" size="20">                                                


                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad">Cargo Secund�rio:</label> 
                                            <input type="text" name="cargoSecundario" class="form-control" size="20">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad">Setor:</label>
                                            <select name="setor" class="form-control">
                                                <option>Atendimento</option>
                                                <option>Faturamento</option>
                                                <option>Recursos Humanos</option>
                                                <option>Administra��o</option>
                                                <option>T�cnica</option>
                                                <option>Diretoria Cl�nica</option>
                                                <option>Qualidade</option>
                                            </select>
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> Turno: </label>
                                            <select name="turno" class="form-control">
                                                <option>1� Turno</option>
                                                <option>2� Turno</option>
                                                <option>3� Turno</option>
                                            </select>
                                            </td>

                                            <%
                                                String[] carct = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};

                                                String senha = "";

                                                for (int x = 0; x < 10; x++) {
                                                    int j = (int) (Math.random() * carct.length);
                                                    senha += carct[j];
                                                }
                                            %>

                                            <td class="tab-lis">
                                            <label class="cad">Senha:</label>
                                            <input type="text" name="senha" class="form-control" readonly="true" value="<%= senha%>">
                                            </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <br>
                                    <div class="linha2">
                                        <label>Expira��o Senha em: </label>
                                        <select name="dataExpiracao" class="form-control">
                                            <option>Nunca</option>
                                            <option>7</option>
                                            <option>15</option>
                                            <option>30</option>
                                            <option>60</option>
                                            <option>90</option>
                                            <option>120</option>
                                            <option selected="selected">180</option>
                                            <option>360</option>
                                        </select>

                                        &nbsp; dias   (ap�s vecimento do per�odo, a senha expira e sua altera��o � obrigat�ria).
                                        <br><br>

                                        <label>Situa��o*:</label>
                                        &nbsp;&nbsp;
                                        <input type="radio" name="situacao" value="ativo" class="form-control" checked> Ativo 
                                        &nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="situacao" value="inativo" class="form-control"> Inativo            
                                        <br><br>

                                        <label >Enviar Aviso para Pessoa?:</label>
                                        &nbsp;&nbsp;
                                        <input type="radio" name="aviso" value="s"> Sim 
                                        &nbsp;&nbsp;&nbsp;                
                                        <input type="radio" name="aviso" value="n"> N�o
                                        <br>
                                        <div class="linha"><span style="font-size: 11px"> (envia e-mail para pessoa cadastrada informando seus dados b�sicos de acesso)</span></div>

                                    </div>



                                    <br><br>

                                    <center>
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-2').click()">Pr�ximo <i class="fa fa-chevron-right"></i></a>
                                    </center>

                                    <br>
                                </div>

                                <!-- FIM DA TAB 1-->







                                <!-- INICIO TAB 2-->
                                <div class="tab-pane" id="two">

                                    <br>
                                    <div class="linha"> <h4> Dados do Colaborador </h4> </div> 
                                    <hr>
                                    <div class="table-responsive">
                                        <table width="100%">

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> RG:</label> 
                                            <input type="text" name="rg" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> CPF:</label> 
                                            <input type="text" name="cpf" id="cpf" onBlur="ValidarCPF(form1.cpf);" 
                                                   onKeyPress="MascaraCPF(form1.cpf);" maxlength="14" class="form-control" required>
                                            <div id="mensagem"></div>
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Data de Nascimento:</label> 
                                            <input type="date" name="dataNascimento" class="form-control">
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> CTPS:</label>
                                            <input type="text" name="ctps" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> PIS: </label>
                                            <input type="text" name="pis" class="form-control">
                                            </td>  

                                            <td class="tab-lis">
                                            <label class="cad"> Possui Plano de Sa�de?</label>
                                            <input type="radio" name="planoSaude" id="planoSaude" value="Sim" class="form-control">
                                            Sim
                                            &nbsp;&nbsp;
                                            <input type="radio" name="planoSaude" id="planoSaude" value="N�o" class="form-control">
                                            N�o
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad">Qual?</label>
                                            <input type="text" name="qualPlano" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad">Pa�s:</label>
                                            <select name="paises" id="paises" class="form-control">
                                                <option value="Brasil" selected="selected">Brasil</option>
                                                <option value="Afeganist�o">Afeganist�o</option>
                                                <option value="�frica do Sul">�frica do Sul</option>
                                                <option value="Alb�nia">Alb�nia</option>
                                                <option value="Alemanha">Alemanha</option>
                                                <option value="Andorra">Andorra</option>
                                                <option value="Angola">Angola</option>
                                                <option value="Anguilla">Anguilla</option>
                                                <option value="Antilhas Holandesas">Antilhas Holandesas</option>
                                                <option value="Ant�rctida">Ant�rctida</option>
                                                <option value="Ant�gua e Barbuda">Ant�gua e Barbuda</option>
                                                <option value="Argentina">Argentina</option>
                                                <option value="Arg�lia">Arg�lia</option>
                                                <option value="Arm�nia">Arm�nia</option>
                                                <option value="Aruba">Aruba</option>
                                                <option value="Ar�bia Saudita">Ar�bia Saudita</option>
                                                <option value="Austr�lia">Austr�lia</option>
                                                <option value="�ustria">�ustria</option>
                                                <option value="Azerbaij�o">Azerbaij�o</option>
                                                <option value="Bahamas">Bahamas</option>
                                                <option value="Bahrein">Bahrein</option>
                                                <option value="Bangladesh">Bangladesh</option>
                                                <option value="Barbados">Barbados</option>
                                                <option value="Belize">Belize</option>
                                                <option value="Benim">Benim</option>
                                                <option value="Bermudas">Bermudas</option>
                                                <option value="Bielorr�ssia">Bielorr�ssia</option>
                                                <option value="Bol�via">Bol�via</option>
                                                <option value="Botswana">Botswana</option>
                                                <option value="Brunei">Brunei</option>
                                                <option value="Bulg�ria">Bulg�ria</option>
                                                <option value="Burkina Faso">Burkina Faso</option>
                                                <option value="Burundi">Burundi</option>
                                                <option value="But�o">But�o</option>
                                                <option value="B�lgica">B�lgica</option>
                                                <option value="B�snia e Herzegovina">B�snia e Herzegovina</option>
                                                <option value="Cabo Verde">Cabo Verde</option>
                                                <option value="Camar�es">Camar�es</option>
                                                <option value="Camboja">Camboja</option>
                                                <option value="Canad�">Canad�</option>
                                                <option value="Catar">Catar</option>
                                                <option value="Cazaquist�o">Cazaquist�o</option>
                                                <option value="Chade">Chade</option>
                                                <option value="Chile">Chile</option>
                                                <option value="China">China</option>
                                                <option value="Chipre">Chipre</option>
                                                <option value="Col�mbia">Col�mbia</option>
                                                <option value="Comores">Comores</option>
                                                <option value="Coreia do Norte">Coreia do Norte</option>
                                                <option value="Coreia do Sul">Coreia do Sul</option>
                                                <option value="Costa do Marfim">Costa do Marfim</option>
                                                <option value="Costa Rica">Costa Rica</option>
                                                <option value="Cro�cia">Cro�cia</option>
                                                <option value="Cuba">Cuba</option>
                                                <option value="Dinamarca">Dinamarca</option>
                                                <option value="Djibouti">Djibouti</option>
                                                <option value="Dominica">Dominica</option>
                                                <option value="Egito">Egito</option>
                                                <option value="El Salvador">El Salvador</option>
                                                <option value="Emirados �rabes Unidos">Emirados �rabes Unidos</option>
                                                <option value="Equador">Equador</option>
                                                <option value="Eritreia">Eritreia</option>
                                                <option value="Esc�cia">Esc�cia</option>
                                                <option value="Eslov�quia">Eslov�quia</option>
                                                <option value="Eslov�nia">Eslov�nia</option>
                                                <option value="Espanha">Espanha</option>
                                                <option value="Estados Unidos">Estados Unidos</option>
                                                <option value="Est�nia">Est�nia</option>
                                                <option value="Eti�pia">Eti�pia</option>
                                                <option value="Fiji">Fiji</option>
                                                <option value="Filipinas">Filipinas</option>
                                                <option value="Finl�ndia">Finl�ndia</option>
                                                <option value="Fran�a">Fran�a</option>
                                                <option value="Gab�o">Gab�o</option>
                                                <option value="Gana">Gana</option>
                                                <option value="Ge�rgia">Ge�rgia</option>
                                                <option value="Gibraltar">Gibraltar</option>
                                                <option value="Granada">Granada</option>
                                                <option value="Gronel�ndia">Gronel�ndia</option>
                                                <option value="Gr�cia">Gr�cia</option>
                                                <option value="Guadalupe">Guadalupe</option>
                                                <option value="Guam">Guam</option>
                                                <option value="Guatemala">Guatemala</option>
                                                <option value="Guernesei">Guernesei</option>
                                                <option value="Guiana">Guiana</option>
                                                <option value="Guiana Francesa">Guiana Francesa</option>
                                                <option value="Guin�">Guin�</option>
                                                <option value="Guin� Equatorial">Guin� Equatorial</option>
                                                <option value="Guin�-Bissau">Guin�-Bissau</option>
                                                <option value="G�mbia">G�mbia</option>
                                                <option value="Haiti">Haiti</option>
                                                <option value="Honduras">Honduras</option>
                                                <option value="Hong Kong">Hong Kong</option>
                                                <option value="Hungria">Hungria</option>
                                                <option value="Ilha Bouvet">Ilha Bouvet</option>
                                                <option value="Ilha de Man">Ilha de Man</option>
                                                <option value="Ilha do Natal">Ilha do Natal</option>
                                                <option value="Ilha Norfolk">Ilha Norfolk</option>
                                                <option value="Ilhas Cayman">Ilhas Cayman</option>
                                                <option value="Ilhas Cocos (Keeling)">Ilhas Cocos (Keeling)</option>
                                                <option value="Ilhas Cook">Ilhas Cook</option>
                                                <option value="Ilhas Fero�">Ilhas Fero�</option>
                                                <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                                                <option value="Ilhas Marshall">Ilhas Marshall</option>
                                                <option value="Ilhas Salom�o">Ilhas Salom�o</option>
                                                <option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
                                                <option value="Ilhas Virgens Brit�nicas">Ilhas Virgens Brit�nicas</option>
                                                <option value="Ilhas �land">Ilhas �land</option>
                                                <option value="Indon�sia">Indon�sia</option>
                                                <option value="Inglaterra">Inglaterra</option>
                                                <option value="�ndia">�ndia</option>
                                                <option value="Iraque">Iraque</option>
                                                <option value="Irlanda do Norte">Irlanda do Norte</option>
                                                <option value="Irlanda">Irlanda</option>
                                                <option value="Ir�">Ir�</option>
                                                <option value="Isl�ndia">Isl�ndia</option>
                                                <option value="Israel">Israel</option>
                                                <option value="It�lia">It�lia</option>
                                                <option value="I�men">I�men</option>
                                                <option value="Jamaica">Jamaica</option>
                                                <option value="Jap�o">Jap�o</option>
                                                <option value="Jersey">Jersey</option>
                                                <option value="Jord�nia">Jord�nia</option>
                                                <option value="Kiribati">Kiribati</option>
                                                <option value="Kuwait">Kuwait</option>
                                                <option value="Laos">Laos</option>
                                                <option value="Lesoto">Lesoto</option>
                                                <option value="Let�nia">Let�nia</option>
                                                <option value="Lib�ria">Lib�ria</option>
                                                <option value="Liechtenstein">Liechtenstein</option>
                                                <option value="Litu�nia">Litu�nia</option>
                                                <option value="Luxemburgo">Luxemburgo</option>
                                                <option value="L�bano">L�bano</option>
                                                <option value="L�bia">L�bia</option>
                                                <option value="Macau">Macau</option>
                                                <option value="Maced�nia">Maced�nia</option>
                                                <option value="Madag�scar">Madag�scar</option>
                                                <option value="Malawi">Malawi</option>
                                                <option value="Maldivas">Maldivas</option>
                                                <option value="Mali">Mali</option>
                                                <option value="Malta">Malta</option>
                                                <option value="Mal�sia">Mal�sia</option>
                                                <option value="Marianas Setentrionais">Marianas Setentrionais</option>
                                                <option value="Marrocos">Marrocos</option>
                                                <option value="Martinica">Martinica</option>
                                                <option value="Maurit�nia">Maurit�nia</option>
                                                <option value="Maur�cia">Maur�cia</option>
                                                <option value="Mayotte">Mayotte</option>
                                                <option value="Mold�via">Mold�via</option>
                                                <option value="Mong�lia">Mong�lia</option>
                                                <option value="Montenegro">Montenegro</option>
                                                <option value="Montserrat">Montserrat</option>
                                                <option value="Mo�ambique">Mo�ambique</option>
                                                <option value="Myanmar">Myanmar</option>
                                                <option value="M�xico">M�xico</option>
                                                <option value="M�naco">M�naco</option>
                                                <option value="Nam�bia">Nam�bia</option>
                                                <option value="Nauru">Nauru</option>
                                                <option value="Nepal">Nepal</option>
                                                <option value="Nicar�gua">Nicar�gua</option>
                                                <option value="Nig�ria">Nig�ria</option>
                                                <option value="Niue">Niue</option>
                                                <option value="Noruega">Noruega</option>
                                                <option value="Nova Caled�nia">Nova Caled�nia</option>
                                                <option value="Nova Zel�ndia">Nova Zel�ndia</option>
                                                <option value="N�ger">N�ger</option>
                                                <option value="Om�">Om�</option>
                                                <option value="Palau">Palau</option>
                                                <option value="Palestina">Palestina</option>
                                                <option value="Panam�">Panam�</option>
                                                <option value="Papua-Nova Guin�">Papua-Nova Guin�</option>
                                                <option value="Paquist�o">Paquist�o</option>
                                                <option value="Paraguai">Paraguai</option>
                                                <option value="Pa�s de Gales">Pa�s de Gales</option>
                                                <option value="Pa�ses Baixos">Pa�ses Baixos</option>
                                                <option value="Peru">Peru</option>
                                                <option value="Pitcairn">Pitcairn</option>
                                                <option value="Polin�sia Francesa">Polin�sia Francesa</option>
                                                <option value="Pol�nia">Pol�nia</option>
                                                <option value="Porto Rico">Porto Rico</option>
                                                <option value="Portugal">Portugal</option>
                                                <option value="Quirguist�o">Quirguist�o</option>
                                                <option value="Qu�nia">Qu�nia</option>
                                                <option value="Reino Unido">Reino Unido</option>
                                                <option value="Rep�blica Centro-Africana">Rep�blica Centro-Africana</option>
                                                <option value="Rep�blica Checa">Rep�blica Checa</option>
                                                <option value="Rep�blica do Congo">Rep�blica do Congo</option>
                                                <option value="Rep�blica Dominicana">Rep�blica Dominicana</option>
                                                <option value="Reuni�o">Reuni�o</option>
                                                <option value="Rom�nia">Rom�nia</option>
                                                <option value="Ruanda">Ruanda</option>
                                                <option value="R�ssia">R�ssia</option>
                                                <option value="Saara Ocidental">Saara Ocidental</option>
                                                <option value="Saint Martin">Saint Martin</option>
                                                <option value="Saint-Barth�lemy">Saint-Barth�lemy</option>
                                                <option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
                                                <option value="Samoa Americana">Samoa Americana</option>
                                                <option value="Samoa">Samoa</option>
                                                <option value="Santa L�cia">Santa L�cia</option>
                                                <option value="Senegal">Senegal</option>
                                                <option value="Serra Leoa">Serra Leoa</option>
                                                <option value="Seychelles">Seychelles</option>
                                                <option value="Singapura">Singapura</option>
                                                <option value="Som�lia">Som�lia</option>
                                                <option value="Sri Lanka">Sri Lanka</option>
                                                <option value="Suazil�ndia">Suazil�ndia</option>
                                                <option value="Sud�o">Sud�o</option>
                                                <option value="Suriname">Suriname</option>
                                                <option value="Su�cia">Su�cia</option>
                                                <option value="Su��a">Su��a</option>
                                                <option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
                                                <option value="S�o Crist�v�o e Nevis">S�o Crist�v�o e Nevis</option>
                                                <option value="S�o Marino">S�o Marino</option>
                                                <option value="S�o Tom� e Pr�ncipe">S�o Tom� e Pr�ncipe</option>
                                                <option value="S�o Vicente e Granadinas">S�o Vicente e Granadinas</option>
                                                <option value="S�rvia">S�rvia</option>
                                                <option value="S�ria">S�ria</option>
                                                <option value="Tadjiquist�o">Tadjiquist�o</option>
                                                <option value="Tail�ndia">Tail�ndia</option>
                                                <option value="Taiwan">Taiwan</option>
                                                <option value="Tanz�nia">Tanz�nia</option>
                                                <option value="Timor-Leste">Timor-Leste</option>
                                                <option value="Togo">Togo</option>
                                                <option value="Tonga">Tonga</option>
                                                <option value="Toquelau">Toquelau</option>
                                                <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                                                <option value="Tun�sia">Tun�sia</option>
                                                <option value="Turcas e Caicos">Turcas e Caicos</option>
                                                <option value="Turquemenist�o">Turquemenist�o</option>
                                                <option value="Turquia">Turquia</option>
                                                <option value="Tuvalu">Tuvalu</option>
                                                <option value="Ucr�nia">Ucr�nia</option>
                                                <option value="Uganda">Uganda</option>
                                                <option value="Uruguai">Uruguai</option>
                                                <option value="Uzbequist�o">Uzbequist�o</option>
                                                <option value="Vanuatu">Vanuatu</option>
                                                <option value="Vaticano">Vaticano</option>
                                                <option value="Venezuela">Venezuela</option>
                                                <option value="Vietname">Vietname</option>
                                                <option value="Wallis e Futuna">Wallis e Futuna</option>
                                                <option value="Zimbabwe">Zimbabwe</option>
                                                <option value="Z�mbia">Z�mbia</option>
                                            </select>
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> CEP:</label>
                                            <input type="text" name="cep" id="cep" onkeypress="mascara(this, '#####-###')" maxlength="9" class="form-control">
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> Endere�o:</label>
                                            <input type="text" name="rua" id="rua" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> N�:</label>
                                            <input type="text" name="numero" id="numero" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Bairro:</label>
                                            <input type="text" name="bairro" id="bairro" class="form-control">
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> Complemento:</label>
                                            <input type="text" name="complemento" id="complemento" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Cidade:</label>
                                            <input type="text" name="cidade" id="cidade" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Estado:</label>
                                            <input type="text" name="estado" id="estado" class="form-control">
                                            </td>
                                            </tr>

                                            <tr>
                                            <td class="tab-lis">
                                            <label class="cad"> Telefone Residencial:</label>
                                            <input type="tel" name="telefoneRes" onkeypress="mascara(this, '## ####-####')" maxlength="12" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Telefone Celular:</label>
                                            <input type="tel" name="telefoneCel" onkeypress="mascara(this, '## #####-####')" maxlength="13" class="form-control">
                                            </td>

                                            <td class="tab-lis">
                                            <label class="cad"> Telefone Emergencial:</label>
                                            <input type="tel" name="telefoneEmer" onkeypress="mascara(this, '## #####-####')" maxlength="13" class="form-control">
                                            </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <br><br>
                                    <center>
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-1').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-3').click()">Pr�ximo <i class="fa fa-chevron-right"></i></a>
                                    </center>


                                    <br>

                                </div>

                                <!-- FIM DA TAB 2-->






                                <!-- INICIO TAB 3-->
                                <div class="tab-pane" id="three">

                                    <br>
                                    <div class="linha"> <h4> Medicina Ocupacional </h4> </div> 
                                    <hr>


                                    <div class="form-group">

                                        <label class="lis"> Problemas de Sa�de:</label> <br>
                                        <textarea rows="5" name="problemasSaude" id="problemasSaude" class="form-control"></textarea> <br><br>

                                        <label class="cad"> Notas M�dicas:</label> <br>
                                        <textarea rows="5" name="notaMedica" id="notaMedica" class="form-control"></textarea> <br><br>

                                        <label class="cad"> Alergias e Rea��es:</label> <br>
                                        <textarea rows="5" name="alergReac" id="alergReac" class="form-control"></textarea> <br><br>

                                        <label class="cad"> Medicamentos:</label> <br>
                                        <textarea rows="5" name="medicamento" id="medicamento" class="form-control"></textarea> <br><br>
                                    </div>



                                    <label class="cad5"> Contato para Emerg�ncias:</label> 
                                    <input type="text" name="contatoEmerg" id="contatoEmerg" class="form-control">

                                    <br><br>



                                    <label id="sangue" class="cad3"> Grupo Sangu�neo:</label> 
                                    <select name="tipoSanguineo" id="tipoSanguineo" class="form-control">
                                        <option value=""> &nbsp; </option>
                                        <option value="A"> Grupo A </option>
                                        <option value="B"> Grupo B </option>
                                        <option value="AB"> Grupo AB </option>
                                        <option value="O"> Grupo O </option>
                                    </select>
                                    <br><br>

                                    <label class="cad3"> Peso:</label>
                                    <input type="text" name="peso" id="peso" class="form-control" size="1"> &nbsp;&nbsp; Kg.

                                    <br><br>
                                    <label> � doador(a) de org�os:</label>
                                    <input type="radio" name="doaOrgao" value="sim" class="form-control"> Sim &nbsp;&nbsp;
                                    <input type="radio" name="doaOrgao" value="nao" class="form-control"> N�o

                                    <br><br>
                                    <center>
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-2').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-4').click()">Pr�ximo <i class="fa fa-chevron-right"></i></a>
                                    </center>
                                    <br>

                                </div>

                                <!-- FIM DA TAB 3-->







                                <!-- INICIO TAB 4-->
                                <div class="tab-pane" id="four">
                                    <br>
                                    <div class="linha"> <h4> Documentos Escaneados </h4> </div> 
                                    <hr>
                                    <label> Carregar foto: </label>
                                    <br><br>
                                    <div class="linha">
                                        <img id='output' src="/Qualidade/images/vazio.png" width="160px" height="160px">
                                    </div>
                                    <br>
                                    <input type="hidden" name="MAX_FILE_SIZE" value="99999999"/>
                                    <input type="file" name="foto" onchange="openFile(event)" id="foto" accept="image/*" class="form-control">
                                    <br><br>
                                    
                                <div id="messages">

                                    </div>
                                    
                                    <center>
                                        <a href="#" class="btn-submit" onclick="   document.getElementById('tab-3').click()"> <i class="fa fa-chevron-left"></i> Anterior</a> &nbsp;&nbsp;   

                                        <input type="submit" class="btn-submit" name="enviar" id="enviar">

                                    </center>
                                    <br>

                                    <!-- FIM DA TAB 4-->

                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </section>

<style>
   #filedrag
{
	display: none;
	font-weight: bold;
	text-align: center;
	padding: 1em 0;
	margin: 1em 0;
	color: #555;
	border: 2px dashed #555;
	border-radius: 7px;
	cursor: default;
}

#filedrag.hover
{
	color: #00f;
	border-color: #00f;
	border-style: solid;
	box-shadow: inset 0 3px 4px #888;
}



#messages
{
	padding: 0 10px;
	margin: 1em 0;
	border: 1px solid #999;
}
</style>


    <script type="text/javascript">


            $(document).ready(function () {

                $("#cep").blur(function (e) {

                    if ($.trim($("#cep").val()) !== "") {
                        var aux = $.trim($("#cep").val().replace("-", ""));
                        $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep=" + aux, function () {
                            if (resultadoCEP["resultado"]) {
                                $("#rua").val(unescape(resultadoCEP["tipo_logradouro"]) + ": " + unescape(resultadoCEP["logradouro"]));
                                $("#bairro").val(unescape(resultadoCEP["bairro"]));
                                $("#cidade").val(unescape(resultadoCEP["cidade"]));
                                $("#estado").val(unescape(resultadoCEP["uf"]));
                            } else {
                                alert("N�o foi possivel encontrar o endere�o");
                            }
                        });
                    }
                }
                        )
            });
        </script>




        <script type="text/javascript">

            var openFile = function (event) {
                var input = event.target;
                var reader = new FileReader();
                reader.onload = function () {
                    var dataURL = reader.result;
                    var output = document.getElementById('output');
                    output.src = dataURL;
                };
                reader.readAsDataURL(input.files[0]);
            };
        </script>

    </form>

    <script type="text/javascript">

        //adiciona mascara ao CPF
        function MascaraCPF(cpf) {
            if (mascaraInteiro(cpf) === false) {
                event.returnValue = false;
            }
            return formataCampo(cpf, '000.000.000-00', event);
        }




//valida o CPF digitado
        function ValidarCPF(Objcpf) {
            var cpf = Objcpf.value;
            exp = /\.|\-/g;
            cpf = cpf.toString().replace(exp, "");
            var digitoDigitado = eval(cpf.charAt(9) + cpf.charAt(10));
            var soma1 = 0, soma2 = 0;
            var vlr = 11;

            for (i = 0; i < 9; i++) {
                soma1 += eval(cpf.charAt(i) * (vlr - 1));
                soma2 += eval(cpf.charAt(i) * vlr);
                vlr--;
            }
            soma1 = (((soma1 * 10) % 11) === 10 ? 0 : ((soma1 * 10) % 11));
            soma2 = (((soma2 + (2 * soma1)) * 10) % 11);

            var digitoGerado = (soma1 * 10) + soma2;
            if (digitoGerado !== digitoDigitado) {
                alert('CPF Invalido!');
            document.getElementById('cpf').value='';
        }
        }

//valida numero inteiro com mascara
        function mascaraInteiro() {
            if (event.keyCode < 48 || event.keyCode > 57) {
                event.returnValue = false;
                return false;
            }
            return true;
        }

//valida o CNPJ digitado
        function ValidarCNPJ(ObjCnpj) {
            var cnpj = ObjCnpj.value;
            var valida = new Array(6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2);
            var dig1 = new Number;
            var dig2 = new Number;

            exp = /\.|\-|\//g;
            cnpj = cnpj.toString().replace(exp, "");
            var digito = new Number(eval(cnpj.charAt(12) + cnpj.charAt(13)));

            for (i = 0; i < valida.length; i++) {
                dig1 += (i > 0 ? (cnpj.charAt(i - 1) * valida[i]) : 0);
                dig2 += cnpj.charAt(i) * valida[i];
            }
            dig1 = (((dig1 % 11) < 2) ? 0 : (11 - (dig1 % 11)));
            dig2 = (((dig2 % 11) < 2) ? 0 : (11 - (dig2 % 11)));

            if (((dig1 * 10) + dig2) !== digito)
                alert('CNPJ Invalido!');

        }

//formata de forma generica os campos
        function formataCampo(campo, Mascara, evento) {
            var boleanoMascara;

            var Digitato = evento.keyCode;
            exp = /\-|\.|\/|\(|\)| /g;
            campoSoNumeros = campo.value.toString().replace(exp, "");

            var posicaoCampo = 0;
            var NovoValorCampo = "";
            var TamanhoMascara = campoSoNumeros.length;
            ;

            if (Digitato !== 8) { // backspace 
                for (i = 0; i <= TamanhoMascara; i++) {
                    boleanoMascara = ((Mascara.charAt(i) === "-") || (Mascara.charAt(i) === ".")
                            || (Mascara.charAt(i) === "/"));
                    boleanoMascara = boleanoMascara || ((Mascara.charAt(i) === "(")
                            || (Mascara.charAt(i) === ")") || (Mascara.charAt(i) === " "));
                    if (boleanoMascara) {
                        NovoValorCampo += Mascara.charAt(i);
                        TamanhoMascara++;
                    } else {
                        NovoValorCampo += campoSoNumeros.charAt(posicaoCampo);
                        posicaoCampo++;
                    }
                }
                campo.value = NovoValorCampo;
                return true;
            } else {
                return true;
            }
        }

    </script>


    <script type="text/javascript">

        $(function () {
            $("#content section:nth-child(1)").show();
            $(".abas li:first section").addClass("selecionada");
        });
        $(".aba").hover(
                function () {
                    $(this).addClass("ativa");
                },
                function () {
                    $(this).removeClass("ativa");
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






</body>  
</html>