macroScript BuildMarkerMenu
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 
(
	if selection.count == 0 then 
	(
	messagebox("Create No Object Selected Marker Menu")
	)
	else
	(
	Mode = subobjectlevel
	case of
		(
   	(Mode<1):macros.run "SpeedyTools" "Box"
   	(Mode<2):macros.run "SpeedyTools" "Capsule"
   	(Mode<3):macros.run "SpeedyTools" "Cylinder"
   	(Mode<4):macros.run "SpeedyTools" "Sphere"
   	(Mode<5):macros.run "SpeedyTools" "Torus"
   	(Mode<6):macros.run "SpeedyTools" "Tube"
		)
	)
)
