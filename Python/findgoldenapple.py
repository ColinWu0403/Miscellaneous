import random

a, b = None, None

def Partition(arr, l, r):
    lst = arr[r]
    i = l
    j = l
    while (j < r):
        if (arr[j] < lst):
            arr[i], arr[j] = arr[j], arr[i]
            i += 1
        j += 1
    arr[i], arr[r] = arr[r], arr[i]
    # print(f"Partition Result: {arr[l:i]} | {arr[i]} | {arr[i+1:r+1]}")
    return i

def randomPartition(arr, l, r):
    n = r - l + 1
    pivot = random.randrange(1, 100) % n
    arr[l + pivot], arr[r] = arr[r], arr[l + pivot]
    return Partition(arr, l, r)

def MedianUtil(arr, l, r, k, a1, b1):
    global a, b
    if l <= r:
        partitionIndex = randomPartition(arr, l, r)
        if partitionIndex == k:
            b = arr[partitionIndex]
            if a1 != -1:
                return
        if partitionIndex >= k:
            # for i in range(l, partitionIndex):
            #     print(f"Comparison: {arr[i]} < {arr[partitionIndex]}")
            # for i in range(partitionIndex, r):
            #     print(f"Comparison: {arr[i]} > {arr[partitionIndex]}")
            # for i in range(l, partitionIndex):
            #     print(f"Swap: {arr[i]} <-> {arr[partitionIndex]}")
            #     arr[i], arr[partitionIndex] = arr[partitionIndex], arr[i]
            print(f"Partition Result: {arr[l:partitionIndex+1]} | {arr[partitionIndex]} | {arr[partitionIndex+1:r+1]}")
            print(f"Array: {arr}\n")
            return MedianUtil(arr, l, partitionIndex - 1, k, a, b)
        else:
            # for i in range(partitionIndex + 1, r):
            #     print(f"Comparison: {arr[i]} > {arr[partitionIndex]}")
            # for i in range(l, partitionIndex + 1):
            #     print(f"Comparison: {arr[i]} < {arr[partitionIndex]}")
            # for i in range(partitionIndex + 1, r):
            #     print(f"Swap: {arr[i]} <-> {arr[partitionIndex]}")
            #     arr[i], arr[partitionIndex] = arr[partitionIndex], arr[i]
            print(f"Partition Result: {arr[l:partitionIndex+1]} | {arr[partitionIndex]} | {arr[partitionIndex+1:r+1]}")
            print(f"Array: {arr}\n")
            return MedianUtil(arr, partitionIndex + 1, r, k, a, b)

a = -1
b = -1

def findGoldenApple(arr, n):
    global a, b
    a = -1
    b = -1
    if (n % 2 == 1):
        MedianUtil(arr, 0, n - 1, n // 2, a, b)
        ans = b
    
    print("Median =", ans)
    return ans

arr = [38, 12, 31, 1, 34, 15, 11, 48, 24, 23, 3, 47, 4, 32, 35]
print(f"Array: {arr}\n")
n = len(arr)

findGoldenApple(arr, n)

