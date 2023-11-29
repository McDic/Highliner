# Parameters: $(textnbt)
# Store resolutionized text component in storage.
$data modify entity @s text set value '$(textnbt)'
data modify storage highliner:temp_storage translated_text set from entity @s text
kill @s
