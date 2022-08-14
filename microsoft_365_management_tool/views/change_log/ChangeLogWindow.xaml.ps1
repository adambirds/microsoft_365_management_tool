[System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework") | Out-Null

Function Import-Xaml {
	[xml]$Xaml = Get-Content -Path $PSScriptRoot\ChangeLogWindow.xaml
	$Manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $Xaml.NameTable
	$Manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$XamlReader = New-Object System.Xml.XmlNodeReader $Xaml
	[Windows.Markup.XamlReader]::Load($XamlReader)
}

$ChangeLogWindow = Import-Xaml

$ChangeLogWindowObjects = [PSCustomObject]@{
	ChangeLogTextBox = $ChangeLogWindow.FindName('ChangeLogTextBox')
	CloseButton = $ChangeLogWindow.FindName('CloseButton')
}