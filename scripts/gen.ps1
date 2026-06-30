# Utilidad de generación para Apuntes GAI
Write-Host "=== Generación Apuntes GAI ===" -ForegroundColor Cyan

$baseDir = Split-Path -Parent $PSScriptRoot
$docsDir = Join-Path $baseDir "src\content\docs"

# Verificar estructura
if (-not (Test-Path $docsDir)) {
  Write-Error "No se encuentra src/content/docs/"
  exit 1
}

$units = Get-ChildItem -Path $docsDir -Filter "*.md" | Where-Object { $_.Name -match '^\d{2}-' }

Write-Host "Unidades encontradas: $($units.Count)" -ForegroundColor Green

foreach ($u in $units) {
  Write-Host "  - $($u.Name)"
}

Write-Host "`nPara generar EPUB ejecuta: npm run epub" -ForegroundColor Yellow
Write-Host "Para generar PDF ejecuta: npm run pdf" -ForegroundColor Yellow
Write-Host "Para servidor local: npm run dev" -ForegroundColor Yellow
