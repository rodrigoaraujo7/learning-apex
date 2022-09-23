public class Calculator {
    public static Integer addition(Integer firstValue, Integer secondValue) {
        Integer result = firstValue + secondValue;        
        return result;
    }

    public static Integer subtract(Integer firstValue, Integer secondValue) {
        Integer result = firstValue - secondValue;
        return result;
    }

    public static Integer multiplication(Integer firstValue, Integer secondValue) {
        Integer result = firstValue * secondValue;
        return result;
    }

    public static Integer division(Integer firstValue, Integer secondValue) {
        if (secondValue == 0) {
            system.debug('Não pode dividir por 0');
            return 0;
        } else {
            return firstValue / secondValue;
        }
    }
}