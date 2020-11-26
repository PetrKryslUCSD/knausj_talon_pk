from talon import Context, Module, actions, app, ui

# The primitive multiplier words in English below a hundred.
multiplier_words = {
    0: "times zero",
    1: "times one",
    2: "times two",
    3: "times three",
    4: "times four",
    5: "times five",
    6: "times six",
    7: "times seven",
    8: "times eight",
    9: "times nine",
    10: "times ten",
    11: "times eleven",
    12: "times twelve",
    13: "times thirteen",
    14: "times fourteen",
    15: "times fifteen",
    16: "times sixteen",
    17: "times seventeen",
    18: "times eighteen",
    19: "times nineteen",
    20: "times twenty",
    30: "times thirty",
    40: "times forty",
    50: "times fifty",
    60: "times sixty",
    70: "times seventy",
    80: "times eighty",
    90: "times ninety",
}
tens_words = "zero ten twenty thirty forty fifty sixty seventy eighty ninety".split()

# dictionaries map multiplier words into their corresponding numbers.
multiplier_numbers = {}
multiplier_small = {}
for n in range(1, 100):
    if n in multiplier_words:
        word = multiplier_words[n]
        if n <= 20:
            multiplier_small[word] = n
        multiplier_numbers[word] = n


mod = Module()
ctx = Context()
mod.list("multipliers", desc="list of multipliers")
mod.list("multipliers_small", desc="list of multipliers small (1-20)")

ctx.lists["self.multipliers"] = multiplier_numbers.keys()
ctx.lists["self.multipliers_small"] = multiplier_small.keys()


@mod.capture(rule="{self.multipliers}")
def multipliers(m) -> int:
    """Returns a single ordinal as a digit"""
    return int(multiplier_numbers[m[0]])


@mod.capture(rule="{self.multipliers_small}")
def multipliers_small(m) -> int:
    """Returns a single ordinal as a digit"""
    return int(multiplier_numbers[m[0]])
