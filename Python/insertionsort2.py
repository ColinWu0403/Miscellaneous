def insertion_sort(array, k):
    # Sort the first k elements in ascending order using the standard insertion sort algorithm.
    for i in range(1, k):
        current_value = array[i]
        j = i - 1
        while j >= 0 and array[j] > current_value:
            array[j+1] = array[j]
            j = j - 1
        array[j+1] = current_value
    
    # Iterate over the remaining (n - k) elements of the input array.
    for i in range(k, len(array)):
        # If the current element is larger than the smallest element in the sorted list of
        # the k largest elements seen so far, it can replace that element.
        if array[i] > array[0]:
            array[0] = array[i]
            
            # Re-sort the list of the k largest elements using a modified version of the
            # insertion sort algorithm that starts from the second element instead of the first.
            for j in range(1, k):
                current_value = array[j]
                l = j - 1
                while l >= 0 and array[l] > current_value:
                    array[l+1] = array[l]
                    l = l - 1
                array[l+1] = current_value
    
    # Return the sorted list of the k largest elements.
    return array[:k]

def binSearch(A, x):
    left = 1
    right = len(A) - 1
    while left < right:
        m = (left + right)/2
        
        # if x is greater than the middle, ignore the left half
        if A[m] < x:
            left = m + 1
            
        # if x is smaller than the middle, ignore the right half
        elif A[m] > x:
            right = m - 1
            
        # m is found
        else:
            return False
    return False
    
array = [1, 727, 92, -29, 3829, 329, 8,27, 82, 821,283,28,29,3,183,83,64,12,23,44,44]

sorted_arr = insertion_sort(array, 5)

for i in range (0, len(sorted_arr)):
    print(sorted_arr[i])
