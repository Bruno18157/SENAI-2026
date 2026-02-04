function reajustar(){
    let valor = Number(document.getElementById('valor').value);
    let resultado = document.getElementById('resultado');
    let frete = 20;

    if(valor >= 150){
        frete = 0;
    }
   
    let valorComFrete = valor + frete;
   
    resultado.innerHTML = `
    O valor do frete é de R$ ${frete.toFixed(2)} <br>
    O valor total da compra é de R$ ${valorComFrete.toFixed(2)}
    `;
}