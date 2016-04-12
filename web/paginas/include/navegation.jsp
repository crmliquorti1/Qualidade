<%@page import="gerenciador.entidades.Pessoa"%>
<%@page import="gerenciador.entidades.UsuarioLogado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Navigation -->     

<nav class="navbar navbar-inverse navbar-static">


    <ul class='topo1' style=''>
        <li>
            <div style=''>

                <script type="text/javascript" language="JavaScript">

                    // Função que monta Mês, Dia, e Ano para exibir no HTML


                    // Declaração de Variaveis que receberam os valores:


                    var now = new Date();


                    var hours = now.getHours();


                    var minutes = now.getMinutes();


                    var timeValue = "" + ((hours > 12) ? hours - 12 : hours);





                    //Tratamento quantidade de Digitos nos Minutos e exibi se é 


                    // dia ou noite, PM, AM.


                    timeValue += ((minutes < 10) ? ":0" : ":") + minutes;


                    timeValue += (hours >= 12) ? " PM" : " AM";


                    timerRunning = true;





                    mydate = new Date();


                    myday = mydate.getDay();


                    mymonth = mydate.getMonth();


                    myweekday = mydate.getDate();


                    weekday = myweekday;

                    myyear = now.getFullYear();

                    year = myyear;





                    // Tratamento dos Dias da Semana


                    if (myday == 0)
                        day = " Domingo, ";





                    else if (myday == 1)
                        day = " Segunda Feira, ";





                    else if (myday == 2)
                        day = " Terça Feira, ";





                    else if (myday == 3)
                        day = " Quarta Feira, ";





                    else if (myday == 4)
                        day = " Quinta Feira, ";





                    else if (myday == 5)
                        day = " Sexta Feira, ";





                    else if (myday == 6)
                        day = " Sábado, ";





                    //Tratamento dos Meses


                    if (mymonth == 0)
                        month = " de Janeiro de ";





                    else if (mymonth == 1)
                        month = " de Fevereiro de ";





                    else if (mymonth == 2)
                        month = " de Março de ";





                    else if (mymonth == 3)
                        month = " de Abril de ";





                    else if (mymonth == 4)
                        month = " de Maio de ";





                    else if (mymonth == 5)
                        month = " de Junho de ";





                    else if (mymonth == 6)
                        month = " de Julho de ";





                    else if (mymonth == 7)
                        month = " de Agosto de ";





                    else if (mymonth == 8)
                        month = " de Setembro de ";





                    else if (mymonth == 9)
                        month = " de Outubro de ";





                    else if (mymonth == 10)
                        month = " de Novembro de ";





                    else if (mymonth == 11)
                        month = " de Dezembro de ";





                    //Exibe na Pagina o Resultado concatenando(+) os valores


                    document.write(day + myweekday + month + year);


                </script>

            </div>

            <div id="txt">
                <script type="text/javascript">
                    function startTime() {
                        var today = new Date();
                        var h = today.getHours();
                        var m = today.getMinutes();
                        var s = today.getSeconds();
                        // add a zero in front of numbers<10
                        m = checkTime(m);
                        s = checkTime(s);
                        document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
                        t = setTimeout('startTime()', 500);
                    }

                    function checkTime(i) {
                        if (i < 10) {
                            i = "0" + i;
                        }
                        return i;
                    }
                </script>
            </div>

        </li>

    </ul>

    <div style=''>
        <ul class='topo2' style=''>

            

            <li>Você está acessando como </li>

            <li>
                <form action="/Qualidade/LogoutServlet" method="POST">
                    <input class="botaoFunc" type="submit" value="SAIR">
                </form>
            </li>   

        </ul>
    </div>

</nav>

  

<jsp:include page = "menu_diretoria.jsp" />



