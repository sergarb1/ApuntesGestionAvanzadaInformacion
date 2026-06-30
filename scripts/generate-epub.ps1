param(
  [string]$Lang = "es"
)

$ErrorActionPreference = "Stop"

$baseDir = Split-Path -Parent $PSScriptRoot
$docsDir = Join-Path $baseDir "src\content\docs"
$outDir = Join-Path $baseDir "public\epub"
$epubCss = Join-Path $baseDir "scripts\epub.css"
$cover = Join-Path $baseDir "portada.png"

if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir -Force | Out-Null }

$files = @()
$units = @(
  "01-gestion-proyectos-knowledge-management",
  "02-planificacion-seguimiento-proyectos",
  "03-documentos-profesionales-ofimatica",
  "04-informes-empresariales-datos-graficos",
  "05-videos-corporativos-audiovisual",
  "06-comunicacion-trabajo-equipo-web",
  "07-oficina-virtual-pagina-web",
  "08-archivo-digital-gestion-documental",
  "09-flujos-trabajo-custodia-legal",
  "10-proyecto-knowledge-management-i",
  "11-proyecto-knowledge-management-ii"
)

$boletines = @("facil-resuelto", "facil", "avanzado-resuelto", "avanzado")
$proyectos = @("01","02","03","04","05","06","07","08","09","10")

$allContent = @()

foreach ($u in $units) {
  $path = Join-Path $docsDir "$u.md"
  if (Test-Path $path) {
    $content = Get-Content $path -Raw -Encoding UTF8
    $content = $content -replace '^---[\s\S]*?---\s*', ''
    $content = $content -replace '^---\s*\n---\s*', ''
    $allContent += $content
  }
}

foreach ($b in $boletines) {
  foreach ($i in 1..10) {
    $nn = $i.ToString("00")
    $path = Join-Path $docsDir "boletin-$nn-$b.md"
    if (Test-Path $path) {
      $content = Get-Content $path -Raw -Encoding UTF8
      $content = $content -replace '^---[\s\S]*?---\s*', ''
      $content = "## $((Get-Culture).TextInfo.ToTitleCase($b.Replace('-',' '))) Unidad $nn`n$content"
      $allContent += $content
    }
  }
}

foreach ($p in $proyectos) {
  $path = Join-Path $docsDir "proyecto-$p.md"
  if (Test-Path $path) {
    $content = Get-Content $path -Raw -Encoding UTF8
    $content = $content -replace '^---[\s\S]*?---\s*', ''
    $allContent += $content
  }
}

$mdContent = $allContent -join "`n`n---`n`n"

$tmpFile = [System.IO.Path]::GetTempFileName() + ".md"
Set-Content -Path $tmpFile -Value $mdContent -Encoding UTF8

$outFile = Join-Path $outDir "ApuntesGAI-es.epub"

$pandocArgs = @(
  $tmpFile,
  "-o", $outFile,
  "--from", "markdown",
  "--to", "epub3",
  "--metadata", "title=Gestión Avanzada de la Información",
  "--metadata", "author=Sergi Garcia Barea",
  "--metadata", "lang=es",
  "--epub-cover-image=$cover",
  "--css=$epubCss",
  "--toc",
  "--toc-depth=2",
  "--embed-resources",
  "--standalone"
)

try {
  & pandoc $pandocArgs 2>&1 | Out-Host
  Write-Host "EPUB generado: $outFile"
} catch {
  Write-Warning "Error generando EPUB: $_"
  Write-Warning "Asegúrate de tener Pandoc instalado (winget install pandoc o desde pandoc.org)"
} finally {
  Remove-Item $tmpFile -Force -ErrorAction SilentlyContinue
}
