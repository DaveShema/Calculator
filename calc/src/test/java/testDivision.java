import org.junit.Ignore;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class testDivision {
    calcInterface calInter = new calcServiceInterface();

    @Test(expected = Exception.class)
    public void testDivision() throws Exception {
        int a = 9;
        int b = 3;
        int division = calInter.division(a, b);
        assertEquals(3, division);

    }
    @Ignore
    @Test(expected = Exception.class)
    public void testDivisionNEGATIVE_TEST() throws Exception {
        int a = 9;
        int b = 0;
        int division = calInter.division(a, b);
    }
}