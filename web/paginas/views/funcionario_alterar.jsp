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

        <label> Nível de Acesso: </label> <input  readonly="true" name="acesso" type="text" class="form-control" value="${funcionario.acesso}">  <br><br>
        <label> Nome: </label> <input type="text" name="nome" class="form-control" value="${funcionario.nome}">  <br><br>

        <label> Matrícula: </label> <input type="text" name="matricula"class="form-control" readonly="true" value="${funcionario.id_funcionario}">  <br><br>
        <label> Data de Admissão: </label> <input type="text" name="dataAdmissao" class="form-control" value="${funcionario.admissao}">  <br><br>
        <label> E-mail: </label> <input type="text" name="email" class="form-control" value="${funcionario.email}" size="30">  <br><br>
        <label> Exige Qualificação: </label>
        <select class="form-control">
            <option name="qualificacao" value="Sim"selected="selected">Sim</option>
            <option name="qualificacao" value="Nao">Não</option>

        </select>
        <br><br>
        <label> Cargo Principal: </label> <input type="text" name="cargoPrincipal" class="form-control" value="${funcionario.cargoPrincipal}">  <br><br>
        </section>

        <section class="p2">

            <label> Cargo Secundário: </label> <input type="text" name="cargoSecundario" class="form-control" value="${funcionario.cargoSecundario}">  <br><br>
            <label class="cad">Setor:</label>
            <select name="setor" class="form-control" value="${funcionario.setor}">
                <option>${funcionario.setor}</option>
                <option>Atendimento</option>
                <option>Faturamento</option>
                <option>Recursos Humanos</option>
                <option>Administração</option>
                <option>Técnica</option>
                <option>Diretoria Clínica</option>
                <option>Qualidade</option>
                <option>T.I.</option>
                <option>Logistica</option>
                <option>Corpo Clinico</option>
            </select>
            <br><br>

            <label> Turno: </label>
            <select name="turno" class="form-control">

                <option value="1º Turno">1º Turno</option>
                <option value="2º Turno">2º Turno</option>
                <option value="3º Turno">3º Turno</option>
            </select>

            <br><br>
            <label> Login: </label> <input type="text" name="login" class="form-control" readonly="true" value="${funcionario.login}">  <br><br>
            <label> Senha: </label> <input type="text" name="senha" class="form-control"  value="${funcionario.senha}">  <br><br>
            <label> Expiração Senha em: </label> <input type="text" name="dataExpiracao" class="form-control" value="${funcionario.dataExpiracao}">  <br><br>
            <label> Situação: </label>
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
            <label> Possui Plano de Saúde: </label>
            <select name="planoSaude"  class="form-control">
                <option selected="selected">Sim</option>
                <option>Não</option>
            </select>
            <br><br>
            <label> Qual: </label> <input type="text" name="qualPlano" class="form-control" value="${funcionario.planoSaude}">  <br><br>
            <label> CEP: </label> <input type="text" name="cep" id="cep" class="form-control" value="${funcionario.cep}">  <br><br>
            <label> País: </label> 
            <select name="paises" id="paises" class="form-control">
                <option value="Brasil">Brasil</option>
                <option value="Afeganistão">Afeganistão</option>
                <option value="África do Sul">África do Sul</option>
                <option value="Albânia">Albânia</option>
                <option value="Alemanha">Alemanha</option>
                <option value="Andorra">Andorra</option>
                <option value="Angola">Angola</option>
                <option value="Anguilla">Anguilla</option>
                <option value="Antilhas Holandesas">Antilhas Holandesas</option>
                <option value="Antárctida">Antárctida</option>
                <option value="Antígua e Barbuda">Antígua e Barbuda</option>
                <option value="Argentina">Argentina</option>
                <option value="Argélia">Argélia</option>
                <option value="Armênia">Armênia</option>
                <option value="Aruba">Aruba</option>
                <option value="Arábia Saudita">Arábia Saudita</option>
                <option value="Austrália">Austrália</option>
                <option value="Áustria">Áustria</option>
                <option value="Azerbaijão">Azerbaijão</option>
                <option value="Bahamas">Bahamas</option>
                <option value="Bahrein">Bahrein</option>
                <option value="Bangladesh">Bangladesh</option>
                <option value="Barbados">Barbados</option>
                <option value="Belize">Belize</option>
                <option value="Benim">Benim</option>
                <option value="Bermudas">Bermudas</option>
                <option value="Bielorrússia">Bielorrússia</option>
                <option value="Bolívia">Bolívia</option>
                <option value="Botswana">Botswana</option>
                <option value="Brunei">Brunei</option>
                <option value="Bulgária">Bulgária</option>
                <option value="Burkina Faso">Burkina Faso</option>
                <option value="Burundi">Burundi</option>
                <option value="Butão">Butão</option>
                <option value="Bélgica">Bélgica</option>
                <option value="Bósnia e Herzegovina">Bósnia e Herzegovina</option>
                <option value="Cabo Verde">Cabo Verde</option>
                <option value="Camarões">Camarões</option>
                <option value="Camboja">Camboja</option>
                <option value="Canadá">Canadá</option>
                <option value="Catar">Catar</option>
                <option value="Cazaquistão">Cazaquistão</option>
                <option value="Chade">Chade</option>
                <option value="Chile">Chile</option>
                <option value="China">China</option>
                <option value="Chipre">Chipre</option>
                <option value="Colômbia">Colômbia</option>
                <option value="Comores">Comores</option>
                <option value="Coreia do Norte">Coreia do Norte</option>
                <option value="Coreia do Sul">Coreia do Sul</option>
                <option value="Costa do Marfim">Costa do Marfim</option>
                <option value="Costa Rica">Costa Rica</option>
                <option value="Croácia">Croácia</option>
                <option value="Cuba">Cuba</option>
                <option value="Dinamarca">Dinamarca</option>
                <option value="Djibouti">Djibouti</option>
                <option value="Dominica">Dominica</option>
                <option value="Egito">Egito</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Emirados Árabes Unidos">Emirados Árabes Unidos</option>
                <option value="Equador">Equador</option>
                <option value="Eritreia">Eritreia</option>
                <option value="Escócia">Escócia</option>
                <option value="Eslováquia">Eslováquia</option>
                <option value="Eslovênia">Eslovênia</option>
                <option value="Espanha">Espanha</option>
                <option value="Estados Federados da Micronésia">Estados Federados da Micronésia</option>
                <option value="Estados Unidos">Estados Unidos</option>
                <option value="Estônia">Estônia</option>
                <option value="Etiópia">Etiópia</option>
                <option value="Fiji">Fiji</option>
                <option value="Filipinas">Filipinas</option>
                <option value="Finlândia">Finlândia</option>
                <option value="França">França</option>
                <option value="Gabão">Gabão</option>
                <option value="Gana">Gana</option>
                <option value="Geórgia">Geórgia</option>
                <option value="Gibraltar">Gibraltar</option>
                <option value="Granada">Granada</option>
                <option value="Gronelândia">Gronelândia</option>
                <option value="Grécia">Grécia</option>
                <option value="Guadalupe">Guadalupe</option>
                <option value="Guam">Guam</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Guernesei">Guernesei</option>
                <option value="Guiana">Guiana</option>
                <option value="Guiana Francesa">Guiana Francesa</option>
                <option value="Guiné">Guiné</option>
                <option value="Guiné Equatorial">Guiné Equatorial</option>
                <option value="Guiné-Bissau">Guiné-Bissau</option>
                <option value="Gâmbia">Gâmbia</option>
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
                <option value="Ilhas Feroé">Ilhas Feroé</option>
                <option value="Ilhas Geórgia do Sul e Sandwich do Sul">Ilhas Geórgia do Sul e Sandwich do Sul</option>
                <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                <option value="Ilhas Marshall">Ilhas Marshall</option>
                <option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
                <option value="Ilhas Salomão">Ilhas Salomão</option>
                <option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
                <option value="Ilhas Virgens Britânicas">Ilhas Virgens Britânicas</option>
                <option value="Ilhas Åland">Ilhas Åland</option>
                <option value="Indonésia">Indonésia</option>
                <option value="Inglaterra">Inglaterra</option>
                <option value="Índia">Índia</option>
                <option value="Iraque">Iraque</option>
                <option value="Irlanda do Norte">Irlanda do Norte</option>
                <option value="Irlanda">Irlanda</option>
                <option value="Irã">Irã</option>
                <option value="Islândia">Islândia</option>
                <option value="Israel">Israel</option>
                <option value="Itália">Itália</option>
                <option value="Iêmen">Iêmen</option>
                <option value="Jamaica">Jamaica</option>
                <option value="Japão">Japão</option>
                <option value="Jersey">Jersey</option>
                <option value="Jordânia">Jordânia</option>
                <option value="Kiribati">Kiribati</option>
                <option value="Kuwait">Kuwait</option>
                <option value="Laos">Laos</option>
                <option value="Lesoto">Lesoto</option>
                <option value="Letônia">Letônia</option>
                <option value="Libéria">Libéria</option>
                <option value="Liechtenstein">Liechtenstein</option>
                <option value="Lituânia">Lituânia</option>
                <option value="Luxemburgo">Luxemburgo</option>
                <option value="Líbano">Líbano</option>
                <option value="Líbia">Líbia</option>
                <option value="Macau">Macau</option>
                <option value="Macedônia">Macedônia</option>
                <option value="Madagáscar">Madagáscar</option>
                <option value="Malawi">Malawi</option>
                <option value="Maldivas">Maldivas</option>
                <option value="Mali">Mali</option>
                <option value="Malta">Malta</option>
                <option value="Malásia">Malásia</option>
                <option value="Marianas Setentrionais">Marianas Setentrionais</option>
                <option value="Marrocos">Marrocos</option>
                <option value="Martinica">Martinica</option>
                <option value="Mauritânia">Mauritânia</option>
                <option value="Maurícia">Maurícia</option>
                <option value="Mayotte">Mayotte</option>
                <option value="Moldávia">Moldávia</option>
                <option value="Mongólia">Mongólia</option>
                <option value="Montenegro">Montenegro</option>
                <option value="Montserrat">Montserrat</option>
                <option value="Moçambique">Moçambique</option>
                <option value="Myanmar">Myanmar</option>
                <option value="México">México</option>
                <option value="Mônaco">Mônaco</option>
                <option value="Namíbia">Namíbia</option>
                <option value="Nauru">Nauru</option>
                <option value="Nepal">Nepal</option>
                <option value="Nicarágua">Nicarágua</option>
                <option value="Nigéria">Nigéria</option>
                <option value="Niue">Niue</option>
                <option value="Noruega">Noruega</option>
                <option value="Nova Caledônia">Nova Caledônia</option>
                <option value="Nova Zelândia">Nova Zelândia</option>
                <option value="Níger">Níger</option>
                <option value="Omã">Omã</option>
                <option value="Palau">Palau</option>
                <option value="Palestina">Palestina</option>
                <option value="Panamá">Panamá</option>
                <option value="Papua-Nova Guiné">Papua-Nova Guiné</option>
                <option value="Paquistão">Paquistão</option>
                <option value="Paraguai">Paraguai</option>
                <option value="País de Gales">País de Gales</option>
                <option value="Países Baixos">Países Baixos</option>
                <option value="Peru">Peru</option>
                <option value="Pitcairn">Pitcairn</option>
                <option value="Polinésia Francesa">Polinésia Francesa</option>
                <option value="Polônia">Polônia</option>
                <option value="Porto Rico">Porto Rico</option>
                <option value="Portugal">Portugal</option>
                <option value="Quirguistão">Quirguistão</option>
                <option value="Quênia">Quênia</option>
                <option value="Reino Unido">Reino Unido</option>
                <option value="República Centro-Africana">República Centro-Africana</option>
                <option value="República Checa">República Checa</option>
                <option value="República Democrática do Congo">República Democrática do Congo</option>
                <option value="República do Congo">República do Congo</option>
                <option value="República Dominicana">República Dominicana</option>
                <option value="Reunião">Reunião</option>
                <option value="Romênia">Romênia</option>
                <option value="Ruanda">Ruanda</option>
                <option value="Rússia">Rússia</option>
                <option value="Saara Ocidental">Saara Ocidental</option>
                <option value="Saint Martin">Saint Martin</option>
                <option value="Saint-Barthélemy">Saint-Barthélemy</option>
                <option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
                <option value="Samoa Americana">Samoa Americana</option>
                <option value="Samoa">Samoa</option>
                <option value="Santa Helena, Ascensão e Tristão da Cunha">Santa Helena, Ascensão e Tristão da Cunha</option>
                <option value="Santa Lúcia">Santa Lúcia</option>
                <option value="Senegal">Senegal</option>
                <option value="Serra Leoa">Serra Leoa</option>
                <option value="Seychelles">Seychelles</option>
                <option value="Singapura">Singapura</option>
                <option value="Somália">Somália</option>
                <option value="Sri Lanka">Sri Lanka</option>
                <option value="Suazilândia">Suazilândia</option>
                <option value="Sudão">Sudão</option>
                <option value="Suriname">Suriname</option>
                <option value="Suécia">Suécia</option>
                <option value="Suíça">Suíça</option>
                <option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
                <option value="São Cristóvão e Nevis">São Cristóvão e Nevis</option>
                <option value="São Marino">São Marino</option>
                <option value="São Tomé e Príncipe">São Tomé e Príncipe</option>
                <option value="São Vicente e Granadinas">São Vicente e Granadinas</option>
                <option value="Sérvia">Sérvia</option>
                <option value="Síria">Síria</option>
                <option value="Tadjiquistão">Tadjiquistão</option>
                <option value="Tailândia">Tailândia</option>
                <option value="Taiwan">Taiwan</option>
                <option value="Tanzânia">Tanzânia</option>
                <option value="Terras Austrais e Antárticas Francesas">Terras Austrais e Antárticas Francesas</option>
                <option value="Território Britânico do Oceano Índico">Território Britânico do Oceano Índico</option>
                <option value="Timor-Leste">Timor-Leste</option>
                <option value="Togo">Togo</option>
                <option value="Tonga">Tonga</option>
                <option value="Toquelau">Toquelau</option>
                <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                <option value="Tunísia">Tunísia</option>
                <option value="Turcas e Caicos">Turcas e Caicos</option>
                <option value="Turquemenistão">Turquemenistão</option>
                <option value="Turquia">Turquia</option>
                <option value="Tuvalu">Tuvalu</option>
                <option value="Ucrânia">Ucrânia</option>
                <option value="Uganda">Uganda</option>
                <option value="Uruguai">Uruguai</option>
                <option value="Uzbequistão">Uzbequistão</option>
                <option value="Vanuatu">Vanuatu</option>
                <option value="Vaticano">Vaticano</option>
                <option value="Venezuela">Venezuela</option>
                <option value="Vietname">Vietname</option>
                <option value="Wallis e Futuna">Wallis e Futuna</option>
                <option value="Zimbabwe">Zimbabwe</option>
                <option value="Zâmbia">Zâmbia</option>
            </select>

            <br><br>

            <label> Endereço: </label> <input type="text" name="rua" id="rua" class="form-control" value="${funcionario.endereco}">  <br><br>
            <label> N°: </label> <input type="text" name="numero" id="numero" class="form-control" value="${funcionario.numero}">  <br><br>
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
                                    alert("Não foi possivel encontrar o endereço");
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
            <label> Problemas de Saúde: </label> <input type="text" name="problemasSaude" class="form-control" value="${funcionario.problemasSaude}">  <br><br>
            <label> Notas Médicas: </label> <input type="text"  name="notaMedica" id="notaMedica" class="form-control" value="${funcionario.notasMedicas}">  <br><br>
            <label> Alergia e Reações: </label> <input type="text" name="alergReac" id="alergReac" class="form-control" value="${funcionario.alergiasReacoes}">  <br><br>
            <label> Medicamentos: </label> <input type="text"name="medicamento" id="medicamento" class="form-control" value="${funcionario.medicamentos}">  <br><br>
            <label> Contato para Emergência: </label> <input type="text" name="contatoEmerg" id="contatoEmerg" class="form-control" value="${funcionario.contatoEmerg}">  <br><br>
            <label> Grupo Sanguíneo </label> <input type="text" name="sangue" id="sangue" class="form-control" value="${funcionario.sangue}">  <br><br>
            <label> Peso </label> <input type="text" name="peso" id="peso" class="form-control" value="${funcionario.peso}">  <br><br>
            <label> É Doador (a) de Órgãos </label> <input type="text" name="doaOrgao" class="form-control" value="${funcionario.doaOrgao}">  <br><br>

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