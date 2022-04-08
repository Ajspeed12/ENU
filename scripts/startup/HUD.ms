(
	fn HUDProjectName = (
	vpWidth = gw.getWinSizeX()
	ProjectStr = "Untitled"

		if (getFilenameFile maxFileName  == "" ) then ProjectStr = "Untitled"
		else (ProjectStr = getFilenameFile maxFileName)
		viewCenterX = (vpWidth / 2) - (((gw.getTextExtent ProjectStr).x) / 2)
		gw.hText [viewCenterX,5,0] ProjectStr color:white
		gw.updateScreen() 
	)
	registerRedrawViewsCallback HUDProjectName
)

(
	fn HUDConstrain = (
		vpWidth = gw.getWinSizeX()
		if selection.count == 1 and classOf selection[1] == Editable_Poly then
		(ConstrainType = selection[1].constrainType) 
		else 
		(ConstrainType = 0)
		ConstrainStr = case ConstrainType of
			(
				0: "Constraint: None"
				1: "Constraint: Edge"
				2: "Constraint: Face"
				3: "Constraint: Normal"
			)
		viewRightX = (vpWidth) - 93
		GW.hText [viewRightX,25,0] ConstrainStr color:white
		gw.updateScreen() 
	)
	registerRedrawViewsCallback HUDConstrain
)

(
	fn HUDSnap = (
		vpWidth = gw.getWinSizeX()
		if (snapMode.active == true) then SnapsToggle = "Snaps: On"
		else (SnapsToggle = "Snaps: Off")
		snapsextent = gw.getTextExtent SnapsToggle
		viewRightX = (vpWidth) - 93
		GW.hText [viewRightX,5,0] SnapsToggle color:white
		gw.updateScreen() 
	)
	registerRedrawViewsCallback HUDSnap
)

