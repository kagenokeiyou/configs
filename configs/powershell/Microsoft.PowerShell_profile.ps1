Set-PSReadLineOption -PredictionViewStyle ListView

#region starship
Invoke-Expression (& starship init powershell)
#endregion

#region alias
Set-Alias -Name ls -Value lsd -Force

function la {
    & lsd -a
}

function ll {
    & lsd -al
}

function lt {
    & lsd --tree
}
#endregion
