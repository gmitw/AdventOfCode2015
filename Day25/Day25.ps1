# $code1 = 20151125
#next code is: $previous * 252533 % 33554393

#    |    1         2         3         4         5         6
# ---+---------+---------+---------+---------+---------+---------+
#  1 | 20151125  18749137  17289845  30943339  10071777  33511524
#  2 | 31916031  21629792  16929656   7726640  15514188   4041754
#  3 | 16080970   8057251   1601130   7981243  11661866  16474243
#  4 | 24592653  32451966  21345942   9380097  10600672  31527494
#  5 |    77061  17552253  28094349   6899651   9250759  31663883
#  6 | 33071741   6796745  25397450  24659492   1534922  27995004


# 1 1
# 1 2
# 2 1
# 1 3
# 2 2
# 3 1
# 1 4
# 2 3
$array = [System.Collections.ArrayList] @{}
foreach ($i in 1..6) {
    $x = 1
    $y= $i

    if ($x -eq 1 -and $y -eq 1) {
        $code = "20151125"
    } elseif () {

    }

    $myProperty = [hashtable] @{}
    $myProperty.Add('X', $x)
    $myProperty.Add('Y', $y)
    $myProperty.Add('Code', $code)
    $myObj = New-Object -TypeName PSObject -Property $myProperty
    $array.Add($myObj)
}

$array