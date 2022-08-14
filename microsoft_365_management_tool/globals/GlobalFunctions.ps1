. $PSScriptRoot\..\loaders\WindowLoaders.ps1

$MainMenuObjects.MenuBarExitButton.Add_Click( {
	$ChangeLogWindow.Close()
	$MainMenuWindow.Close()
} )

$MainMenuObjects.MenuBarChangeLogButton.Add_Click( {
	$ChangeLogWindow.ShowDialog()
} )

$ChangeLogWindowObjects.CloseButton.Add_Click( {
	$ChangeLogWindow.Close()
} )