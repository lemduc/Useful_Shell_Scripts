Get-ChildItem | ?{ $_.PSIsContainer } | Select-Object FullName | Get-ChildItem -Recurse -Path $_ -File -filter *.java | Measure-Object | %{$_.Count}

dir -recurse |  ?{ $_.PSIsContainer } | %{ Write-Host $_.FullName (Get-ChildItem -Recurse -Path $_ -File -filter *.java | Measure-Object).Count }

dir -recurse |  ?{ $_.PSIsContainer } | %{ Write-Host $_.FullName (dir $_.FullName | Measure-Object).Count }
