from talon import Context, actions, Module
from typing import List, Union

import subprocess

ctx = Context()
mod = Module()

ctx.matches = r"""
tag: terminal
"""

def vim_helper(args):
    try:
        output = subprocess.check_output(["vim_helper", "remote"] + args)
        return output.decode("utf-8").strip()
    except:
        return ""

def vim_helper_expr(expr):
    return vim_helper(["--remote-expr", expr])

def vim_helper_send(keys):
    # TODO: Fall back to normal keys
    return vim_helper(["--remote-send", keys])

def vim_get_mode():
    mode = vim_helper_expr("mode()")

    if mode[0] == "i":
        return "insert"
    elif mode[0] == "n":
        return "normal"

    return "other"

def vim_set_mode(mode):
    actions.key("esc")

    if mode == "normal":
        actions.key("esc")
    elif mode == "insert":
        actions.key("a")

@ctx.action_class("win")
class win_actions:
    def filename():
        return vim_helper_expr("bufname()")

    def file_ext():
        return actions.win.filename().split(".")[-1]


@mod.action_class
class module_actions:
    def run_normal_smart(s: str):
        """ Enter command and normal mode and return to previous mode """
        mode = vim_get_mode()

        actions.user.run_normal(s)

        # Return to initial mode
        vim_set_mode(mode)

    def run_normal(s: str):
        """ Enter command in normal mode """
        vim_set_mode("normal")
        vim_helper_send(s)
