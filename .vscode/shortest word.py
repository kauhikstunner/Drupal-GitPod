def shortest_word(string):
    string=string.split()
    length=len(string[0])
    for i in string:
        if len(i)<length:
            length=len(i)
    return (length)        
print(shortest_word("lets all go on holiday somewhere cold")) 