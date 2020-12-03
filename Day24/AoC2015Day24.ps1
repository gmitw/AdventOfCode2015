$content = Get-Content -Path .\sample.txt
foreach ($i in 1..($content.Count-1)) {
    $group1, $group2, $group3 = $content[$i].Split(";")
    if ($group1 -match "\(QE=\s?(\d+)\)") {
        $quantumEntanglement = $Matches[1]
    }
    $group1 = ($group1.Split("("))[0].Split(" ") | Where-Object {$_ -ne ""}
    $group2 = $group3.Split(" ") | Where-Object {$_ -ne ""}
    $group3 = $group3.Split(" ") | Where-Object {$_ -ne ""}   

    $sum1=0
    $sum2=0
    $sum3=0
    $group1 | ForEach-Object { $sum1+= [int] $_}
    $group2 | ForEach-Object { $sum2+= [int] $_}
    $group3 | ForEach-Object { $sum3+= [int] $_}
    if ($sum1 -eq $sum2 -and $sum2 -eq $sum3) {
        Write-Output "Line $i all groups are equal to $sum"
    }
}