$ip = Get-Content -Path .\ipAddresses.txt
$ip

function WriteInfoLevel{
    param(
        $ipAddr,
        $fileOutput
    )
    process{
        #$input = Get-Content -Path $fileInput
        $infolevel = Test-NetConnection -ComputerName "$ipAddr" -InformationLevel "Detailed"
        Out-File -FilePath "./$fileOutput" -InputObject $infolevel -Encoding ASCII -Width 50 
        Get-Content -Path $fileOutput
    }
}
function GetMultipleInfoLevel{
    param(
        $ipList,
        $fileOuter
    )
    process{
        for($i = 0; $i -lt $ipList.length; $i++){ WriteInfoLevel $ipList[$i] $fileOuter }
    }
}

#$ipAddr = @("")
#WriteInfoLevel $ipAddr .\informationLevel.txt
$ipAddr = @("", "", "")
GetMultipleInfoLevel $ipAddr .\informationLevel.txt
