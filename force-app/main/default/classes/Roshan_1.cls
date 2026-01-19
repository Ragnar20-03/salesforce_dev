public class Roshan_1 {

    private string r  ;
    private string k ; 

    public Roshan_1 (string r) 
    {
        System.debug( 'This is paramterized constructor ...');
		this.r = r;
	}
    public  void ExecuteBeforeAccount() {
        String name = 'Before account riggerr';
        System.debug(name + ' ' + r );
    }
}