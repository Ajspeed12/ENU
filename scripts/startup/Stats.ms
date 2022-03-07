(
    unregisterRedrawViewsCallback ::drawInfo
 
    local stringFormat = (dotNetClass "System.String").Format
    local lineHeight = (getTextExtent #I).y + 2
    local yellowish = color 255 199 71
    local grayish = color 165 165 165
 
    function none =
        case selection.count of
        (
            0 : "None Selected"
            1 : $.name
            default : "Multiple Selected"
        )
 
    function getSceneFacesAsString =
    (
        local totalFaces = 0
        local selectedFaces = 0
        for obj in geometry where isDeformable obj do
        (
            totalFaces += obj.numFaces
            if obj.isSelected do selectedFaces += obj.numFaces
        )
        stringFormat "GL: {0:n0} ({1:n0})" totalFaces selectedFaces
    )
 
    function getNumVertsAsString obj =
        stringFormat "Verts:  {0:n0} ({1:n0})" (numPoints obj) obj.selectedVerts.count
 
    function getNumEdgesAsString obj =
        stringFormat "Edges:  {0:n0} ({1:n0})" obj.edges.count obj.selectedEdges.count
 
    function getNumFacesAsString obj =
        stringFormat "Faces:  {0:n0} ({1:n0})" obj.numFaces obj.selectedFaces.count
 
    function isValidObject obj =
        isKindOf obj Editable_Poly or isKindOf obj Editable_Mesh
 
    function isMesh obj =
        isKindOf obj Editable_Mesh
 
    function gridSize =
        units.formatValue (if activeGrid == undefined then gridPrefs.spacing else activeGrid.grid)
 
    function getTextLocation textExt winSizeX winSizeY lineMult =
        [winSizeX - textExt - 10, winSizeY - 40 + lineHeight * lineMult, 0]
 
    function getTextBox winSizeX winSizeY textExt =
        Box2 [winSizeX - textExt - 10, winSizeY - 40 + lineHeight * 2] [winSizeX, winSizeY]
 
    function redrawRectangle subObjsStr globalCountStr gridSizeStr =
    (
        local winSizeX = gw.getWinSizeX()
        local winSizeY = gw.getWinSizeY()
        local subObjsStrExt = (getTextExtent subObjsStr).x
        local globalCountStrExt = (getTextExtent globalCountStr).x
        local gridSizeStrExt = (getTextExtent gridSizeStr).x
 
        gw.wText (getTextLocation subObjsStrExt winSizeX winSizeY -1) subObjsStr color:yellowish
        gw.wText (getTextLocation globalCountStrExt winSizeX winSizeY 0) globalCountStr color:grayish
        gw.wText (getTextLocation gridSizeStrExt winSizeX winSizeY 2) gridSizeStr color:grayish
 
        gw.enlargeUpdateRect (getTextBox winSizeX winSizeY (amax subObjsStrExt globalCountStrExt gridSizeStrExt))
        gw.updateScreen()
    )
 
    function drawInfo =
    (
        local obj = modPanel.getCurrentObject()
 
        if subObjectLevel != undefined and subObjectLevel > 0 and isValidObject obj then
        (
            case subObjectLevel of
            (
                1: redrawRectangle (getNumVertsAsString $) (getSceneFacesAsString()) (gridSize())
                2: redrawRectangle (getNumEdgesAsString $) (getSceneFacesAsString()) (gridSize())
                3:
                (
                    if isMesh obj then redrawRectangle (getNumFacesAsString $) (getSceneFacesAsString()) (gridSize())
                    else redrawRectangle (getNumEdgesAsString $) (getSceneFacesAsString()) (gridSize())
                )
                4: redrawRectangle (getNumFacesAsString $) (getSceneFacesAsString()) (gridSize())
                5: redrawRectangle (getNumFacesAsString $) (getSceneFacesAsString()) (gridSize())
            )
        )
        else redrawRectangle (none()) (getSceneFacesAsString()) (gridSize())
    )
 
    function startDrawInfo =
    (
        registerRedrawViewsCallback ::drawInfo
        setNeedsRedraw()
    )
 
    startDrawInfo()
)