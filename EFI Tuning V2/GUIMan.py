from utils import *
gaugeface = None

class Window:
    def __init__(self, size=(800, 600), title="EFI Tuning GUI"):
        global gaugeface
        self.size = size
        self.title = title
        self.screen = pygame.display.set_mode(size)
        gaugeface = pygame.image.load("Gauge.png").convert()
        pygame.display.set_caption(title)
        self.clock = pygame.time.Clock()
        self.running = True
        self.surfs = []
    def quit(self):
        pygame.quit()
    def draw_surfs(self):
        for surf in self.surfs:
            self.screen.blit(surf[0], surf[1])
    def add_surf(self, surf, pos):
        self.surfs.append([surf, pos])
    def add_gauge(self, pos:tuple[int,int], min :int , max : int, val:int=None ):
        if val is None:
            val = min
        surf = pygame.Surface((200, 200), pygame.SRCALPHA)
        surf.blit(gaugeface, (0, 0))
        self.surfs.append([surf, pos, val, min, max, 0])
    def update_gauges(self):
        min = 40
        max = 280
        for surf in self.surfs:
            if surf[-1] == 0:
                _surf = pygame.Surface((200, 200), pygame.SRCALPHA)
                _surf.blit(gaugeface, (0, 0))
                percent = (surf[2] - surf[3]) / (surf[4] - surf[3])
                angle = percent * max + min
                
                pygame.draw.line(_surf, (0,255,0), (100, 100), rotate((100,100),(100,199),math.radians(angle)), 5)
                self.screen.blit(_surf, surf[1])
    def button_collide(self, button, mouse_pos):
        surf = self.surfs[button][0]
        pos = self.surfs[button][1]
        if mouse_pos[0] > pos[0] and mouse_pos[0] < pos[0] + surf.get_width() and mouse_pos[1] > pos[1] and mouse_pos[1] < pos[1] + surf.get_height():
            return True
        return False
                
