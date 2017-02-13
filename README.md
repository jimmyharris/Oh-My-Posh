# Oh-My-Posh

This is a clone of pecigonzalo/Oh-My-Posh that includes useful configurations for SSH and other tools.

After getting tired of mantaining my powershell profile, I decided to split the components and improve it, as I use zplug to manage my zsh profile and I figured something similar here would be useful. I thought it would be a good idea to have something similar on Powershell.

Please feel free to submit issues/pull requests/questions/feature reqeusts.

# Installation Instructions

Requires:
* Git
* Powershell 4 (might work with 3 but its not tested)

Run:
```
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jimmyharris/Oh-My-Posh/master/install.ps1'))
```

Add the following line to your powershell profile:
```
Import-Module "Oh-My-Posh" -DisableNameChecking -NoClobber
```
Now reload your Powershell profile

Alternative Installation (local installation):
Download and extract or clone the repository into a folder e.g. ```C:\TEMP```
Open a Powershell session and run
```
cd C:\TEMP
.\install.ps1 -local $true
```

# Configuration

Configuration parameters are found under
```
$env:USERPROFILE\.powershellrc.ps1
```
Open it with your prefered editor and change as you want, keep in mind some functionality is still WIP but don't hesitate on reporting any issue you have.
