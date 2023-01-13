def minimum_change(string):
    string=string.upper()
    count=1
    for i in string:
        x=string.count(i)
        if x>count:
            count=x 
    minimum_count=len(string)-count        
    print(minimum_count)  
minimum_change("ABCDA")  
minimum_change("BBBX")