# Script de generación de boletines para Apuntes GAI
$ErrorActionPreference = "Stop"

$baseDir = Split-Path -Parent $PSScriptRoot
$docsDir = Join-Path $baseDir "src\content\docs"

function New-BoletinFacilResuelto {
  param([string]$UnitNum, [string]$UnitStr, [string]$TopicName)
  $path = Join-Path $docsDir "boletin-$UnitStr-facil-resuelto.md"
  $content = @"
---
title: "Boletín $UnitStr - Fácil Resuelto: $TopicName"
---

# Boletín $UnitStr — Fácil Resuelto: $TopicName

Ejercicios básicos con soluciones para practicar los conceptos fundamentales.

---

## Ejercicio 1: [Título del ejercicio]

[Enunciado del ejercicio]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
**Salida esperada:**
```
[Salida]
```
> **💡 Explicación:** [Explicación breve]

---

## Ejercicio 2: [Título del ejercicio]

[Enunciado del ejercicio]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
**Salida esperada:**
```
[Salida]
```
> **💡 Explicación:** [Explicación breve]

---

## Ejercicio 3: [Título del ejercicio]

[Enunciado del ejercicio]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
**Salida esperada:**
```
[Salida]
```
> **💡 Explicación:** [Explicación breve]
"@
  Set-Content -Path $path -Value $content -Encoding UTF8
  Write-Host "  ✓ $path"
}

function New-BoletinFacil {
  param([string]$UnitNum, [string]$UnitStr, [string]$TopicName)
  $path = Join-Path $docsDir "boletin-$UnitStr-facil.md"
  $content = @"
---
title: "Boletín $UnitStr - Fácil: $TopicName"
---

# Boletín $UnitStr — Fácil: $TopicName

Ejercicios básicos para practicar los conceptos fundamentales. ¡Intenta resolverlos antes de mirar las soluciones!

---

## Ejercicio 1: [Título del ejercicio]

[Enunciado del ejercicio]

> 💡 **Pista:** [Pista sin solución]

---

## Ejercicio 2: [Título del ejercicio]

[Enunciado del ejercicio]

> 💡 **Pista:** [Pista sin solución]

---

## Ejercicio 3: [Título del ejercicio]

[Enunciado del ejercicio]

> 💡 **Pista:** [Pista sin solución]
"@
  Set-Content -Path $path -Value $content -Encoding UTF8
  Write-Host "  ✓ $path"
}

function New-BoletinAvanzadoResuelto {
  param([string]$UnitNum, [string]$UnitStr, [string]$TopicName)
  $path = Join-Path $docsDir "boletin-$UnitStr-avanzado-resuelto.md"
  $content = @"
---
title: "Boletín $UnitStr - Avanzado Resuelto: $TopicName"
---

# Boletín $UnitStr — Avanzado Resuelto: $TopicName

Ejercicios para valientes. Situaciones complejas que combinan varios conceptos. Soluciones incluidas.

---

## ⭐ Ejercicio 1: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
> **💡 Explicación:** [Explicación detallada]

---

## ⭐⭐ Ejercicio 2: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
> **💡 Explicación:** [Explicación detallada]

---

## ⭐⭐⭐ Ejercicio 3: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

**Solución:**
```[lenguaje/herramienta]
[Código/solución]
```
> **💡 Explicación:** [Explicación detallada]
"@
  Set-Content -Path $path -Value $content -Encoding UTF8
  Write-Host "  ✓ $path"
}

function New-BoletinAvanzado {
  param([string]$UnitNum, [string]$UnitStr, [string]$TopicName)
  $path = Join-Path $docsDir "boletin-$UnitStr-avanzado.md"
  $content = @"
---
title: "Boletín $UnitStr - Avanzado: $TopicName"
---

# Boletín $UnitStr — Avanzado: $TopicName

Ejercicios para valientes. Sin soluciones. Solo pistas. Si llegas hasta aquí, ya sabes de qué va esto.

---

## ⭐ Ejercicio 1: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

> 💡 **Pista:** [Pista sin solución]

---

## ⭐⭐ Ejercicio 2: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

> 💡 **Pista:** [Pista sin solución]

---

## ⭐⭐⭐ Ejercicio 3: [Título del ejercicio]

[Enunciado del ejercicio avanzado]

> 💡 **Pista:** [Pista sin solución]
"@
  Set-Content -Path $path -Value $content -Encoding UTF8
  Write-Host "  ✓ $path"
}

function New-ProyectoUnidad {
  param([string]$UnitNum, [string]$UnitStr, [string]$TopicName, [string]$ProyectoDesc)
  $path = Join-Path $docsDir "proyecto-$UnitStr.md"
  $content = @"
---
title: "Proyecto $UnitStr: $TopicName"
---

# Proyecto $UnitStr: $TopicName

## Objetivo

$ProyectoDesc

## Entregables

- [Entregable 1]
- [Entregable 2]
- [Entregable 3]

## Criterios de evaluación

- [Criterio 1]
- [Criterio 2]
- [Criterio 3]

## Recursos

- [Recurso 1]
- [Recurso 2]

---

*Este proyecto forma parte del proyecto global "Implantación de un Sistema de Knowledge Management".*
"@
  Set-Content -Path $path -Value $content -Encoding UTF8
  Write-Host "  ✓ $path"
}

# === MAIN ===
$units = @(
  @{Num=1; Topic="Gestión de proyectos empresariales. El valor del conocimiento"; Proyecto="Elaborar una propuesta de proyecto de Knowledge Management para una empresa simulada, definiendo alcance, objetivos, stakeholders y beneficios esperados."},
  @{Num=2; Topic="Planificación y seguimiento de proyectos con herramientas digitales"; Proyecto="Crear la planificación completa del proyecto KM: WBS, cronograma, asignación de recursos, análisis de riesgos y KPIs."},
  @{Num=3; Topic="Documentos profesionales con Word, Excel y PowerPoint"; Proyecto="Diseñar un conjunto de plantillas corporativas y una base de conocimiento ofimática para la empresa."},
  @{Num=4; Topic="Informes empresariales: datos, gráficos y comunicaciones"; Proyecto="Elaborar un informe ejecutivo y un dashboard de indicadores del proyecto KM con datos reales simulados."},
  @{Num=5; Topic="Creación de vídeos corporativos y contenido audiovisual"; Proyecto="Producir un vídeo de presentación del proyecto KM (guion, grabación/edición, publicación)."},
  @{Num=6; Topic="Comunicación y trabajo en equipo con herramientas web"; Proyecto="Configurar un espacio de trabajo colaborativo en Teams/Notion/Slack para el equipo del proyecto KM."},
  @{Num=7; Topic="Oficina virtual y página web de la empresa"; Proyecto="Crear un portal web / intranet del conocimiento para la empresa utilizando un CMS."},
  @{Num=8; Topic="Archivo digital: cómo organizar los documentos de la empresa"; Proyecto="Diseñar e implementar un sistema de clasificación documental en un SGD ( gestor documental)."},
  @{Num=9; Topic="Flujos de trabajo, custodia de documentos y normativa legal"; Proyecto="Diseñar los workflows documentales, la política de custodia y el checklist de cumplimiento legal."},
  @{Num=10; Topic="Proyecto Knowledge Management (I)"; Proyecto="Integrar todas las piezas de los proyectos anteriores en una memoria única del sistema KM."}
)

foreach ($u in $units) {
  $num = $u.Num
  $nn = $num.ToString("00")
  $topic = $u.Topic
  
  Write-Host "Generando materiales para Unidad $nn: $topic" -ForegroundColor Cyan
  
  New-BoletinFacilResuelto -UnitNum $num -UnitStr $nn -TopicName $topic
  New-BoletinFacil -UnitNum $num -UnitStr $nn -TopicName $topic
  New-BoletinAvanzadoResuelto -UnitNum $num -UnitStr $nn -TopicName $topic
  New-BoletinAvanzado -UnitNum $num -UnitStr $nn -TopicName $topic
  New-ProyectoUnidad -UnitNum $num -UnitStr $nn -TopicName $topic -ProyectoDesc $u.Proyecto
}

Write-Host "`n¡Generación completa!" -ForegroundColor Green
Write-Host "Revisa los archivos generados en src/content/docs/" -ForegroundColor Yellow
