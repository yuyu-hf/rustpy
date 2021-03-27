import rustpy
import unittest

class TestFunc(unittest.TestCase):
    def test_add(self):
        x1 = 5
        x2 = 10
        self.assertEqual(x1+x2, rustpy.add(x1, x2))
