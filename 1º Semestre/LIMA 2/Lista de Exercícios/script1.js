function reajustar(){
    let salario = Number(document.getElementById('salario').value);
    let resultado = document.getElementById('resultado');
    let bonus = 0;

    if(salario > 2000){
        bonus = salario * 0.1;
    }
   
    let salarioComBonus = salario + bonus;
   
    resultado.innerHTML = `
    O valor do Bônus é de R$ ${bonus.toFixed(2)} <br>
    O salário Final é de R$ ${salarioComBonus.toFixed(2)}
    `;
}