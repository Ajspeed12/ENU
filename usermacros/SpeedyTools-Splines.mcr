macroScript Arc
	category:"SpeedyTools"
            Icon:#("Splines",3)
	toolTip:""
(
	On Execute Do (
		Arc()
		select objects[objects.count]
	                     )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Arc()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Arc()
		select objects[objects.count]
	)
		                            )
)

macroScript Circle
	category:"SpeedyTools"
            Icon:#("Splines",2)
	toolTip:""
(
	On Execute Do (
		Circle()
		select objects[objects.count]
	                     )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Circle()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Circle()
		select objects[objects.count]
	)
		                            )
)

macroScript Line
	category:"SpeedyTools"
            Icon:#("Splines",1)
	toolTip:""
(
	On Execute Do
	(
	StartObjectCreation Line
	)

	On AltExecute type Do
	(
	if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
	StartObjectCreation Line
	)
	else
	(
	StartObjectCreation Line
	cui.commandPanelOpen = on
	)
	)
)

macroScript Rectangle
	category:"SpeedyTools"
            Icon:#("Splines",7)
	toolTip:""
(
	On Execute Do (
		Rectangle()
		select objects[objects.count]
	                     )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Rectangle()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Rectangle()
		select objects[objects.count]
	)
		                            )
)

