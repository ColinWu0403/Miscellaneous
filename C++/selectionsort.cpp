#include <iostream>

int main()
{

    int size = 7, arr[] = {7,6,5,4,3,2,1};
    int i, j, temp;
    int comparison = 0;
    int swaps = 0;

    std::cout << "Unsorted: ";
    for (i = 0; i < size; i++)
    {
        std::cout << arr[i] << " ";
    }

    std::cout << "\n";

    for (i = 0; i < size; i++)
    {
        for (j = i + 1; j < size; j++)
        {
            comparison = comparison + 1;
            if (arr[i] > arr[j])
            {
                swaps = swaps + 1;
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    std::cout << "\nComparisons: " << comparison;
    std::cout << "\nSwap: " << swaps;

    std::cout << "\n\nSorted: ";
    for (i = 0; i < size; i++)
    {
        std::cout << arr[i] << " ";
    }
    
    return 0;
}
