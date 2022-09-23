@isTest
public class CalculatorTest {
	@isTest public static void testAddMethod() {
        Integer result = Calculator.addition(1, 1);
        system.assert(result == 2, '🔴 Unexpected result');
    }

    @isTest public static void testSubtractMethod() {
        Integer result = Calculator.subtract(12, 2);
        system.assertEquals(10, result, '🔴 Unexpected result');
    }

    @isTest public static void testMultiplicationMethod() {
        Integer result = Calculator.multiplication(2, 2);
        system.assert(result == 4, '🔴 Unexpected result');
    }

    @isTest public static void testDivisionMethod() {        
        Integer result = Calculator.division(10, 2);
        system.assert(result == 5, '🔴 Unexpected result');
    }
    
    @isTest public static void testDivisionByZeroMethod() {
        Integer result = Calculator.division(10, 0);
        system.assert(result == 0, '🔴 Unexpected result');
    }
}