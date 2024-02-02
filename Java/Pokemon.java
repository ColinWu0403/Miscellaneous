import java.util.ArrayDeque;
import java.util.Deque;

public abstract class Pokemon {

    public abstract Pokemon evolve();

    public String toString() {

        return "Pokemon[?]";

    }

    public static void main(String[] args) {

        Deque<Integer> numbers = new ArrayDeque<>();
        numbers.push(5);
        numbers.push(7);
        numbers.push(9);
        numbers.push(3);
        numbers.push(4);
        numbers.push(11);
        numbers.push(14);
        numbers.add(11);
        numbers.add(4);
        numbers.add(3);
        numbers.add(9);
        numbers.add(7);
        numbers.add(5);

        for (int i = 0; i < 3; i++) {
            numbers.pop();
            numbers.removeLast();
        }
        System.out.println(numbers);
    }

    public static String toTernaryString(int decimal) {

        String result = "";

        while (decimal > 0) {

            int remainder = decimal % 3;

            decimal /= 3;

            result = remainder + result;

        }

        return result;

    }
}
