💻
#for (<inicializacao> <decisao> <incremento>)

for ($n = 10; $n -gt 0; $n--){
    Write-Host $n
}

for ($n = 1; $n -lt 11; $n += 1) {
    $n
}


$process = Get-Process | Select-Object ws
$soma = $total = 0

for ($n = 0; $n -lt $process.Length; $n++){
    $soma += $process[$n].ws
}

#[Math]::Round serve para abreviar o resultado
$total = [Math]::Round($soma / 1mb)
Write-Host "O uso de memória é : $total mb" 
