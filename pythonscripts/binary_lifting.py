import typing
from io import StringIO
from pathlib import Path


def write_lifting(file: StringIO, func: typing.Callable[[int], typing.Iterable[str]], handle_until: int):
    now = 1
    while now < handle_until:
        now <<= 1
    while now:
        for command in func(now):
            file.write(command)
            file.write("\n")
        now >>= 1
    file.flush()


def remove_on(x: int, fake_name: str) -> str:
    return "execute if score %s constants matches %d.. run scoreboard players remove %s constants %d" % (fake_name, x, fake_name, x)


def lobby_rotate_speed(x: int):
    return [
        "execute if score !lobby_rotate_temp_speed constants matches %d.. at @s run tp @s ~ ~ ~ ~%f ~" % (x, x/1000),
        remove_on(x, "!lobby_rotate_temp_speed"),
    ]


def lobby_rotate_distancing(x: int):
    return [
        "execute if score !lobby_rotate_temp_distance constants matches %d.. at @s run tp ^ ^ ^%f" % (x, x/1000),
        remove_on(x, "!lobby_rotate_temp_distance"),
    ]


if __name__ == "__main__":
    base_functions_path = Path("Highliner/datapacks/highliner/data/highliner/functions")
    if base_functions_path.exists() and base_functions_path.is_dir():
        with open(base_functions_path / "lobby/refresh_displays/move/binary_lift/rotation.mcfunction", "w") as file1, \
             open(base_functions_path / "lobby/refresh_displays/move/binary_lift/distancing.mcfunction", "w") as file2:
            write_lifting(file1, lobby_rotate_speed, 99999)
            write_lifting(file2, lobby_rotate_distancing, 99999)
