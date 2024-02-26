oh-my-posh init pwsh --config 'C:/Users/Jonathan/Documents/WindowsPowerShell/Oh-My-Posh/Themes/aliens.omp.json' | Invoke-Expression

Import-Module -Name Terminal-Icons


Import-Module PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView 


function Remove-OldGitBranches {
    git remote prune origin
    git branch --vv | where { $_ -match '\[origin/.*: gone\]'} | foreach { git branch -D ($_.split(" ", [StringSplitOptions]'RemoveEmptyEntries')[0])}
 }

 New-Alias -Name "gprune" Remove-OldGitBranches

 function Set-Source {
    Set-Location "C:\Users\Jonathan\source"
 }  

New-Alias -Name "cds" Set-Source


