<%-- 
    Document   : cadastrarPessoa
    Created on : 11/01/2016, 16:02:45
    Author     : Vinicius Nunes
--%>
<%@page import="gerenciador.entidades.Pessoa"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "../include/head.jsp" />

</head>

<body onload="startTime()">

   <div class="no-print"> <jsp:include page = "../include/navegation.jsp" /> </div>
    <br>
    <br>

<h4 style="margin-left: 50px;"> FICHA COLABORADOR </h4>
    <hr>

        <img src="data:image/png;base64,${foto}" width="160px" height="180px" style="padding: 0" class="img-ficha" />
    
        <div class="p1 .col-md-4">
            <b> N�vel de Acesso: </b> ${funcionario.acesso} <br>
            <b> Nome: </b> ${funcionario.nome} <br>
            <b> Matr�cula: </b> ${funcionario.id_funcionario} <br>
            <b> Data de Admiss�o: </b> ${funcionario.admissao} <br>
            <b> E-mail: </b> ${funcionario.email} <br>
            <b> Exige Qualifica��o? </b> Sim <br>
            <b> Cargo Principal: </b> ${funcionario.cargoPrincipal}

        <br>
        <b> Cargo Secund�rio: </b> ${funcionario.cargoSecundario} <br>
        <b> Setor: </b> ${funcionario.setor} <br>
        <b> Turno: </b> ${funcionario.turno} <br>
        <b> Login: </b> ${funcionario.login} <br>
        <b> Senha: </b> ${funcionario.senha} <br>
        <b> Expira��o Senha em: </b> ${funcionario.dataExpiracao} <br>
        <b> Situa��o: </b> Ativo <br>
        <br>
        </div>



    <br>

<h4 style="margin-left: 50px;"> DADOS DO COLABORADOR </h4>
    <hr>
        <div class="p2">
            <b> RG: </b> ${funcionario.rg} <br>
            <b> CPF: </b> ${funcionario.cpf} <br>
            <b> Data de Nascimento: </b> ${funcionario.dataNascimento} <br>
            <b> CTPS: </b> ${funcionario.ctps} <br>
            <b> PIS: </b> ${funcionario.pis} <br>
            <b> Plano de Sa�de: </b> ${funcionario.planoSaude} <br>
            <b> CEP: </b> ${funcionario.cep} <br>
            <b> Pa�s </b> Brasil <br>
            <b> Endere�o: </b> ${funcionario.endereco} <br>
            <b> N�: </b> ${funcionario.numero} <br>
            <b> Bairro: </b> ${funcionario.bairro} <br>
            <b> Complemento: </b> ${funcionario.complemento} <br>
            <b> Cidade: </b> ${funcionario.cidade} <br>
            <b> Estado: </b> ${funcionario.estado} <br>
            <b> Telefone Residencial: </b> ${funcionario.telResidencial} <br>
            <b> Telefone Celular: </b> ${funcionario.telCel} <br>
            <b> Telefone Emergencial: </b> ${funcionario.celEmerg} <br>
        </div>

    <br>&nbsp;

 <h4 style="margin-left: 50px;"> MEDICINA OCUPACIONAL </h4> 
    <hr>
    <div class="p2">
        <b>Problemas de Sa�de: </b> ${funcionario.problemasSaude} <br>
        <b>Notas M�dicas: </b> ${funcionario.notasMedicas} <br>
        <b>Alergias e Rea��es: </b> ${funcionario.alergiasReacoes} <br>
        <b>Medicamentos: </b> ${funcionario.medicamentos} <br>
        <b>Contato para Emerg�ncias: </b> ${funcionario.contatoEmerg} <br>
        <b>Grupo Sangu�neo: </b> ${funcionario.sangue} <br>
        <b>Peso: </b> ${funcionario.peso} <br>
        <b>� doador(a) de org�os: </b> ${funcionario.doaOrgao} <br>
    </div>

   <br>&nbsp;

<h4 style="margin-left: 50px;"> MODIFICA��ES: </h4> 
 <hr>
    
    <div class="p2">
        <b>�ltima modifica��o: </b> ${funcionario.log} 
    </div>




    <br class="no-print">

    <div class="linha no-print" style="display:none;"> <h4> DOCUMENTOS ESCANEADOS </h4> </div> 
    <hr>
    <div class="linha no-print" style="display:none;">
        !
    </div>

    <br>


    <center>
        <form action="FrontControllerServlet" method="POST">
            <input type="hidden" name="controle" value="ListarFuncionarioAtivo">
            <input type="submit" class="btn btn-info no-print" value="Voltar para Pessoas"> <!-- <i class="fa fa-arrow-left"></i> </input> -->
        </form>

        <form action="FrontControllerServlet" method="POST">

            <input type="hidden" name="controle" value="ListarEdicaoFuncionario">
            <input type="hidden" name="id_funcionario" value="${funcionario.id_funcionario}">
            <input type="submit" class="btn-submit no-print" value="Alterar Dados"> <!-- <i class="fa fa-wrench"></i> -->

        </form>

        <a href="#" class="btn-submit no-print" onclick="window.print();">Imprimir <i class="fa fa-print"></i> </a>
    </center>

    <br class="no-print">
    <br class="no-print">

    <!--CSS para impress�o-->
<style>
    @media print {                     
        * {
            background:transparent !important;
            color:#000 !important;
            text-shadow:none !important;
            filter:none !important;
            -ms-filter:none !important;
        }

        body {
            margin:0;
            padding:0;
            line-height: 1.4em;
        }

        img {
            max-width: 100%;
        }

        .img-ficha{
            width: 30%;
            margin-top: 7%;
        }

        .p2{
            margin-top: 0%;
            margin-left: 10px;
            margin-bottom: 0%;
            position: relative;
            padding-top: auto;
            padding-right: auto;
            padding-bottom: auto;
            width: 100%;
        }
        .print {
            display:block;
        }

        .no-print { 
            display:none; 
        }
    }


</style> 



</body>
</html>