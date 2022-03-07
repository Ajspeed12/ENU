(
	Global selectionChanged_mod
	
	callbacks.removescripts #selectionSetChanged id:#myCallbackID
	callbacks.addscript #selectionSetChanged "selectionChanged_mod()" id:#myCallbackID
	
	fn selectionChanged_mod =
	(
		if not (isCreatingObject()) and not keyboard.shiftPressed do
			(
				max select
			)
	)

)
