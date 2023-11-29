# Parameters: $(item_name) $(textnbt) $(slot)
# Replace 1 item to self entity.

data modify storage highliner:temp_storage temp_args set value {}
$execute summon minecraft:text_display run function highliner:utils/translate_text {"textnbt": '$(textnbt)'}
data modify storage highliner:temp_storage temp_args.textnbt set from storage highliner:temp_storage translated_text
$data modify storage highliner:temp_storage temp_args.item_name set value "$(item_name)"
$data modify storage highliner:temp_storage temp_args.slot set value "$(slot)"
function highliner:game/items/textize_inner with storage highliner:temp_storage temp_args
