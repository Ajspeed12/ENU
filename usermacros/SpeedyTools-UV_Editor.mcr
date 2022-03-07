macroScript UV_Editor
	category:"SpeedyTools"
	toolTip:""
	Icon:#("Material_Modifiers",6)
(
	if (ClassOf $.modifiers[1]) == Unwrap_UVW then
	(
	actionMan.executeAction 2077580866 "40005"
	)
else
	(
	addmodifier $ (Unwrap_UVW())
	actionMan.executeAction 2077580866 "40005"
	)
)

//if modifier exists but not selected, select modifier then run open uv editor//