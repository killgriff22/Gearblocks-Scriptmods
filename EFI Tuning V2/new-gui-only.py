import tkinter as tk
root = tk.Tk()

app = tk.Frame(root)
app.grid()
menu = tk.Menu(root)
root.config(menu=menu)
filemenu = tk.Menu(menu)
menu.add_cascade(label='File', menu=filemenu)
filemenu.add_command(label='New Project')
filemenu.add_command(label='Open Project...')
filemenu.add_command(label='Save Project...')
filemenu.add_command(label='Save Project as...')
filemenu.add_separator()
filemenu.add_command(label='Exit', command=root.quit)
helpmenu = tk.Menu(menu)
menu.add_cascade(label='Help', menu=helpmenu)
helpmenu.add_command(label='About')
tabs = []

class Tab:
    def __init__(self, Name, idx):
        self.Name = Name
        self.Index = idx
        self.content = tk.Frame(app)
        self.Active = False
    def destroy(self):
        self.content.destroy()
        self.content = tk.Frame(app)

class MainMenu(Tab):
    def __init__(self, Name, idx, projectpath=None):
        super().__init__(Name, idx)
        if not projectpath:
            self.ProjectName = "None"
            self.Maps = []
            self.LogicPaths = []
    def draw_content(self):
        self.content.grid()
        self.ProjectLabel = tk.Label(self.content, text=f"Project: {self.ProjectName}", anchor=tk.W)
        self.MapsLabel = tk.Label(self.content, text=f"Maps: {len(self.Maps)}", anchor=tk.W)
        self.ProjectLabel.grid(row=0)
        self.MapsLabel.grid(row=1)
tabs.append(MainMenu("Main", len(tabs)))
tabs[0].draw_content()
root.mainloop()