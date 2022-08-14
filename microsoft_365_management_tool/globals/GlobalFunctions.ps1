. $PSScriptRoot\..\loaders\WindowLoaders.ps1
. $PSScriptRoot\GlobalVariables.ps1
. $PSScriptRoot\..\utils\New-MessageBox.ps1

$MainMenuWindowObjects.MenuBarExitButton.Add_Click( {
	$ChangeLogWindow.Close()
	$MainMenuWindow.Close()
} )

$MainMenuWindowObjects.ExitButton.Add_Click( {
	$ChangeLogWindow.Close()
	$MainMenuWindow.Close()
} )

$MainMenuWindowObjects.MenuBarChangeLogButton.Add_Click( {
	$ChangeLogWindow.ShowDialog()
} )

$MainMenuWindowObjects.MenuBarVersionButton.Add_Click( {
	New-MessageBox -Message ("Version: {0}" -f $VersionNo) -Title "Microsoft 365 Management Tool | Version Details" -Buttons OK -ShowOnTop -Icon Information
} )

$ChangeLogWindow.Add_Loaded( {
	$ChangeLogWindowObjects.ChangeLogTextBox.Text = $ChangeLog
} )

$ChangeLogWindowObjects.CloseButton.Add_Click( {
	$ChangeLogWindow.Close()
} )