from random import randint
import math, os, random, time, pygame, platform
os.chdir(os.path.dirname(os.path.abspath(__file__)))
pygame.init()
pygame.font.init()
pygame.display.set_caption("EFI Tuning GUI")
font = pygame.font.SysFont("Arial", 24)
clock = pygame.time.Clock()
fps = 240
def rotate(origin, point, angle):
    """
    Rotate a point counterclockwise by a given angle around a given origin.

    The angle should be given in radians.
    """
    ox, oy = origin
    px, py = point

    qx = ox + math.cos(angle) * (px - ox) - math.sin(angle) * (py - oy)
    qy = oy + math.sin(angle) * (px - ox) + math.cos(angle) * (py - oy)
    return qx, qy

def popup(msg, user = "*"):
    plat = platform.system()
    if plat.lower() == "windows":
        os.system(f'msg {user} "{msg}"')
    else:
        print(msg)