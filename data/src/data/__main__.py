import os
import re

def readfile(path: str):
    with open(f"assets/{path}", "r") as f:
        try:
            replaced, _ = re.subn(r"[^a-zA-Z]", r" ", f.read())
            return replaced
        except Exception:
            return ""


with open("input.txt", "w") as f:
    for path in os.listdir("assets"):
        try:
            f.write(f"{readfile(path)}\n")
        except Exception:
            pass