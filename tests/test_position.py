from unittest import TestCase
from levelup.position import Position


class TestPositionInitWithXY(TestCase):
    def test_init(self):
        ARBITRARY_X = 3
        ARBITRARY_Y = 4
        testPosition = Position(3,4)
        self.assertEqual(ARBITRARY_X, testPosition.x)
        self.assertEqual(ARBITRARY_Y, testPosition.y)