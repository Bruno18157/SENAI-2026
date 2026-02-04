function reajustar(){
    let valor = Number(document.getElementById('valor').value);
    let resultado = document.getElementById('resultado');
    let desconto = 0;

    if(valor > 200){
        desconto = valor * 0.05;
    }
   
    let valorComDesconto = valor - desconto;
   
    resultado.innerHTML = `
    O valor do desconto é de R$ ${desconto.toFixed(2)} <br>
    O valor final a pagar é de R$ ${valorComDesconto.toFixed(2)}
    `;
}