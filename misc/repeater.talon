# -1 because we are repeating, so the initial command counts as one
<user.multipliers>: core.repeat_command(multipliers-1)
(repeat that|twice): core.repeat_command(1)
repeat that <number_small> [times]: core.repeat_command(number_small)
