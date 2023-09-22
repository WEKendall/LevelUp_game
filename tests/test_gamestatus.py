from unittest import TestCase
from levelup.gamestatus import GameStatus
from levelup.controller import DEFAULT_CHARACTER_NAME
from levelup.position import Position


class TestGameStatusInit(TestCase):
    def test_init(self):
        ARBITRARY_NAME = DEFAULT_CHARACTER_NAME
        ARBITRARY_position: Position = (0,0)
        ARBITRARY_MoveCount = 42
        TestGameStatus = GameStatus()
        self.assertEqual(ARBITRARY_MoveCount, TestGameStatus.move_count, "The move counts match")
        self.assertEqual(ARBITRARY_NAME, TestGameStatus.character_name)
        self.assertEqual(ARBITRARY_position, TestGameStatus.current_position)

