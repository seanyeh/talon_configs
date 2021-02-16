app: mGBA
-

start: user.mgba_press("Return")
select: user.mgba_press("BackSpace")
air: user.mgba_press("a")
back: user.mgba_press("b")
up: user.mgba_press("Up")
down: user.mgba_press("Down")
left: user.mgba_press("Left")
right: user.mgba_press("Right")
walk: user.mgba_start_hold()
run:
    user.mgba_start_hold()
    user.mgba_press("b")
stop: user.mgba_stop()
