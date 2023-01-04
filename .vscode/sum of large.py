def sum_of_two_largest(array):
        
        max1=array[1]
        max2=array[2]
        for i in array:
            if i>max1:
                max2=max1
                max1=i
            elif ((i>max2) and (i!=max1)):
                max2=i 
        total=max1+max2
        return (total)
print (sum_of_two_largest([5,10,50,80,90]))