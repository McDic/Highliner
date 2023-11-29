# Parameters: $(item_name) $(textnbt) $(slot)
# Inner function of textize. This does not call any entity inside.

$item replace entity @s $(slot) with $(item_name){display: {Name: '$(textnbt)'}} 1
