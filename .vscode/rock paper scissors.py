def rock_paper_scissors(input1,input2):
    if input1==input2:
        print("Draw")
    elif (input1=="rock") and (input2=="scissors"):
        print("player 1 win")
    elif (input1=="rock") and (input2=="scissors"):
        print("player 1 win")
    elif (input1=="rock") and (input2=="paper"):
        print("Player 2 win")
    elif (input1=="paper") and (input2=="rock"):
        print("Player 1 win")
    elif (input1=="scissors") and (input2=="paper"):
        print("player 1 win")
    else:
        print("player 2 win")
            
rock_paper_scissors("rock","paper")   