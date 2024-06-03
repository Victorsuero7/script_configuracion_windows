# Array con los IDs de las aplicaciones que deseas desinstalar
$appIDs = @(
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
    # Agrega más IDs según sea necesario
)

foreach ($appID in $appIDs) {
    try {
        # Ejecuta el comando winget para desinstalar la aplicación
        $wingetProcess = Start-Process winget -ArgumentList "install --id $appID --silent" -NoNewWindow -PassThru -Wait
        
        if ($wingetProcess.ExitCode -eq 0) {
            Write-Output "Aplicación con ID '$appID' desinstalada exitosamente."
        } else {
            Write-Output "Error al intentar desinstalar la aplicación con ID '$appID'. Código de salida: $($wingetProcess.ExitCode)"
        }
    } catch {
        Write-Output "Error al intentar desinstalar la aplicación con ID '$appID': $_"
    }
}
