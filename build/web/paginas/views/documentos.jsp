<%-- 
    Document   : documentos
    Created on : 23/02/2016, 15:15:26
    Author     : Administrador
--%>

<%@page import="gerenciador.entidades.Documento"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="gerenciador.entidades.Pessoa"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page = "../include/head.jsp" />

</head>

<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />
    <br>


    <div class="tudo">

        <div class="panel panel-default">
            <div class="panel-heading" align="center"><%= request.getAttribute("diretorio")%></div><br>

            <%

                ArrayList<Documento> documentos = (ArrayList) request.getAttribute("documentos");

                for (Documento doc : documentos) {


            %>


            <a href="ExibeDocumentos?url=<% out.print(doc.getUrl());%>"><%out.print(doc.getNome());%></a> <br>



            <%                    }
            %>



        </div> 
    </div>
</body>
</html>