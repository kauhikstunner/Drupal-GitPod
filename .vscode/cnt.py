def convertNtA(number):
    return list(map(int,str(number)[::-1]))
print(convertNtA(3452))