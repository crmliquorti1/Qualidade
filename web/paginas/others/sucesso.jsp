<%-- 
    Document   : sucesso
    Created on : 12/01/2016, 09:35:51
    Author     : Vinicius Nunes
--%>

<%@page import="gerenciador.entidades.Pessoa"%>

<jsp:include page = "../include/head.jsp" />

</head>

<body onload="startTime()">

    <jsp:include page = "../include/navegation.jsp" />

    <center><figure class="highlight">
            <br>
            <br>
            <br>
            Operação realizada com sucesso.
            <br>
            <br>
            <%
                String acao = (String) request.getAttribute("acao");
            %>

            <form action="/Qualidade/FrontControllerServlet" method="POST">

                <input type="hidden" name="controle" value="<%=acao%>">
                <button type="submit" class="btn btn-success">OK</button>
            </form>


        </figure>
        <center>

        </body>
            </html>
