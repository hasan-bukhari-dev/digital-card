$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$destination = Join-Path $root 'resumes'
New-Item -ItemType Directory -Path $destination -Force | Out-Null
$files = @(
  'HasanBukhariSYSRESUME-10-03-26.pdf',
  'HasanBukhariSWERESUME-10-03-26.pdf',
  'HasanBukhariMLRESUME-10-03-26.pdf',
  'HasanBukhariBIORESUME-10-03-26.pdf'
)
$downloadDir = Join-Path $env:USERPROFILE 'Downloads'
foreach ($name in $files) {
  $source = Join-Path $downloadDir $name
  if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
    throw "Missing resume: $source. Confirm the four PDFs are still in Downloads."
  }
  Copy-Item -LiteralPath $source -Destination (Join-Path $destination $name) -Force
  Write-Host "Added $name" -ForegroundColor Green
}
Write-Host "`nAll four resumes are present. Previewing site..." -ForegroundColor Cyan
Start-Process (Join-Path $root 'index.html')
Write-Host "`nFor publishing: create a PUBLIC repository called digital-card, then upload index.html, favicon.svg, hasan-bukhari.vcf and the resumes folder. Enable GitHub Pages from main / (root)." -ForegroundColor Yellow
