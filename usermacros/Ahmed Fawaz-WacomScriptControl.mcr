macroScript WacomScriptControl
	category:"Ahmed Fawaz"
	toolTip:"Wacom Script"
(
	local isOpen = false --initialize to false (closed)

  on execute do
  (
    if isOpen then --if open, close it
    (
      callbacks.addscript #selectionSetChanged "selectionChanged_mod()" id:#myCallbackID
      isOpen = false--and lower the flag
    )
    else --if closed, open it
    (
      callbacks.removescripts #selectionSetChanged id:#myCallbackID
      isOpen = true --and raise the flag
    )
  )
  on isChecked return isOpen --return the flag
)
