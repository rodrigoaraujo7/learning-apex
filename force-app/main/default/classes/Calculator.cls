public class Calculator {
    public static Integer addition(Integer firstValue, Integer secondValue) {
        Integer result = firstValue + secondValue;        
        return result;
    }
    
    public static void add(Integer n1, Integer n2) {
        integer result = n1 + n2;
        system.debug(result);
    }

    public static Integer subtract(Integer firstValue, Integer secondValue) {
        Integer result = firstValue - secondValue;
        return result;
    }

    public Integer multiplication(Integer firstValue, Integer secondValue) {
        Integer result = firstValue * secondValue;
        return result;
    }

    public Integer division(Integer firstValue, Integer secondValue) {
        if (secondValue == 0) {
            system.debug('Não pode dividir por 0');
            return 0;
        } else {
            return firstValue / secondValue;
        }
    }
}