$imagePath = "$env:APPDATA\Microsoft\study\images\nani.jpg"
if (!(Test-Path (Split-Path $imagePath))) {
    New-Item -Path (Split-Path $imagePath) -ItemType Directory -Force | Out-Null
}
if (!(Test-Path $imagePath)) {
    Invoke-WebRequest "https://assets.st-note.com/img/1726514624-gBoKDycXILUmFa9zTlPh1Cf8.jpg" -OutFile $imagePath
}
if (-not (Get-Module -ListAvailable -Name BurntToast)) {
    Install-Module BurntToast -Scope CurrentUser -Force -AllowClobber
}
Import-Module BurntToast
New-BurntToastNotification -Text "OMAEE WA MOU SHINDEIRU", "N A N I ?! 🔥💀" -AppLogo $imagePath
