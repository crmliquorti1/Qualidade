<%-- 
    Document   : index
    Created on : 07/01/2016, 10:26:07
    Author     : Vinicius Nunes
--%>
<%@page import="gerenciador.entidades.Pessoa"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page = "../include/head.jsp" />

</head>

<body onload="startTime()">
    <div id="noprint">

        <jsp:include page = "../include/navegation.jsp" />

    </div>

    <br>
    <br>
</div>
<div class="linha"> <h4> FICHA COLABORADOR </h4> </div> 
<hr>

<section class="p1">

    <form name="form1" action="EditarFuncionarioServlet" method="POST" enctype="multipart/form-data">

        <div>

            <input type="hidden" name="MAX_FILE_SIZE" value="99999999"/>
            <img class="img-al" src="data:image/png;base64,${foto}" id="fotoColaborador" class="img-polaroid" width="160px" height="180px" align="right" alt="Alterar Imagem">
            <input type="file" name="foto" onchange="openFile(event)" id="foto" accept="image/*" class="form-control" align="right">

        </div>
        <br><br>

        <label> N�vel de Acesso: </label> <input  readonly="true" name="acesso" type="text" class="form-control" value="${funcionario.acesso}">  <br><br>
        <label> Nome: </label> <input type="text" name="nome" class="form-control" value="${funcionario.nome}">  <br><br>

        <label> Matr�cula: </label> <input type="text" name="matricula"class="form-control" readonly="true" value="${funcionario.id_funcionario}">  <br><br>
        <label> Data de Admiss�o: </label> <input type="text" name="dataAdmissao" class="form-control" value="${funcionario.admissao}">  <br><br>
        <label> E-mail: </label> <input type="text" name="email" class="form-control" value="${funcionario.email}" size="30">  <br><br>
        <label> Exige Qualifica��o: </label>
        <select class="form-control">
            <option name="qualificacao" value="Sim"selected="selected">Sim</option>
            <option name="qualificacao" value="Nao">N�o</option>

        </select>
        <br><br>
        <label> Cargo Principal: </label> <input type="text" name="cargoPrincipal" class="form-control" value="${funcionario.cargoPrincipal}">  <br><br>
        </section>

        <section class="p2">

            <label> Cargo Secund�rio: </label> <input type="text" name="cargoSecundario" class="form-control" value="${funcionario.cargoSecundario}">  <br><br>
            <label class="cad">Setor:</label>
            <select name="setor" class="form-control" value="${funcionario.setor}">
                <option>${funcionario.setor}</option>
                <option>Atendimento</option>
                <option>Faturamento</option>
                <option>Recursos Humanos</option>
                <option>Administra��o</option>
                <option>T�cnica</option>
                <option>Diretoria Cl�nica</option>
                <option>Qualidade</option>
                <option>T.I.</option>
                <option>Logistica</option>
                <option>Corpo Clinico</option>
            </select>
            <br><br>

            <label> Turno: </label>
            <select name="turno" class="form-control">

                <option value="1� Turno">1� Turno</option>
                <option value="2� Turno">2� Turno</option>
                <option value="3� Turno">3� Turno</option>
            </select>

            <br><br>
            <label> Login: </label> <input type="text" name="login" class="form-control" readonly="true" value="${funcionario.login}">  <br><br>
            <label> Senha: </label> <input type="text" name="senha" class="form-control"  value="${funcionario.senha}">  <br><br>
            <label> Expira��o Senha em: </label> <input type="text" name="dataExpiracao" class="form-control" value="${funcionario.dataExpiracao}">  <br><br>
            <label> Situa��o: </label>
            <select class="form-control" name="situacao">
                <option name="situacao" selected="selected">Ativo</option>
                <option>Inativo</option>
            </select>



            <br><br>
            <br>
        </section>


        <script type="text/javascript">

            var openFile = function (event) {
                var input = event.target;

                var reader = new FileReader();
                reader.onload = function () {
                    var dataURL = reader.result;
                    var output = document.getElementById('fotoColaborador');
                    output.src = dataURL;
                };
                reader.readAsDataURL(input.files[0]);

            };

        </script>

        </div>
        <br>&nbsp; 
        <br>&nbsp;


        <div class="linha"> <h4> DADOS DO COLABORADOR </h4> </div> 
        <hr>
        <div class="p1">
            <label> RG: </label> <input  type="text" name="rg" class="form-control" value="${funcionario.rg}">  <br><br>
            <label> CPF: </label> <input type="text" name="cpf" id="cpf" onBlur="ValidarCPF(form1.cpf);" 
                                         onKeyPress="MascaraCPF(form1.cpf);" maxlength="14" class="form-control" required value="${funcionario.cpf}">  <br><br>
            <label> Data de Nascimento: </label> <input type="text" name="dataNascimento" class="form-control" value="${funcionario.dataNascimento}">  <br><br>
            <label> CTPS: </label> <input type="text" name="ctps" class="form-control" value="${funcionario.ctps}">  <br><br>
            <label> PIS: </label> <input type="text"  name="pis" class="form-control" value="${funcionario.pis}">  <br><br>
            <label> Possui Plano de Sa�de: </label>
            <select name="planoSaude"  class="form-control">
                <option selected="selected">Sim</option>
                <option>N�o</option>
            </select>
            <br><br>
            <label> Qual: </label> <input type="text" name="qualPlano" class="form-control" value="${funcionario.planoSaude}">  <br><br>
            <label> CEP: </label> <input type="text" name="cep" id="cep" class="form-control" value="${funcionario.cep}">  <br><br>
            <label> Pa�s: </label> 
            <select name="paises" id="paises" class="form-control">
                <option value="Brasil">Brasil</option>
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
                <option value="Estados Federados da Micron�sia">Estados Federados da Micron�sia</option>
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
                <option value="Ilha Heard e Ilhas McDonald">Ilha Heard e Ilhas McDonald</option>
                <option value="Ilha Norfolk">Ilha Norfolk</option>
                <option value="Ilhas Cayman">Ilhas Cayman</option>
                <option value="Ilhas Cocos (Keeling)">Ilhas Cocos (Keeling)</option>
                <option value="Ilhas Cook">Ilhas Cook</option>
                <option value="Ilhas Fero�">Ilhas Fero�</option>
                <option value="Ilhas Ge�rgia do Sul e Sandwich do Sul">Ilhas Ge�rgia do Sul e Sandwich do Sul</option>
                <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                <option value="Ilhas Marshall">Ilhas Marshall</option>
                <option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
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
                <option value="Rep�blica Democr�tica do Congo">Rep�blica Democr�tica do Congo</option>
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
                <option value="Santa Helena, Ascens�o e Trist�o da Cunha">Santa Helena, Ascens�o e Trist�o da Cunha</option>
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
                <option value="Terras Austrais e Ant�rticas Francesas">Terras Austrais e Ant�rticas Francesas</option>
                <option value="Territ�rio Brit�nico do Oceano �ndico">Territ�rio Brit�nico do Oceano �ndico</option>
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

            <br><br>

            <label> Endere�o: </label> <input type="text" name="rua" id="rua" class="form-control" value="${funcionario.endereco}">  <br><br>
            <label> N�: </label> <input type="text" name="numero" id="numero" class="form-control" value="${funcionario.numero}">  <br><br>
            <label> Bairro: </label> <input type="text" name="bairro" id="bairro" class="form-control" value="${funcionario.bairro}">  <br><br>
            <label> Complemento: </label> <input type="text" name="complemento" id="complemento" class="form-control" value="${funcionario.complemento}">  <br><br>
            <label> Cidade: </label> <input type="text" name="cidade" class="form-control" id="cidade" value="${funcionario.cidade}">  <br><br>
            <label> Estado: </label> <input type="text" name="estado" class="form-control" id="estado" value="${funcionario.estado}">  <br><br>

            <script type="text/javascript">


                $(document).ready(function () {
                    $("#cep").blur(function (e) {
                        if ($.trim($("#cep").val()) != "") {
                            $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep=" + $("#cep").val(), function () {
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
                    })
                });
            </script>


            <label> Telefone Residencial: </label> <input type="text" name="telefoneRes" class="form-control" value="${funcionario.telResidencial}">  <br><br>
            <label> Telefone Celular: </label> <input type="text" name="telefoneCel" class="form-control" value="${funcionario.telCel}">  <br><br>
            <label> Telefone Emergencial: </label> <input type="text" name="telefoneEmer" class="form-control" value="${funcionario.celEmerg}">  <br><br>
        </div>
        <br>&nbsp;

        <div class="linha"> <h4> MEDICINA OCUPACIONAL </h4> </div> 
        <hr>
        <div class="p1">
            <label> Problemas de Sa�de: </label> <input type="text" name="problemasSaude" class="form-control" value="${funcionario.problemasSaude}">  <br><br>
            <label> Notas M�dicas: </label> <input type="text"  name="notaMedica" id="notaMedica" class="form-control" value="${funcionario.notasMedicas}">  <br><br>
            <label> Alergia e Rea��es: </label> <input type="text" name="alergReac" id="alergReac" class="form-control" value="${funcionario.alergiasReacoes}">  <br><br>
            <label> Medicamentos: </label> <input type="text"name="medicamento" id="medicamento" class="form-control" value="${funcionario.medicamentos}">  <br><br>
            <label> Contato para Emerg�ncia: </label> <input type="text" name="contatoEmerg" id="contatoEmerg" class="form-control" value="${funcionario.contatoEmerg}">  <br><br>
            <label> Grupo Sangu�neo </label> <input type="text" name="sangue" id="sangue" class="form-control" value="${funcionario.sangue}">  <br><br>
            <label> Peso </label> <input type="text" name="peso" id="peso" class="form-control" value="${funcionario.peso}">  <br><br>
            <label> � Doador (a) de �rg�os </label> <input type="text" name="doaOrgao" class="form-control" value="${funcionario.doaOrgao}">  <br><br>

        </div>

        <br><br>


        <div id="noprint">
            <center>
                <input type="submit" value="Salvar" class="btn-submit">
            </center>
        </div>
    </form>

    <form action="FrontControllerServlet" method="POST">
        <center>
            <input type="hidden" name="controle" value="ListarFuncionarioAtivo">
            <input type="submit" class="btn-submit" value="Voltar">
        </center>
    </form>

    <br>&nbsp;

    <script type="text/javascript">

        //adiciona mascara ao CPF
        function MascaraCPF(cpf) {
            if (mascaraInteiro(cpf) == false) {
                event.returnValue = false;
            }
            return formataCampo(cpf, '000.000.000-00', event);
        }




//valida o CPF digitado
        function ValidarCPF(Objcpf) {
            var cpf = Objcpf.value;
            exp = /\.|\-/g
            cpf = cpf.toString().replace(exp, "");
            var digitoDigitado = eval(cpf.charAt(9) + cpf.charAt(10));
            var soma1 = 0, soma2 = 0;
            var vlr = 11;

            for (i = 0; i < 9; i++) {
                soma1 += eval(cpf.charAt(i) * (vlr - 1));
                soma2 += eval(cpf.charAt(i) * vlr);
                vlr--;
            }
            soma1 = (((soma1 * 10) % 11) == 10 ? 0 : ((soma1 * 10) % 11));
            soma2 = (((soma2 + (2 * soma1)) * 10) % 11);

            var digitoGerado = (soma1 * 10) + soma2;
            if (digitoGerado != digitoDigitado) {
                alert('CPF Invalido!');
                document.getElementById('cpf').value = '';
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

            exp = /\.|\-|\//g
            cnpj = cnpj.toString().replace(exp, "");
            var digito = new Number(eval(cnpj.charAt(12) + cnpj.charAt(13)));

            for (i = 0; i < valida.length; i++) {
                dig1 += (i > 0 ? (cnpj.charAt(i - 1) * valida[i]) : 0);
                dig2 += cnpj.charAt(i) * valida[i];
            }
            dig1 = (((dig1 % 11) < 2) ? 0 : (11 - (dig1 % 11)));
            dig2 = (((dig2 % 11) < 2) ? 0 : (11 - (dig2 % 11)));

            if (((dig1 * 10) + dig2) != digito)
                alert('CNPJ Invalido!');

        }

//formata de forma generica os campos
        function formataCampo(campo, Mascara, evento) {
            var boleanoMascara;

            var Digitato = evento.keyCode;
            exp = /\-|\.|\/|\(|\)| /g
            campoSoNumeros = campo.value.toString().replace(exp, "");

            var posicaoCampo = 0;
            var NovoValorCampo = "";
            var TamanhoMascara = campoSoNumeros.length;
            ;

            if (Digitato != 8) { // backspace 
                for (i = 0; i <= TamanhoMascara; i++) {
                    boleanoMascara = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".")
                            || (Mascara.charAt(i) == "/"))
                    boleanoMascara = boleanoMascara || ((Mascara.charAt(i) == "(")
                            || (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " "))
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


    <style>
        @media print { 
            #noprint { display:none; } 
            body { background: #fff; }
        }
    </style> 

</body>
</html>