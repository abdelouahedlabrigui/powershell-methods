function PingToAddress{
    param (
        $IP
    )
    process{
        ping $IP
    }
}

function GetIpAddresses{
    param (
        $array
    )
    process{
        for($i = 0; $i -lt $array.length; $i++){ PingToAddress $array[$i] }
    }
}
$ipAddr = @("", "", "")
GetIpAddresses $ipAddr
