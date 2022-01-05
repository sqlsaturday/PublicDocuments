$EventNumber = Read-Host -Prompt "Event Number:"
$DataFilename = "SQLSat$($EventNumber).yml"

# write the data
write-host("Event: $EventNumber")
write-host("File: $DataFilename")