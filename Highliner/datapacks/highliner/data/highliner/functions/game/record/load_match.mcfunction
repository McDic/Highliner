function highliner:game/record/init
$data modify storage highliner:current_match diffs set from storage highliner:saved_matches matches[$(index)].diffs
$data modify storage highliner:current_match settings set from storage highliner:saved_matches matches[$(index)].settings
