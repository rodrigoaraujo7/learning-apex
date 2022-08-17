public class person {
	public string name;
  	public string lastName;
  	public integer age;
    
    // Actions
    public void speak() {
        system.debug('Meu nome é: ' + name);
        system.debug('Meu sobrenome é: ' + lastName);
        system.debug('Tenho: ' + age + ' anos');
    }
	
    public void sleep() {
        system.debug('Time to sleep!');
    }
}