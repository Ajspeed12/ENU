macroScript MoveUVsRight
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 (
$.modifiers[#unwrap_uvw].unwrap2.MoveSelected [1,0,0]
 )

macroScript MoveUVsLeft
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 (
$.modifiers[#unwrap_uvw].unwrap2.MoveSelected [-1,0,0]
 )

macroScript MoveUVsUp
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 (
$.modifiers[#unwrap_uvw].unwrap2.MoveSelected [0,1,0]
 )

macroScript MoveUVsDown
	category:"SpeedyTools"
            icon:#("standard", 1)
	toolTip:""
 (
$.modifiers[#unwrap_uvw].unwrap2.MoveSelected [0,-1,0]
 )