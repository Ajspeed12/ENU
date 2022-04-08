(
	local MaxPlus = python.import "qtmax"
	local QMainWindow = MaxPlus.GetQMaxMainWindow()
	menu = QMainWindow.menuBar()
	menu.close()
)