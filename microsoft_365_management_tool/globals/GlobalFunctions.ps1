. $PSScriptRoot\..\loaders\WindowLoaders.ps1

$MainMenuWindowObjects.MenuBarExitButton.Add_Click( {
	$ChangeLogWindow.Close()
	$MainMenuWindow.Close()
} )

$MainMenuWindowObjects.MenuBarChangeLogButton.Add_Click( {
	$ChangeLogWindow.ShowDialog()
} )

$ChangeLogWindowObjects.CloseButton.Add_Click( {
	$ChangeLogWindow.Close()
} )