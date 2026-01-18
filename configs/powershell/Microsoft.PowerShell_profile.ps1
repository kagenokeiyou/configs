Set-PSReadLineOption -PredictionViewStyle ListView

#region starship
Invoke-Expression (& starship init powershell)
#endregion

#region alias
Set-Alias -Name ls -Value lsd -Force

function la {
    & lsd -a @args
}

function ll {
    & lsd -al @args
}

function lt {
    & lsd --tree @args
}
#endregion
