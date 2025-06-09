from utils import *

class Gearblocks:
    def __init__(self):
        self.Active = False
        self.locate_install()
        self.instanceID = int(random.random()*10000)//1
        if self.Active:
            self.logpath = os.path.join(self.install_path, "BepInEx", "LogOutput.log")
            self.codepath = os.path.join(self.install_path, "EFI Tuning", "Update.lua")
            self.logfile = None
            self.codefile = None
            self.log_line = 0
        self.connected = False # if we should check the connection
        self.part_select_timer = 0
        self.part_select_timer_max = fps
        self.connection_refresh_max = fps // 2 # frames before we check if the game is still listening
        self.connection_refresh = 0 # frames since we last checked if the game is still listening
        self.check_connection_flag = False 
        self.randid = 0
    def update(self, events, _globals:dict):
        ...
    def locate_install(self):
        for driveletter in range(65, 91):
            print(f"Drive: {chr(driveletter)}")
            drive = chr(driveletter) + ":\\"
            if os.path.exists(drive):
                for root, dirs, files in os.walk(drive):
                    if "GearBlocks" in dirs:
                        self.install_path = os.path.join(root, "Gearblocks")
                        self.install_path = self.install_path
                        print(self.install_path)
                        print(os.path.exists(os.path.join(self.install_path, "BepInEx")))
                        _ = os.listdir(os.path.join(self.install_path, "BepInEx"))
                        if not os.path.exists(os.path.join(self.install_path, "BepInEx")):
                            print(os.path.exists(os.path.join(self.install_path, "BepInEx"))) 
                            popup("BepInEx not found, please install it.")
                            return False
                        else:
                            self.Active = True
                            return True
        popup("Geablocks not found. Starting with no hook.")
        return False
        #raise Exception("Gearblocks installation not found.")
    def get_log(self, lines = 0, start = 0, flip = True):
        if not self.Active:
            return None
        self.logfile = open(self.logpath, "r")
        if not os.path.exists(self.logpath):
            raise Exception("Log file not found.")
        a = self.logfile.readlines()
        self.log_line = len(a)
        if flip:
            b = len(a) - start - lines
            if b < 0:
                b = 0
            a = a[b:]
        else:
            a= self.logfile.readlines()[start:lines+start]
        self.logfile.close()
        self.logfile = None
        return a
    def write_file(self, uid:int, updateCranks:bool = False, updateHeads:bool = False,\
        crankangles:list[int] = [0], MaxVE:list[int] = [0], VERpm:list[int] = [2500], MaxRPM:list[int] = [3000],\
        ExEffect:list[float] = [.5], Lambda:list[float] = [.5], FiringOrder:list[int] = [1], DoublePitch:list[bool] = [False], ):
        if not self.Active:
            return None
        self.codefile = open(self.logpath, "w")
        self.codefile.write(f"""local _ = {"{"+"}"}

_.uid = {uid}
_.UpdateCranks = {str(updateCranks).lower()}
_.UpdateHeads = {str(updateHeads).lower()}


_.crankangles = {"{"}
{"".join(["    "+crankangles[i]+",\n" for i in crankangles])}
{"}"}

_.MaxVE = {"{"}
{"".join(["    "+MaxVE[i]+",\n" for i in MaxVE])}
{"}"}

_.VERpm = {"{"}
{"".join(["    "+VERpm[i]+",\n" for i in VERpm])}
{"}"}

_.MaxRpm = {"{"}
{"".join(["    "+MaxRPM[i]+",\n" for i in MaxRPM])}
{"}"}

_.ExEffect = {"{"}
{"".join(["    "+ExEffect[i]+",\n" for i in ExEffect])}
{"}"}

_.Lambda = {"{"}
{"".join(["    "+str(Lambda[i])+",\n" for i in Lambda])}
{"}"}

_.FiringOrder = {"{"}
{"".join(["    "+str(FiringOrder[i])+",\n" for i in FiringOrder])}
{"}"}

_.DoubleAudioPitch = {"{"}
{"".join(["    "+str(DoublePitch[i]).lower()+",\n" for i in DoublePitch])}
{"}"}


return _""")
        self.codefile.close()
        self.codefile = None


