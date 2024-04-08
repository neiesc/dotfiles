#! /usr/bin/env python3
# This script will be used by Starship to display a greeting message

import datetime

def greeting(current_time):
    """
    Generates a greeting message based on the current time.

    Args:
        current_time (datetime): The current time.

    Returns:
        str: The greeting message.

    """
    part_of_day = "evening 🌚"
    if current_time.hour < 12:
        part_of_day = "morning ⛅"
    elif current_time.hour < 18:
        part_of_day = "afternoon ☀️"

    return current_time.strftime(f'Good {part_of_day}! It\'s %A 📅%x 🕙%H:%M:%S')

if __name__ == "__main__":
    print(greeting(datetime.datetime.now()))