# Script: tong_hop.ps1
# Tac gia: Nguyen Truong Khang
# Ngay tao: 2026-11-10
Write-Host "Dang tao bao cao..."
"=== BAO CAO VAN HANH MODEL AI ===" > .\logs\tong_hop.txt
Get-Content .\logs\inference.log | Select-String "WARNING" >> .\logs\tong_hop.txt
Get-Content .\logs\inference.log | Select-String "ERROR" | Measure-Object | Select-Object -ExpandProperty Count >> .\logs\tong_hop.txt
Write-Host "Hoan thanh!"