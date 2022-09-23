import { LightningElement } from 'lwc';

export default class BasicCalculator extends LightningElement {
    firstValue;
    secondValue;
    op;
    result;
    
    handleCalc() {
        this.firstValue = +this.template.querySelector('.firstValue').value;
        this.secondValue = +this.template.querySelector('.secondValue').value;
        this.op = this.template.querySelector('.op').value;
        
        switch(this.op) {
            case '+':
                this.result = +this.firstValue + +this.secondValue;
                break;
            case '-':
                this.result = +this.firstValue - +this.secondValue;
                break;
            case 'x':
                this.result = +this.firstValue * +this.secondValue;
                break;
            case '/':
                this.result = (parseFloat(this.firstValue) / parseFloat(this.secondValue)).toFixed(2);

                if(+this.secondValue == 0){
                    this.result = 'Não é possivel dividir por 0';
                }

                break;
            default:
                this.result = 'Preencha todos os campos!';
        };
    }

    handleClear() {
        this.template.querySelector('.firstValue').value = '';
        this.template.querySelector('.secondValue').value = '';
        this.template.querySelector('.op').value = '';
    }
}
    