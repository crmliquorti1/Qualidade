<%-- 
    Document   : usuarioCadastrado
    Created on : 12/01/2016, 09:34:30
    Author     : Vinicius Nunes
--%>

<jsp:include page = "../include/head.jsp" />

</head>

<body onload="startTime()">


    <jsp:include page = "../include/navegation.jsp" />


    <center><figure class="highlight" style="background-color:#f2dede">
            <br>
            <br>
            <br>
            Funcionário já cadastrado no sistema.
            <br>
            <br>

            <%
                String acao = (String) request.getAttribute("acao");
            %>

            <form action="/Qualidade/FrontControllerServlet" method="POST">

                <input type="hidden" name="controle" value="<%=acao%>">
                <button type="submit" class="btn btn-danger">Voltar</button>

            </form>

        </figure>
        <center>

            </body>
            </html>
