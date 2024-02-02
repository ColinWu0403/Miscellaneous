def countInversions(arr):
    if len(arr) <= 1:
        return 0, arr
    
    mid = len(arr) // 2
    left_half = arr[:mid]
    right_half = arr[mid:]

    # Recursively count inversions in left and right halves
    left_inversions, left_half = countInversions(left_half)
    right_inversions, right_half = countInversions(right_half)

    merged_inversions, merged_arr = mergeAndCount(left_half, right_half)
    
    total_inversions = left_inversions + right_inversions + merged_inversions
    
    return total_inversions, merged_arr

def mergeAndCount(left_arr, right_arr):
    merged_arr = []
    inversions = 0
    i = j = 0

    while i < len(left_arr) and j < len(right_arr):
        if left_arr[i] <= right_arr[j]:
            merged_arr.append(left_arr[i])
            i += 1
        else:
            # If left_arr[i] > right_arr[j], it forms inversions with all remaining elements in the left_arr
            merged_arr.append(right_arr[j])
            j += 1
            inversions += len(left_arr) - i
    
    # Append remaining elements, if any
    merged_arr.extend(left_arr[i:])
    merged_arr.extend(right_arr[j:])
    
    return inversions, merged_arr

arr = [8, 7, 6, 5, 4, 3, 2, 1]
inversions, _ = countInversions(arr)
print("Number of inversions:", inversions)


