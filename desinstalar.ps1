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
"microsoft.windowscommunicationsapps_8wekyb3d8bbwe",
"MSIX\Microsoft.BingWeather_1.0.6.0_x64__8wekyb3d8bbwe",
"MSIX\Microsoft.MicrosoftSolitaireCollection_4.12.3171.0_x64__8wekyb3d8bbwe",
"MSIX\Microsoft.OutlookForWindows_1.2024.814.200_x64__8wekyb3d8bbwe",
"MSIX\Microsoft.Paint_11.2404.1020.0_x64__8wekyb3d8bbwe",
"MSIX\Microsoft.PowerAutomateDesktop_1.0.219.0_x64__8wekyb3d8bbwe",
"MSIX\Microsoft.Todos_0.54.42772.0_x64__8wekyb3d8bbwe",
"Microsoft.Edge",
"ARP\Machine\X86\Microsoft Edge Update",
"Microsoft.EdgeWebView2Runtime",
"MSIX\Microsoft.MicrosoftEdge.Stable_128.0.2739.42_neutral__8wekyb3d8bbwe"
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

Start-Process git "config --global user.name 'vic'" -NoNewWindow -Wait -PassThru
Start-Process git "config --global user.email 'victorsuero98@gmail.com'" -NoNewWindow -Wait -PassThru
