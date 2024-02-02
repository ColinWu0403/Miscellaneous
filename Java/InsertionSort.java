package src;

public class InsertionSort {

    public static void insertionSort(int[] arr) {
        int n = arr.length;
        for (int i = 1; i < n; i++) {
            int key = arr[i];
            int j = i - 1;

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j--;
            }

            arr[j + 1] = key;

            // Print the current step
            System.out.println("Step " + i + ":");
            printArray(arr);
        }
    }

    public static void printArray(int[] arr) {
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        int[] array = {5, 2, 9, 3, 6};

        System.out.println("Original Array:");
        printArray(array);

        insertionSort(array);

        System.out.println("\nSorted Array:");
        printArray(array);
    }
}
