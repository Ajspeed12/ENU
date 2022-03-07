macroScript Box
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 (
	On Execute Do (
		Box()
		select objects[objects.count]
	              )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Box()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Box()
		select objects[objects.count]
	)
	                      )
 )

macroScript Capsule
	category:"SpeedyTools"
            icon:#("Standard",8)
	toolTip:""
 (
	On Execute Do (
		Capsule()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Capsule()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Capsule()
		select objects[objects.count]
	)
                 )
 )

macroScript CExtended

	category:"SpeedyTools"
            icon:#("Extended",11)
	toolTip:""
(
	On Execute Do
	(
	StartObjectCreation C_Ext
	)

	On AltExecute type Do
	(
	if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
	StartObjectCreation C_Ext
	)
	else
	(
	StartObjectCreation C_Ext
	cui.commandPanelOpen = on
	)
	)
)

macroScript Cylinder
	category:"SpeedyTools"
            icon:#("Standard",3)
	toolTip:""
 (
	On Execute Do (
		Cylinder()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Cylinder()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Cylinder()
		select objects[objects.count]
	)
                 )
 )

macroScript LExtended
	category:"SpeedyTools"
            icon:#("Extended",10)
	toolTip:""
(
	On Execute Do
	(
	StartObjectCreation L_Ext
	)

	On AltExecute type Do
	(
	if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
	StartObjectCreation L_Ext
	)
	else
	(
	StartObjectCreation L_Ext
	cui.commandPanelOpen = on
	)
	)
)

macroScript Plane
	category:"SpeedyTools"
            icon:#("Standard",10)
	toolTip:""
 (
	On Execute Do (
		Plane()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Plane()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Plane()
		select objects[objects.count]
	)
                 )
 )

macroScript Sphere
	category:"SpeedyTools"
            icon:#("standard", 2)
	toolTip:""

 (
	On Execute Do (
		Sphere()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Sphere()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Sphere()
		select objects[objects.count]
	)
                 )
 )

macroScript Torus
	category:"SpeedyTools"
            icon:#("Standard",4)
	toolTip:""
 (
	On Execute Do (
		Torus()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Torus()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Torus()
		select objects[objects.count]
	)
                 )
 )

macroScript Tube
	category:"SpeedyTools"
            icon:#("Standard",8)
	toolTip:""
 (
	On Execute Do (
		Tube()
		select objects[objects.count]
	               )

	On AltExecute type Do (
	        if cui.commandPanelOpen and getCommandPanelTaskMode() == #modify then
	(
		Tube()
		select objects[objects.count]
	)
	else
	(
		cui.commandPanelOpen = on
		setCommandPanelTaskMode #modify
		Tube()
		select objects[objects.count]
	)
                 )
 )