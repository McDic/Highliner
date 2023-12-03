# Highliner

This repository contains data pack and resource pack for the Minecraft Map *"Highliner"*.

## Directory structure

```
- Highliner (World folder)
    - datapacks
        - highliner (Data pack folder)
- HighlinerResourcePack (Resourcepack folder)
- bdstudio (BDstudio project files)
- pythonscripts (Some python files that automatically generates `.mcfunction` files)
```

## Administration Guideline

Every behaviour should be executed by an atomic operation to ensure map safety.
Please do not directly modify any settings without calling a function, which will most likely make a bug.
Whenever the critical bug happens, you can always do `/reload` to forcibly reset everything.

### How to lock/unlock the lobby

Basically, activating a lobby lock is toggling a tag with some additional processing.
After you are given a lock, you will still be able to interact with the lobby.
However, if you leave the game and rejoin, your lobby lock will be released.

- `/function highliner:admin/toggle_lobby_lock`

### How to make specific players to join teams

You can assign whoever you want to both red and blue teams.
However, this works on only either idle mode or replay mode.

- `/function highliner:admin/assign_redblue {red: "PLAYER_NAME1", blue: "PLAYER_NAME2"}`

### (For devs) Data storage regarding replay saves

`highliner:saved_matches` will save all matches. `highliner:current_match` contains all information of the current match.
`highliner:saved_matches` will reset on every reload, so if you want to save this, you have to backup this by your own.
The following is the structure of `highliner:saved_matches`.

```jsonc
{
    // Each entry of this list represents a match.
    matches: [
        {
            // Each entry of this list represents a difference between each two adjacent turns.
            diffs: [
                {
                    timer_red: int, // Red timer after this move
                    timer_blue: int, // Blue timer after this move
                    is_red_placed: bool, // Did red placed this?
                    placing_direction: int, // (1 = X or -1 = Z or 0 = SKIPPED)
                    x: double, // Placed X coordination
                    z: double, // Placed Z coordination
                    state_changes: [ // List of all tile changes.
                        {
                            x: double, // Tile's X
                            z: double, // Tile's Z
                            before_state: int, // (0~6, current tile state)
                            after_state: int // (0~6, after tile state)
                        },
                        // ...
                    ]
                },
                // ...
            ],
            // Saved settings for this match. Not all settings are saved.
            settings: {
                disable_x22: bool
            },
            // Represents an unique ID of this match, where each element is an integer on range [0, 1e6).
            match_id: [0, 0, 0, 0]
        },
        // ...
    ]
}
```

## Changelog

### Highliner 2.1 (REMASTERED)

- Completely remastered(remade map) from scratch.
- Changed entire lobby
- Introduced new tutorial
- Upgraded Minecraft version
- Removed 2nd turn player's advantage
- Changed turn/score display into actionbar from blocks 
- Changed timer display into xp bar from blocks
- Remastered game options; Especially toggling 2x2 rules

### Highliner 2.2 (1.20 COMPATIBILITY)

- Made compatibility on the recent Minecraft version(1.20.2)
- Applied some simple optimization patches to reduce entity spamming to improve experiences with users in bad networking environment.
- Updated the resourcepack to the latest version.
- Added confirmation on surrender.
- Added new tester heads on lobby.
- Reduced title text duration in the tutorial.
- Added "Reset Everything" in lobby, in case for some users who want to restore default settings.
- Added new cold game condition (game ends automatically if more than half of tiles are dominated by one user) to prevent the situation where the new placing isn't available anymore.
- Improved tutorial grammar (Helped by Grammarly)
- Fixed map disappearing after the tutorial.
- Added session keeping during the game, which means you can continue the game even if one of the two players accidentially disconnected and rejoined the game.
- Fixed minor bugs on score displaying when game is finished.

### Highliner 2.3 (MULTIPLAYER STABILITY)

- Fixed multiplayer stability issue; Added new handling logic when player immediately disconnects after tile placing
- You receive surrender item regardless of who's turn is active now; Because the active player can left the game and never come back, you shouldn't wait a long time
- Added new tester heads in lobby
- Fixed minor bugs
    - You receive a map on offhand when game ends normally
    - Blue score (bossbar) is now working properly
    - Fixed item clears on some rare random situations

### Highliner 2.4 (LOCALIZATION)

- Added localizations for English and Korean languages
- Added option to set first player to be either red team, blue team, or random.
- Added functions to lock/unlock the lobby, this should not affect the Realms because this is only possible with OP permissions
- The fastest game speed option became faster than before. (120s / 5s -> 60s / 5s)
- The max turn setting is expanded to 90~240 turns from 90~180 turns
- Added an easter egg; You will get levitation when you stand on the top of the lobby and look straight up
- Minor performance improvements
- Added playsound when game starts
- You will get a URL to my blog when you right-click at "Map Maker McDic" wall sign.
- Now surrender item is not given on lobby. (Previously you were able to get surrender item after you join any team and drop map item in lobby)

### Highliner 2.5 (PERFORMANCE BOOST)

- Added minor stability patch on lobby sign triggering
- Boosted performance a LOT; Now most of state searching are involving blocks instead of entities, which reduces use of 800+ entities in real time. Also removed some redundant checking. I completely rewrited so many parts of core board logics for this.
- Minor translation fixes
- Now easter egg exploding sound is played on self player only
- Blitz (the fastest game) gamespeed has changed to 90s / 5s from 60s / 5s.
- Bossbar for timer now have scalable segments, visible to everyone, and automatically sorted by a main turn player.
- Changed default game speed to be 180s / 10s.
- Fix minor text bug on one of cold game conditions.
- Now current game settings are displayed when game starts, to avoid a doubt.
- Added a tile theme option. If you change this, the tile blocks are changed.
- Bridge preview is now supported.
- Improved tutorial even better; Now contains visualizations for more cases.

### Highliner 2.6 (REPLAY)

- Added new playsound on some situations like placing failure and lobby interaction.
- Added replay mode; Now you can replay the latest match, and start the game again in exactly same game state. (Possibly with some different settings)
- Completely reworked on lobby; Now the lobby uses display and interaction entities.
- Reworked on admin functions like lobby locking. (This should not affect Realms)
- Added instant placing mode.

### Highliner 2.7 (ADVANCEMENTS)

- Added advancements.
- Many minor lobby reworks and stability patches.
