import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class testMultiplication {

    calcInterface calInter= new calcServiceInterface();
    @Test
    public void testMultiplication(){
        int a=9;
        int b=3;
        int multiplication=calInter.multiplication(a,b);
        assertEquals(27,multiplication);


    }
}
