import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestForSubstraction {
    private calcInterface calculator = new calcServiceInterface();

    @Test
    public void testSubstraction() {

        int a = 9;
        int b = 3;
        int substractions = calculator.substraction(a, b);
        assertEquals(6, substractions);

    }
}