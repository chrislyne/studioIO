import os
import maya.cmds as cmds
#get file path
def path():
    fl = cmds.renderSettings(firstImageName=True)
    
    folderParts = fl[0].split("/")
    folderParts = folderParts[:-1]
    folderPath = "/".join(folderParts)
    print folderPath
    return folderPath

#get file name
def name():
    fl = cmds.renderSettings(firstImageName=True)
    folderParts = fl[0].split("/")
    fileParts = folderParts[-1].split(".")
    return fileParts[0]

#get current render layer
def layer():
    currentLayer = cmds.editRenderLayerGlobals( query=True, currentRenderLayer=True )
    if currentLayer == "defaultRenderLayer":
        currentLayer = "masterLayer"
    return currentLayer

#return file format as string
def fileFormat(AOVname):
    formats = ["iff", "exr", "png", "tga", "jpg", "tif"]
    AOVFormat = cmds.getAttr(AOVname+'.fileFormat')
    return formats[AOVFormat]
    
#work out AOV path from shorthand
def AOVPath(AOVname):
    #get raw aov prefix
    AOVfilePrefix = cmds.getAttr(AOVname+'.filePrefix')
    AOVname = cmds.getAttr(AOVname+'.name')
    #replace strings
    replaceBP = AOVfilePrefix.replace("<BeautyPath>", "")
    replaceBF = replaceBP.replace("<BeautyFile>", name())
    replaceRP = replaceBF.replace("<RenderPass>", AOVname)
    
    return replaceRP

#get frame number as a string
def RenderFrameString():
    #find cuurent frame as string
    renderFrame = cmds.currentTime( query=True )
    
    renumberFrames = cmds.getAttr ("defaultRenderGlobals.modifyExtension");
    if renumberFrames == 1:
        startNumber = cmds.getAttr ("defaultRenderGlobals.startExtension");
        renderFrame += startNumber
    #make string
    renderFrameStr = str(renderFrame)
    #remove decimal
    renderFrameStr = renderFrameStr.split('.')
    renderFrameStr = renderFrameStr[0]
    #correct padding
    padding = cmds.getAttr ("defaultRenderGlobals.extensionPadding")
    
    for num in range(0,padding):
        if len(renderFrameStr) < padding:
            renderFrameStr = "0"+renderFrameStr
    return renderFrameStr

def RS_AOVView():
    ### REDSHIFT AOV VIEWER ### Chris Lyne - 2016
    
    ##SETUP
    #import sys
    #sys.path.append('Z:/Job_3/System/Deployment/mel')

    ##SHELF
    #import RS_AOVView
    #reload(RS_AOVView)
    #RS_AOVView.RS_AOVView()

    ##BUGS
    # Doesn't work with negatives
    
    
    renderFrameStr = RenderFrameString()
    
    #find file paths
    imageRGB = cmds.renderSettings(fpt=True, gin=renderFrameStr)
    imageString = str(unicode(imageRGB[0]))
    basePath = imageString.split('/')
    fullFilename = basePath[len(basePath)-1]
    fullFilenameSplit = fullFilename.split('.')
    fileName = fullFilenameSplit[0]
    fileNumber = ""
    if cmds.getAttr("defaultRenderGlobals.animation") == 1:
        fileNumber = "."+renderFrameStr
    fileExtention = fullFilenameSplit[len(fullFilenameSplit)-1]
    basePath.remove(basePath[len(basePath)-1])
    basePathFolder = ""
    for item in basePath:
        basePathFolder += (item+"/")
    aovs = cmds.ls ("*rsAov*") 
    refAovs = cmds.ls ("*:rsAov*")
    aovs += refAovs
    
    def printNewMenuItem( item ):
            aov = item
            rview = cmds.getPanel( sty = 'renderWindowPanel' )
            
            fileExtention = fileFormat(aov) #get file type
            latest_file = (basePathFolder+"/"+AOVPath(aov)+fileNumber+"."+fileExtention)
            
            splitPath = latest_file.replace('/','\\')
            splitPath = splitPath.split(os.sep)
            
            for n, i in enumerate(splitPath):
                if i in aovs or i == 'beauty':
                    splitPath[n] = selectedAOV
            
            splitPath[0] = splitPath[0] + '\\'
            
            pathToImg = reduce(os.path.join,splitPath)
     
            print pathToImg
            cmds.renderWindowEditor( rview, e=True, li=pathToImg )
            
    window = cmds.window(title="RS AOV Viewer", height=200)
    cmds.columnLayout()
    cmds.optionMenu( label='Channel', changeCommand=printNewMenuItem )
    cmds.menuItem( label="beauty")
    for item in aovs:
        isEnabled = cmds.getAttr (item+".enabled") 
        if isEnabled == 1:
            cmds.menuItem( label=item) 
    cmds.showWindow( window )
RS_AOVView()