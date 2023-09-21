from unittest import TestCase
from levelup.gamestatus import GameStatus


class TestGameStatusInit(TestCase):
    def test_init(self):
        ARBITRARY_NAME = "Bob the Builder"
        ARBITRARY_point = tuple((-100, -100))
        ARBITRARY_MoveCount = 42
        TestGameStatus = GameStatus()
        self.assertEqual(ARBITRARY_point, TestGameStatus.current_position)
        self.assertEqual(ARBITRARY_MoveCount, TestGameStatus.move_count, "The move counts match")
        self.assertEqual(ARBITRARY_NAME, TestGameStatus.character_name)
