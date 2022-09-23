@isTest
public class CaseHandlerTest {
    @isTest public static void testCreateCaseMethod() {
        Case itemCase = new Case(); // Instanciando o objeto Case

        // Definindo valores aos campos Status e Origin
        itemCase.Status = 'New'; 
        itemCase.Origin = 'Phone';
        insert itemCase; // Inserindo o novo registro no objeto Case
        // TODO: OBS => Esse é o unico registro dentro do TESTE!!!

        // Selecionando o registro que acabei de criar
        Case itemCaseType = [SELECT Id, Type FROM Case];
        // Testando o método "caseBefore" da minha classe "CaseHandler"
        system.assert(itemCaseType.Type == 'Other', '🔴 Unexpected result');
    }
}