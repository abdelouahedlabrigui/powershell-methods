
function getIPIntTable{
    process{
        $info = Get-NetIPInterface -AddressFamily IPv4
        Out-File -FilePath "./InterfacesIPv4.csv" -InputObject $info -Encoding ASCII -Width 50 
        $info
    }
}

#getIPIntTable

function changeIPAddress{
    param(
        $file,
        $ip
    )
    process{
        $input = Get-Content -Path $file
        for($i = 0; $i -lt $input.length; $i++){ 
            if($input[$i ]-eq "GNS3Loopback"){
                New-NetIPAddress -InterfaceAlias GNS3Loopback -IPAddress $ip -AddressFamily IPv4 -PrefixLength 24
            }
        }
    }
}
#changeIPAddress .\interfaces.txt ""