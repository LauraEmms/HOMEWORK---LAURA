import unittest
from laura_foundation_exam import is_isogram, IncorrectInput

class TestIsogramFunctionIsTrue(unittest.TestCase):
    # testing that inputed string that is an isogram returns as true
    def test_add_string_true(self):
        self.assertEqual(True, ("Ho"))

    # Testing that inputed string that is not an isogram returns as false
    def test_add_string_false(self):
            self.assertEqual(False, ("Hoop"))

    def test_add_string_false(self):
            self.assertEqual(False, ("Peek"))

    # Used to test for invalid input, such as a number being inserted, returning IncorrectInput
    def test_add_invalid_number(self):
        with self.assertRaises(IncorrectInput):
            is_isogram(3)

    # Used to test for invalid input: empty string, returning IncorrectInput
    def test_add_invalid_number(self):
        with self.assertRaises(IncorrectInput):
            is_isogram("")


if __name__ == '__main__':
    unittest.main()
