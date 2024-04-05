import datetime
import unittest

from starship_greeting import greeting

# https://urduesl.com/parts-of-the-day
class GreetingTestCase(unittest.TestCase):
    def test_greeting_morning(self):
        expected_greeting = "Good morning ⛅! It's Thursday 📅04/04/24 🕙09:00:00"
        self.assertEqual(greeting(datetime.datetime(2024, 4, 4, 9, 0, 0)), expected_greeting)

    def test_greeting_afternoon(self):
        expected_greeting = "Good afternoon ☀️! It's Thursday 📅04/04/24 🕙15:00:00"
        self.assertEqual(greeting(datetime.datetime(2024, 4, 4, 15, 0, 0)), expected_greeting)

    def test_greeting_evening(self):
        expected_greeting = "Good evening 🌚! It's Thursday 📅04/04/24 🕙20:00:00"
        self.assertEqual(greeting(datetime.datetime(2024, 4, 4, 20, 0, 0)), expected_greeting)

if __name__ == "__main__":
    unittest.main()
