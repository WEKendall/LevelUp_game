from levelup.controller import DEFAULT_CHARACTER_NAME
from levelup.position import Position

class GameStatus():

    running: bool = False
    character_name: str = DEFAULT_CHARACTER_NAME
    current_position: Position = (0,0)
    move_count: int = 42




