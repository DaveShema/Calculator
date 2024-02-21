public class calcServiceInterface implements calcInterface {
    @Override
    public int addition(int a, int b) {
        return a + b;
    }

    @Override
    public int substraction(int a, int b) {
        return a - b;
    }

    @Override
    public int multiplication(int a, int b){


        return a * b;
    }

    @Override
    public int division(int a, int b) throws Exception {
        if(b==0) {
            System.out.println("you can't divide number with ZERO");
            throw new Exception();


        }
        return a / b;
    }
}
