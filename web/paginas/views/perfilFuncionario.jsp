<%-- 
    Document   : cadastrarPessoa
    Created on : 11/01/2016, 16:02:45
    Author     : Vinicius Nunes
--%>
<%@page import="gerenciador.entidades.Documento"%>
<%@page import="java.util.ArrayList"%>
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
        <b> Nível de Acesso: </b> ${funcionario.acesso} <br>
        <b> Nome: </b> ${funcionario.nome} <br>
        <b> Matrícula: </b> ${funcionario.id_funcionario} <br>
        <b> Data de Admissão: </b> ${funcionario.admissao} <br>
        <b> E-mail: </b> ${funcionario.email} <br>
        <b> Exige Qualificação? </b> Sim <br>
        <b> Cargo Principal: </b> ${funcionario.cargoPrincipal}

        <br>
        <b> Cargo Secundário: </b> ${funcionario.cargoSecundario} <br>
        <b> Setor: </b> ${funcionario.setor} <br>
        <b> Turno: </b> ${funcionario.turno} <br>
        <b> Login: </b> ${funcionario.login} <br>
        <b> Senha: </b> ${funcionario.senha} <br>
        <b> Expiração Senha em: </b> ${funcionario.dataExpiracao} <br>
        <b> Situação: </b> ${funcionario.situacao} <br>
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
        <b> Plano de Saúde: </b> ${funcionario.planoSaude} <br>
        <b> CEP: </b> ${funcionario.cep} <br>
        <b> País </b> Brasil <br>
        <b> Endereço: </b> ${funcionario.endereco} <br>
        <b> N°: </b> ${funcionario.numero} <br>
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
        <b>Problemas de Saúde: </b> ${funcionario.problemasSaude} <br>
        <b>Notas Médicas: </b> ${funcionario.notasMedicas} <br>
        <b>Alergias e Reações: </b> ${funcionario.alergiasReacoes} <br>
        <b>Medicamentos: </b> ${funcionario.medicamentos} <br>
        <b>Contato para Emergências: </b> ${funcionario.contatoEmerg} <br>
        <b>Grupo Sanguíneo: </b> ${funcionario.sangue} <br>
        <b>Peso: </b> ${funcionario.peso} <br>
        <b>É doador(a) de orgãos: </b> ${funcionario.doaOrgao} <br>
    </div>

    <br>&nbsp;



    <div class="linha no-print"> <h4> DOCUMENTOS </h4> </div> 
    <hr>
    <div class="linha no-print">


        <div class="p2">

        <%
            try {

                ArrayList<Documento> documentos = (ArrayList) request.getAttribute("documentos");

                for (Documento doc : documentos) {


        %>


        <a href="ExibeDocumentos?url=<% out.print(doc.getUrl());%>"><%out.print(doc.getNome());%></a> <br>



        <%                    }
            } catch (Exception ex) {

            }
        %>

</div>



    </div>

    <br>

    <h4 style="margin-left: 50px;"> MODIFICAÇÕES: </h4> 
    <hr>

    <div class="p2">
        <b>Última modificação: </b> ${funcionario.log} 
    </div>

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

    <!--CSS para impressão-->
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