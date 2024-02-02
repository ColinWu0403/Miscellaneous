import java.util.LinkedList;
import java.util.Queue;

public class BFS {
    private int V; // Number of vertices
    private LinkedList<Integer>[] adjacencyList;

    public BFS(int vertices) {
        V = vertices;
        adjacencyList = new LinkedList[vertices];
        for (int i = 0; i < vertices; i++) {
            adjacencyList[i] = new LinkedList<>();
        }
    }

    public void addEdge(int from, int to) {
        adjacencyList[from].add(to);
    }

    public void breadthFirstSearch() {
        boolean[] visited = new boolean[V];
        Queue<Integer> queue = new LinkedList<>();

        visited[0] = true; // Mark the source vertex as visited
        queue.add(0); // Add the source vertex to the queue

        while (!queue.isEmpty()) {
            int vertex = queue.poll();
            System.out.print(vertex + " ");

            for (Integer neighbor : adjacencyList[vertex]) {
                if (!visited[neighbor]) {
                    visited[neighbor] = true;
                    queue.add(neighbor);
                }
            }
        }
    }

    public static void main(String[] args) {
        BFS graph = new BFS(8);
        graph.addEdge(0, 1);
        graph.addEdge(0, 2);
        graph.addEdge(1, 4);
        graph.addEdge(2, 3);
        graph.addEdge(2, 5);
        graph.addEdge(3, 6);
        graph.addEdge(4, 7);
        graph.addEdge(5, 7);
        graph.addEdge(7, 1);

        System.out.println("Breadth-First Search (Starting from vertex 0):");
        graph.breadthFirstSearch();
    }
}
