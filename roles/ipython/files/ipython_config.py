# This file should be in ~/.ipython/profile_default/ipython_config.py
c = get_config()

# Auto reload modules when changed
# Ref: http://stackoverflow.com/questions/5364050
c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
