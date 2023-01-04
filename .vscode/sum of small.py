def sum_of_two_smallest(array):
        min1=array[1]
        min2=array[2]
        for i in array:
            if i<min1:
                min2=min1
                min1=i
            elif ((i<min2) and (i!=min1)):
                min2=i 
        total=min1+min2
        return (total)
print (sum_of_two_smallest([20,12,4,6]))