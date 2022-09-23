import { LightningElement } from "lwc";

export default class App extends LightningElement {
  inputs = {
    name: '',
    weight: '',
    height: ''
  }

  arr = []

  pickInputValue(event) {
    let inputName = event.target.name;
    let value = event.detail.value;

    this.inputs = {
      ...this.inputs, [inputName]:value
    };

    console.log(this.inputs);
  }

  msg;
  calc;
  calcImc() {
    this.calc = (parseInt(this.inputs.weight) / (parseFloat(this.inputs.height) * parseFloat(this.inputs.height))).toFixed(1);
    this.template.querySelector('.message').style= 'color: black';

    if(this.calc < 18.5) {
      this.msg = `${this.inputs.name} você está abaixo do peso, seu IMC é de: ${this.calc}`; 
    } else if(this.calc >= 18.5 && this.calc < 25) {
      this.msg = `${this.inputs.name} você está com o peso ideal, seu IMC é de: ${this.calc}`;
    } else if(this.calc >= 25 && this.calc < 30) {
      this.msg = `${this.inputs.name} você está com sobrepeso, seu IMC é de: ${this.calc}`;
    } else if(this.calc >= 35 && this.calc < 40) {
      this.msg = `${this.inputs.name} você está com obesidade grau II, seu IMC é de: ${this.calc}`;
    } else if(this.calc > 40) {
      this.msg = `${this.inputs.name} você está com obesidade grau III, seu IMC é de: ${this.calc}`;
    } else {
      this.template.querySelector('.message').style= 'color: red';
      this.msg = 'Coloque valores validos!';
    }
  }
}
