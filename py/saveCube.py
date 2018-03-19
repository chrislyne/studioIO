import maya.cmds as cmds

def saveCube():
    cmds.polyCube(w=1,h=1,d=1,sx=1,sy=1,sz=1,cuv=4,ch=1)
    cmds.file(rename='cube')
    cmds.file( save=True )