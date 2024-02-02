import java.util.*;

public class Main
{
    
    static int procedure_modular_exp(int b, int n, int m) {
        int u = 0;
        int x = 1;
        
        while (n > 0) {
 
            // If y is odd, multiply x with result
            if ((n & 1) != 0)
                u = x * b;
                System.out.printf("%d * %d = %d \n", x, b, u);
                x = x * b;
 
            // y must be even now
            int j = n >> 1;
            int b_sq = b * b;
            System.out.printf("N: %d, b^2 = %d \n", j, b_sq);
            n = n >> 1; // y = y/2
            b = b * b; // Change x to x^2
        }
        return x % m;
    }
    
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.printf("Enter the number in the format b^n %% m \n");
		System.out.printf("b: ");
		int b = Integer.parseInt(scan.nextLine());
	    System.out.printf("n: ");
		int n = Integer.parseInt(scan.nextLine());
		System.out.printf("m: ");
		int m = Integer.parseInt(scan.nextLine());
		
		int ans = procedure_modular_exp(b,n,m);
		
		System.out.printf("%d^%d %% %d = %d",b, n, m, ans);
	}
}

