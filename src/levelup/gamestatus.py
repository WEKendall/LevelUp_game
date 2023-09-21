
class GameStatus():

    DEFAULT_CHARACTER_NAME = "Character"

    running: bool = False
    character_name: str = "Bob the Builder"
    current_position: tuple = (-100,-100)
    move_count: int = 42

#def __init__(self):
#        self.character_name = "Bob the Builder"
#        self.current_position = tuple ((3,4))
#       self.move_count = 42