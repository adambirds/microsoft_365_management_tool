[System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework") | Out-Null

Function Import-Xaml {
	[xml]$xaml = Get-Content -Path $PSScriptRoot\MainMenuWindow.xaml
	$Manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $Xaml.NameTable
	$Manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$XamlReader = New-Object System.Xml.XmlNodeReader $Xaml
	[Windows.Markup.XamlReader]::Load($XamlReader)
}

$MainMenuWindow = Import-Xaml

$MainMenuObjects = [PSCustomObject]@{
	MenuBarSettingsButton = $MainMenuWindow.FindName('MenuBarSettingsButton')
	MenuBarExitButton = $MainMenuWindow.FindName('MenuBarExitButton')
	MenuBarMainMenuButton = $MainMenuWindow.FindName('MenuBarMainMenuButton')
	MenuBarVersionButton = $MainMenuWindow.FindName('MenuBarVersionButton')
	MenuBarChangeLogButton = $MainMenuWindow.FindName('MenuBarChangeLogButton')
	MenuBarHelpButton = $MainMenuWindow.FindName('MenuBarHelpButton')
	LoginButton = $MainMenuWindow.FindName('LoginButton')
	LogoutButton = $MainMenuWindow.FindName('LogoutButton')
	ExitButton = $MainMenuWindow.FindName('ExitButton')
}