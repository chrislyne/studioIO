def imageWindow():
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
    # Doesn't work without frame padding
    # Sub paths are not dynamic
    
    import maya.cmds as cmds
    
    #find cuurent frame as string
    renderFrame = cmds.currentTime( query=True )
    
    renumberFrames = cmds.getAttr ("defaultRenderGlobals.modifyExtension");
    if renumberFrames == 1:
        startNumber = cmds.getAttr ("defaultRenderGlobals.startExtension");
        renderFrame += startNumber
    
    renderFrameStr = str(renderFrame)
    
    renderFrameStr = renderFrameStr.split('.')
    renderFrameStr = renderFrameStr[0]
    
    
    #correct padding
    padding = cmds.getAttr ("defaultRenderGlobals.extensionPadding")
    
    for num in range(0,padding):
        if len(renderFrameStr) < padding:
            renderFrameStr = "0"+renderFrameStr
    
    
    #find file paths
    imageRGB = cmds.renderSettings(fpt=True, gin=renderFrameStr)
    imageString = str(unicode(imageRGB[0]))
    basePath = imageString.split('/')
    fullFilename = basePath[len(basePath)-1]
    fullFilenameSplit = fullFilename.split('.')
    fileName = fullFilenameSplit[0]
    fileNumber = fullFilenameSplit[1]
    fileExtention = fullFilenameSplit[len(fullFilenameSplit)-1]
    basePath.remove(basePath[len(basePath)-1])
    basePathFolder = ""
    for item in basePath:
        basePathFolder += (item+"/")
    aovs = cmds.ls ("*rsAov*") 
    refAovs = cmds.ls ("*:rsAov*")
    aovs += refAovs
    
    def printNewMenuItem( item ):
            cmds.image( loadedImage, edit=True, image=(basePathFolder+item+"/"+fileName+"."+item+"."+fileNumber+"."+fileExtention))
    window = cmds.window(title="RS AOV Viewer")
    cmds.columnLayout()
    cmds.optionMenu( label='Channel', changeCommand=printNewMenuItem )
    for item in aovs:
        isEnabled = cmds.getAttr (item+".enabled") 
        if isEnabled == 1:
            cmds.menuItem( label=(cmds.getAttr(item+".name")) )
    loadedImage = cmds.image( image=imageString )
    cmds.showWindow( window )