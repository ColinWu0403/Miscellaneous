def insertionsort(array):
    swapsmade = 0
    checksmade = 0
    for f in range(len(array)):
        value = array[f]
        valueindex = f
        checksmade += 1
        # moving the value
        while valueindex > 0 and value < array[valueindex-1]:
            array[valueindex] = array[valueindex-1]
            valueindex -= 1
            checksmade += 1
            swapsmade += 1 #  Move inside the while loop
            
        array[valueindex] = value
        
    swapsnchecks = "{} swaps were made. {} checks were made.".format(swapsmade, checksmade)
    print(array)
    return swapsnchecks

array = [5,4,3,2,1]
print(insertionsort(array))

