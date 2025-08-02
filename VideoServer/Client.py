import dearpygui.dearpygui as dpg
from PIL import Image
import os, requests, re
os.chdir(os.path.dirname(__file__))
# Inital setup
url_regex = r"[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)" #https://stackoverflow.com/questions/3809401/what-is-a-good-regular-expression-to-match-a-url
ip_regex = r"^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$" #https://stackoverflow.com/questions/5284147/validating-ipv4-addresses-with-regexp
if not os.path.exists("Frame.jpg"):
    img = Image.new("RGB", (640, 480), color="white")
    img.save("Frame.jpg")

# Window and Runtime
dpg.create_context()

width, height, channels, data = dpg.load_image("Frame.jpg")
with dpg.texture_registry(show=True):
    dpg.add_dynamic_texture(width=width, height=height, default_value=data, tag="framebuffer")
def load_texture():
    width, height, channels, data = dpg.load_image("Frame.jpg")
    dpg.set_value("framebuffer", data)


load_texture()

def join_route(Server, route):
    return os.path.join("http://", Server, route).replace("\\","/")

def onPingServer():
    Server =  dpg.get_value(ServerInput)
    ip_result = re.match(ip_regex, Server)
    url_result = re.match(url_regex, Server)
    print(ip_result, url_result)
    if ip_result or url_result:
        resp = requests.post(join_route(Server, "ping"))
            

    

with dpg.window(tag="Primary Window"):
    dpg.add_image("framebuffer")
    with dpg.group(horizontal=True):
        dpg.add_text("Server:")
        ServerInput = dpg.add_input_text(tag="Server",width=100)
        dpg.add_button(label="Ping Server", callback=load_texture)
        
while dpg.is_dearpygui_running():
    # insert here any code you would like to run in the render loop
    # you can manually stop by using stop_dearpygui()
    load_texture()
    dpg.render_dearpygui_frame()


dpg.create_viewport(title='Internet RC Cam', width=640, height=680)
dpg.setup_dearpygui()
dpg.show_viewport()
dpg.set_primary_window("Primary Window", True)
dpg.start_dearpygui()
dpg.destroy_context()
