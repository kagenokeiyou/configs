$Script:CondaExecutable = "D:\ProgramData\anaconda3\Scripts\conda.exe"

function conda {
    if (-not $Script:CondaInitialized) {
        if (Test-Path $Script:CondaExecutable) {
            (& $Script:CondaExecutable "shell.powershell" "hook") |
            Out-String |
            Where-Object { $_ } |
            Invoke-Expression
            $Script:CondaInitialized = $true
        }
    }
    conda @args
}

return # skip raw conda initialize

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "D:\ProgramData\anaconda3\Scripts\conda.exe") {
    (& "D:\ProgramData\anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion
