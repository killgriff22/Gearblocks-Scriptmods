from utils import *
from GUIMan import *
from Hook import Gearblocks
a_min = 0
a_max = 8000
mod_up = 50
mod_down = -100
mod = mod_up
a=0
window = Window(size=(800, 600), title="EFI Tuning GUI")
window.add_gauge((100, 100), a_min, a_max, a)
gauge = len(window.surfs) - 1  # Get the index of the gauge we just added
window.add_surf(pygame.Surface((150,50)), (0, 400))  # Add a surface to the window
connect_button = len(window.surfs) - 1  # Get the index of the button we just added
 # random id for the connection check 
window.add_surf(pygame.Surface((150,50)), (160, 400))  # Add a surface to the window
select_part_button = len(window.surfs) - 1  # Get the index of the button we just added
Gearblocks.selecting_part = False # if we are selecting a part
window.surfs[select_part_button][0].fill((0, 0, 255))  # Fill the button with red
Gearblocks = Gearblocks()  # Create the hook into the game
while True:
    if Gearblocks.connected:
        window.surfs[connect_button][0].fill((0, 255, 0))  # Fill the button with green if connection succeeds
    else:
        window.surfs[connect_button][0].fill((255, 0, 0))  # Fill the button with red if connection fails
    events = pygame.event.get()
    #Gearblocks.update(events, globals())  # Update the Gearblocks instance
    for event in events:
        #quit
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()
        if event.type == pygame.KEYDOWN:
            #quit again
            if event.key == pygame.K_ESCAPE:
                window.quit()
                exit()
    
    window.screen.fill((0, 0, 0))  # Fill the window with black
    if a <= a_min:# Change direction if below min or above max
        mod = mod_up
    elif a >= a_max:
        mod = mod_down
        
    a+=mod  # Increment a, reset if it exceeds max1
    current_fps = int(window.clock.get_fps() // 1)  # Get the current FPS
    weight = .95
    if  current_fps > fps / weight:
        fps = current_fps
    fps_surf = font.render(f"FPS: {current_fps:.2f} a:{a} ref { fps * weight} { fps / weight} {fps} log line {Gearblocks.log_line}", True, (255, 255, 255))
    window.screen.blit(fps_surf, (0, 0))  # Display the FPS in the top-left corner
    window.draw_surfs()  # Draw all surfaces
    window.surfs[gauge][2] = a  # Add a 0 to the surf list to indicate it's a gauge
    window.update_gauges()  # Update the gauge with a value of 50
    pygame.display.flip()  # Update the display
    window.clock.tick(fps)  # Limit the frame rate to 60 FPS