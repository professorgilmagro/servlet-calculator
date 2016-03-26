<form id="fraction_calculator" method="post" class="calculator" action="<%= request.getContextPath() %>/calcular">
        <h2><img title="Clique aqui para limpar os dados." src="assets/images/calc.png"> Calculador</h2>
        <div id="calc-screen" class="visor" ></div>
        <input name="numerador" id="num" type="hidden">
        <input name="divisor" id="denominator" type="hidden">
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
                    <td><button id="calc-reset" type="button">C</button></td>
                </tr>
                <tr>
                    <td><button type="button" >1</button></td>
                    <td><button type="button" >2</button></td>
                    <td><button type="button" >3</button></td>
                    <td><button type="button" disabled="disabled">-</button></td>
                </tr>
                 <tr>
                    <td><button type="button" >0</button></td>
                    <td><button type="button" >,</button></td>
                    <td><button>=</button></td>
                    <td><button type="button" disabled="disabled">+</button></td>
                </tr>

            </tbody>
        </table>
</form>