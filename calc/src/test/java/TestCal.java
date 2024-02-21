import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestCal {
    private calcInterface calculator = new calcServiceInterface();

    @Test
    public void testAddition(){

        int a =9;
        int b =3;
        int sum = calculator.addition(a,b);
        assertEquals(12, sum);
    }

}
