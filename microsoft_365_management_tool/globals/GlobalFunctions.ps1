. $PSScriptRoot\..\loaders\WindowLoaders.ps1

$MainMenuObjects.MenuBarExitButton.Add_Click( {
	$MainMenuWindow.Close()
} )