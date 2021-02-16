from talon import ctrl, ui, Module, Context, actions, clip, app
import subprocess
import time

ctx = Context()
mod = Module()

is_holding = False

def keyup(keys):
    for key in keys:
        subprocess.call(["xdotool", "keyup", key])

DIRECTION_KEYS = ["Up", "Down", "Left", "Right"]
ALL_KEYS = DIRECTION_KEYS + ["b"]

@mod.action_class
class module_actions:
    def mgba_press(key: str):
        """ hello """
        keyup(DIRECTION_KEYS)

        global is_holding

        subprocess.call(["xdotool", "keydown", key])
        if not is_holding:
            time.sleep(0.1)
            subprocess.call(["xdotool", "keyup", key])

    def mgba_start_hold():
        """ hello """
        global is_holding
        is_holding = True

    def mgba_stop():
        """ hello """
        keyup(ALL_KEYS)
        global is_holding
        is_holding = False
