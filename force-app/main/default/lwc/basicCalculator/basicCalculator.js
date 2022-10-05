import { LightningElement, api } from 'lwc';

export default class BasicCalculator extends LightningElement {
    @api firstValue;
    @api secondValue;
    op;
    result;

    handleFirstValue(event) { this.firstValue = parseFloat(event.target.value) }
    handleSecondValue(event) { this.secondValue = parseFloat(event.target.value) }

    handleSum()  { this.op = '+'; console.log(this.op) }
    handleSub()  { this.op = '-' }
    handleMult() { this.op = 'x' }
    handleDiv()  { this.op = '/' }
    
    handleCalc() {       
        switch(this.op) {
            case '+':
                this.result = this.firstValue + this.secondValue;
                break;
            case '-':
                this.result = +this.firstValue - +this.secondValue;
                break;
            case 'x':
                this.result = +this.firstValue * +this.secondValue;
                break;
            case '/':
                this.result = (this.firstValue / this.secondValue).toFixed(2);

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
        this.template.querySelector('.result').innerHTML = '';
        
        this.op = '';
        this.result = '';
    }
}
    