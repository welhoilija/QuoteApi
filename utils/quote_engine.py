import json
from random import randrange


def get_random_quote():
    f = open("utils/quotes.json", "r")
    quotes = json.load(f)
    random_number = randrange(len(quotes["quotes"]))
    return quotes["quotes"][random_number]
