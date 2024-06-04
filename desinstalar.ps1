$uninstall_apps = @(
#"Microsoft.XboxDevices_8wekyb3d8bbwe",
"Microsoft.GetHelp_8wekyb3d8bbwe",
"Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe",
"MicrosoftWindows.CrossDevice_cw5n1h2txyewy",
"Clipchamp.Clipchamp_yxz26nhyzhsrt",
"Microsoft.BingSearch_8wekyb3d8bbwe",
"Microsoft.GamingApp_8wekyb3d8bbwe",
"Microsoft.GamingServices_8wekyb3d8bbwe",
"Microsoft.XboxIdentityProvider_8wekyb3d8bbwe",
"Microsoft.Getstarted_8wekyb3d8bbwe",
"Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe",
"Microsoft.People_8wekyb3d8bbwe",
"Microsoft.StorePurchaseApp_8wekyb3d8bbwe",
"Microsoft.Windows.Ai.Copilot.Provider_8wekyb3d8bbwe",
"Microsoft.XboxGameOverlay_8wekyb3d8bbwe",
"Microsoft.DevHome",
"Microsoft.WindowsAlarms_8wekyb3d8bbwe",
"Microsoft.WindowsMaps_8wekyb3d8bbwe",
"Microsoft.Xbox.TCUI_8wekyb3d8bbwe",
"Microsoft.XboxGamingOverlay_8wekyb3d8bbwe",
"Microsoft.Windows.Photos_8wekyb3d8bbwe",
"Microsoft.ZuneVideo_8wekyb3d8bbwe",
"Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe",
"Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe",
"MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy",
"MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe",
"microsoft.windowscommunicationsapps_8wekyb3d8bbwe"
)

Start-Process winget "source update" -NoNewWindow -Wait -PassThru

foreach ($app in $uninstall_apps){
    Write-Host "--------------------$app-------------------"
    $command = Start-Process winget "uninstall $app --silent" -NoNewWindow -Wait -PassThru
}


$install_apps = @(
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "7zip.7zip",
    "google.chrome"
    )
foreach ($app in $install_apps){
    Write-Host "--------------------$app-------------------"
    $command = Start-Process winget "install $app --silent --accept-package-agreements  --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }


Start-Process winget "upgrade --all --accept-package-agreements  --accept-source-agreements" -NoNewWindow -Wait -PassThru
