class Position ():
#This establishes and initializes the position class

    x = -100
    y = -100

    def __init__(self, x: int, y: int):
        self.x = x
        self.y = y
        
    # I didn't know why this was here
    # def __eq__(self, obj):
    #    if self.x == obj.x and self.y == obj.y:
    #        return True
    #    else:
    #        return False