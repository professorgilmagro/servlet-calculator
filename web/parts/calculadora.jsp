<%@page import="java.util.ArrayList"%>
<form id="fraction_calculator" method="post" class="calculator" action="<%= request.getContextPath() %>/calculadora">
    <%
        String categoria = (String) request.getAttribute("categoria");
        String result = (String) request.getAttribute("resultado");
        ArrayList<String> avisos = (ArrayList<String>) request.getAttribute("avisos");
    %>
    <h2><img title="Clique aqui para limpar os dados." src="assets/images/calc.png"> Calculador</h2>
   
    <div  class="visor" >
        <div class="tipo-fracao"><%= categoria == null ? "" : categoria %></div>
        <div id="calc-screen"><%= result == null ? "" : result %></div>
            <ul class="warnings">
            <%
            if( avisos != null ) {
                for (String aviso : avisos) {
                   out.print( "<li>" + aviso + "</li>" );
                }
            }
            %>
            </ul>
    </div>
        <input name="num1" id="calc-value1" type="hidden" value="<%= result %>">
        <input name="num2" id="calc-value2" type="hidden">
        <table class="teclado">
            <tbody>
                <tr>
                    <td><button type="button" >7</button></td>
                    <td><button type="button" >8</button></td>
                    <td><button type="button" >9</button></td>
                    <td><button type="button" id="btn-divisor" ><img src="assets/images/div.png"></button></td>
                    <td><button type="button" id="btn-backspace" ><img src="assets/images/back-backspace.png"></button></td>
                </tr>
                 <tr>
                    <td><button type="button" >4</button></td>
                    <td><button type="button" >5</button></td>
                    <td><button type="button" >6</button></td>
                    <td><button type="button" disabled="disabled" >x</button></td>
                    <td><button id="btn-clean" type="button">C</button></td>
                </tr>
                <tr>
                    <td><button type="button" >1</button></td>
                    <td><button type="button" >2</button></td>
                    <td><button type="button" >3</button></td>
                    <td><button type="button" disabled="disabled">-</button></td>
                </tr>
                 <tr>
                    <td><button type="button" >0</button></td>
                    <td><button type="button" id="btn-decimal" >,</button></td>
                    <td><button type="submit" id="btn-calculate" >=</button></td>
                    <td><button type="button" disabled="disabled">+</button></td>
                </tr>

            </tbody>
        </table>
</form>