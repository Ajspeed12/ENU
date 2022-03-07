Macroscript ModifyModeToggle
	category:"SpeedyTools"
	toolTip:""
(
	on isChecked do
	(
		cui.commandPanelOpen
	)
	
	on execute do 
	(
		max hide command panel toggle
		max modify mode
	)
)

Macroscript CreateModeToggle
	category:"SpeedyTools"
	toolTip:""
(
	on isChecked do
	(
		cui.commandPanelOpen
	)
	
	on execute do 
	(
		max hide command panel toggle
		max create mode
	)
)

Macroscript HierarchyModeToggle
	category:"SpeedyTools"
	toolTip:""
(
	on isChecked do
	(
		cui.commandPanelOpen
	)
	
	on execute do 
	(
		max hide command panel toggle
		max hierarchy mode
	)
)