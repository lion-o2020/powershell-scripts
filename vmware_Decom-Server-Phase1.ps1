# Create VM Snapshot

Write-Host ""
Write-Host ""

Write "Connecting to vCenter.."

      Write-Host ""
      Write-Host ""

# Atlanta vCenter CONNECT
Connect-VIServer -Server atlvcenter -User x383577 -Password LordofthethunderC4ts
      Write-Host ""

      Write "** A--T--L--A--N--T--A **  Vcenter"
      Write-Host "=================================="

# READ IN LIST OF ATL VMs
foreach($vmlist in (Get-Content -Path C:\Users\383577\Downloads\atl_vms.csv))
  {
    $vm = Get-VM -Name $vmlist -ErrorAction SilentlyContinue
    If ($vm)
     {
       Write-Host "searching for VM guest. ..    "
       Write "$vmlist Found"
       Write-Host ""
       #Write "starting snapshot for $vmlist..    "
       #New-Snapshot -VM $vm -Name "CHG160172 & CHG159103 - Stealth Install" -Description " VM Snapshot: installed Stealth software via CHG160172 & CHG159103"
       #Start-Sleep -s 10
       #Write "Done"
       #Stop-VM -VM $vmlist -Confirm:$false
       Write-Host "--------------------------------"
       #Move-VM $vmlist -Destination "Linux Servers"
       #Impo#Stop-VM -VM $vmlist -Confirm:$false
     }

    Else
     {
       Write-Host ""
       Write-Host ""
       Write "$vmlist NOT Found  <<< !!!"
       Write-Host ""
       Write-Host ""
     }

  }

       #Write "Snapshot Summary"
       #get-vm|Get-Snapshot -Name *b4* |select VM, Name, Created, ID, SizeMB, SizeGB, Description

Disconnect-VIServer -Confirm:$false
       Write-Host ""
       Write-Host ""
       Write-Host ""

# Dallas vCenter CONNECT
Connect-VIServer -Server dalvcenter -User x383577 -Password LordofthethunderC4ts
       Write-Host ""

       Write "** D--A--L--L--A--S **  Vcenter"
       Write-Host "================================"

# READ IN LIST OF DALLAS VMs
foreach($vmlist in (Get-Content -Path C:\Users\383577\Downloads\dal_vms.csv))
  {
    $vm = Get-VM -Name $vmlist -ErrorAction SilentlyContinue
    If ($vm)
     {
       Write-Host "searching for VM guest. ..    "
       Write "$vmlist Found"
       Write-Host ""
       #Write "starting snapshot for $vmlist..    "
       #New-Snapshot -VM $vm -Name "CHG157411 - b4 memory downgrade" -Description " VM Snapshot: CHG157411 - b4 memory downgrade"
       #Start-Sleep -s 10
       #Stop-VM -VM $vmlist -Confirm:$false
       Write-Host "------------------------------------"
       #Move-VM $vmlist -Destination "Linux Servers"
       #Import-Csv "C:\Users\383577\Downloads\d1.csv" | % { Set-VM $_.VMName -Description $_.Note -Confirm:$false}
       #Stop-VM -VM $vmlist -Confirm:$false
     }

    Else
     {
       Write-Host ""
       Write-Host ""
       Write "$vmlist NOT Found  <<< !!!"
       Write-Host ""
       Write-Host ""
     }

  }

       #Write "Snapshot Summary"
       #get-vm|Get-Snapshot -Name *b4* |select VM, Name, Created, ID, SizeMB, SizeGB, Description

Disconnect-VIServer -Confirm:$false
