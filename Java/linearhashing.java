public class Main {
    private static final int SIZE = 10;
    private long[] table = new long[SIZE];
    private double A = 0.6180;
    private int memoryAccesses = 0; // Counter for memory accesses

    public int getMemoryAccesses() {
        return memoryAccesses;
    }

    public void setMemoryAccesses(int num) {
        this.memoryAccesses = num;
    }
    
    public int hash(long key) {
        double hashValue = 10 * ((key * A) % 1);
        return (int) Math.floor(hashValue);
    }

    public void insert(long key) {
        int index = hash(key);

        while (table[index] != 0) {
            index = (index + 1) % SIZE; // Linear probing
        }

        table[index] = key;
    }

    public void insertWithCounts(long key) {
        int index = hash(key);
        
        while (table[index] != 0) {
            index = (index + 1) % SIZE; // Linear probing
            memoryAccesses++; // Increment memory access count
        }
        table[index] = key;
    }
    
    public void deleteWithCounts(long key) {
        int index = hash(key);
        memoryAccesses++; // Increment memory access count

        while (table[index] != 0) {
            if (table[index] == key) {
                table[index] = 0; // Mark the slot as empty
                memoryAccesses++; // Increment memory access count

                return;
            }

            index = (index + 1) % SIZE; // Linear probing
        }

    }

    public void printTable() {
        StringBuilder horizontalBorder = new StringBuilder("+-");
        for (int i = 0; i < SIZE; i++) {
            horizontalBorder.append("--------+");
        }
        horizontalBorder.append('\n');
        System.out.println(horizontalBorder);

        for (int i = 0; i < SIZE; i++) {
            System.out.printf("| %6d ", table[i]);
        }
        System.out.println("|");
        System.out.println(horizontalBorder);
    }

    public static void main(String[] args) {
        Main hashTable = new Main();

        // Insert some keys
        hashTable.insert(1028);
        hashTable.insert(2308);
        hashTable.insert(5763);
        hashTable.insert(2023);
        hashTable.insert(1953);
        hashTable.insert(6033);
        hashTable.insert(8958);
        hashTable.insert(3408);
        hashTable.insert(6003);


        // You can also insert more keys and print the table to verify the deletion
        System.out.printf("Hash table after initial insertions: \n\n");
        hashTable.printTable();
        
        
        // Delete a key
        hashTable.deleteWithCounts(6033);
        hashTable.deleteWithCounts(5763);
        System.out.printf("Hash table after two deletions: \n\n");
        hashTable.printTable();
        
        System.out.println("Memory accesses during deletions: " + hashTable.getMemoryAccesses());
        
        hashTable.setMemoryAccesses(0);

        hashTable.insertWithCounts(4959);
        hashTable.insertWithCounts(7634);

        System.out.printf("Hash table after the final two insertions: \n\n");
        hashTable.printTable();
        System.out.println("Memory accesses during insertions: " + hashTable.getMemoryAccesses());
    }
}
