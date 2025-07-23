$imagePath = "$env:APPDATA\Microsoft\study\images\nani.jpg"
$imageDir = Split-Path $imagePath
if (!(Test-Path $imageDir)) {
    New-Item -Path $imageDir -ItemType Directory -Force | Out-Null
}
if (!(Test-Path $imagePath)) {
    Invoke-WebRequest "https://assets.st-note.com/img/1726514624-gBoKDycXILUmFa9zTlPh1Cf8.jpg" -OutFile $imagePath
}
$burntToastInstalled = Test-Path "$env:USERPROFILE\Documents\PowerShell\Modules\BurntToast"
$burntToastLoaded = Get-Module -Name BurntToast -ErrorAction SilentlyContinue
if (-not $burntToastInstalled -and -not $burntToastLoaded) {
    Install-Module BurntToast -Scope CurrentUser -Force -AllowClobber
}
if (-not $burntToastLoaded) {
    Import-Module BurntToast
}
New-BurntToastNotification -Text "OMAEE WA MOU SHINDEIRU", "N A N I ?! 🔥💀" -AppLogo $imagePath