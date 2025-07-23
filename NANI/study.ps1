
Install-Module BurntToast -Scope CurrentUser -Force
$imagePath = "$env:APPDATA\nani.jpg"
Invoke-WebRequest "https://assets.st-note.com/img/1726514624-gBoKDycXILUmFa9zTlPh1Cf8.jpg" -OutFile $imagePath
New-BurntToastNotification -Text "OMAEE WA MOU SHINDEIRU", "N A N I ?! 🔥💀" -AppLogo $imagePath
