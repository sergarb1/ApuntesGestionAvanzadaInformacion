# Curso Gestión Avanzada de la Información — CFGS Asistencia a la Dirección

**CC BY-SA 4.0** — Sergi Garcia Barea

## 📋 Descripción general

Curso completo del **módulo 0663 — Gestión Avanzada de la Información** para el **CFGS Asistencia a la Dirección** (RD 1583/2011, BOE 283), organizado en 11 unidades didácticas en Markdown.

Orientado al perfil profesional de **Knowledge Manager**: desarrollar estrategias para captar, almacenar, organizar y difundir el capital intelectual de una organización.

Publicado como web estática con **Astro 7 + Starlight 0.41** + GitHub Pages.

---

## 🎯 Marco normativo: Resultados de Aprendizaje (RA)

El proyecto se alinea con el **Real Decreto 1583/2011**, que establece 5 RA para el módulo 0663:

| RA | Descripción |
|----|-------------|
| **RA1** | Gestiona proyectos de implantación de sistemas de gestión de la información analizando sus características y aplicando metodologías de trabajo |
| **RA2** | Elabora documentos profesionales e informes empresariales utilizando aplicaciones ofimáticas y herramientas de visualización de datos |
| **RA3** | Produce materiales de comunicación corporativa audiovisual integrando recursos multimedia |
| **RA4** | Gestiona entornos de trabajo colaborativo y publicación web aplicando criterios de usabilidad y accesibilidad |
| **RA5** | Organiza sistemas de archivo digital y flujos documentales garantizando la custodia legal y la seguridad de la información |

Cada unidad indica al final qué RA cubre.

---

## 📦 Contenido del curso

| Recurso | Cantidad | Detalle |
|---------|----------|---------|
| Unidades didácticas | 11 | 01–11, contenido teórico-práctico (171–356 líneas c/u) |
| Boletines de ejercicios | 40 | 4 por unidad (U1–U10): fácil, fácil resuelto, avanzado, avanzado resuelto |
| Proyectos de unidad | 10 | proyecto-01.md → proyecto-10.md, piezas incrementales |
| Proyecto final | integrado | U10 integra todas las piezas; U11 es presentación/defensa |
| Recursos adicionales | 2 | Guía identidad corporativa + plantilla EDT/WBS |
| Página de inicio | 1 | index.md con hero, cards, barra de descargas, licencia |

---

## 🧭 Hilo conductor: Proyecto global Knowledge Manager

Todas las unidades alimentan un proyecto común: la **implantación de un Sistema de Knowledge Management** en una empresa simulada.

### Empresa simulada: GesDoc Consulting

GesDoc Consulting es una **consultora de gestión documental y conocimiento** creada como hilo conductor del curso. Cuenta con:
- **Guía de identidad corporativa:** `public/resources/guia-identidad-corporativa.md`
- **Logotipo:** `public/resources/gesdoc-logo.svg`
- Es la empresa sobre la que los alumnos aplican todos los conceptos del curso

### Mapa del proyecto por unidades

| Unidad | El alumno crea... |
|--------|-------------------|
| **U1** 📋 | Propuesta de proyecto KM para GesDoc Consulting |
| **U2** 📊 | Planificación: cronograma, WBS, recursos, riesgos |
| **U3** 📝 | Plantillas corporativas y base de conocimiento ofimática |
| **U4** 📈 | Dashboard de indicadores e informe ejecutivo |
| **U5** 🎬 | Vídeo de presentación del proyecto KM |
| **U6** 🌐 | Espacio colaborativo en Teams/Notion/Slack |
| **U7** 🏢 | Portal web / intranet del conocimiento |
| **U8** 🗂️ | Sistema de clasificación y archivo digital |
| **U9** 🔐 | Política de custodia, flujos documentales y checklist legal |
| **U10** 🧩 | Integración de todas las piezas y memoria del proyecto |
| **U11** 🏁 | Presentación y defensa final del sistema KM completo |

---

## 📁 Estructura detallada del proyecto

### Archivos fuente (`src/`)

```
src/
├── content/
│   ├── docs/                          # 62 archivos Markdown
│   │   ├── index.md                   # Landing page (331 líneas)
│   │   ├── 01-gestion-proyectos-knowledge-management.md
│   │   ├── 02-planificacion-seguimiento-proyectos.md
│   │   ├── 03-documentos-profesionales-ofimatica.md
│   │   ├── 04-informes-empresariales-datos-graficos.md
│   │   ├── 05-videos-corporativos-audiovisual.md
│   │   ├── 06-comunicacion-trabajo-equipo-web.md
│   │   ├── 07-oficina-virtual-pagina-web.md
│   │   ├── 08-archivo-digital-gestion-documental.md
│   │   ├── 09-flujos-trabajo-custodia-legal.md
│   │   ├── 10-proyecto-knowledge-management-i.md
│   │   ├── 11-proyecto-knowledge-management-ii.md
│   │   ├── boletin-XX-facil.md               # 10 archivos
│   │   ├── boletin-XX-facil-resuelto.md       # 10 archivos
│   │   ├── boletin-XX-avanzado.md             # 10 archivos
│   │   ├── boletin-XX-avanzado-resuelto.md    # 10 archivos
│   │   ├── proyecto-01.md → proyecto-10.md    # 10 archivos
│   │   └── (proyecto-11 no existe, U11 es la presentación)
│   └── content.config.ts              # Colección docs con Starlight
└── styles/
    └── custom.css                     # 439 líneas de CSS premium
```

### Archivos estáticos (`public/`)

```
public/
├── portada.png              # Portada para la web
├── favicon.svg              # Favicon principal (SVG)
├── favicon.png              # Favicon fallback (PNG)
├── logo.svg                 # Logo horizontal (para header/nav)
├── logo-gai.svg             # Logo completo con fondo (para hero)
├── cc-by-sa.png             # Badge de licencia CC BY-SA 4.0
├── pdf/
│   └── ApuntesGAI-es.pdf    # PDF generado
├── epub/
│   └── ApuntesGAI-es.epub   # EPUB generado
└── resources/
    ├── gesdoc-logo.svg               # Logo empresa simulada
    ├── guia-identidad-corporativa.md  # Guía de identidad corporativa
    └── plantilla-edt-wbs.md           # Plantilla EDT/WBS
```

### Scripts (`scripts/`)

```
scripts/
├── create-portada.mjs         # Genera portada.png (1200x630) desde SVG con sharp
├── generate-boletines.ps1     # Generador de boletines y proyectos desde plantillas (271 líneas)
├── generate-epub.ps1          # Genera EPUB completo con Pandoc (98 líneas)
├── gen.ps1                    # Utilidad de ayuda rápida (23 líneas)
├── pdf-cover.html             # Portada del PDF (gradiente, imagen, título)
├── pdf-header.html            # Header vacío (1 línea, suprime hora de impresión)
├── pdf-footer.html            # Pie con copyright + numeración (4 líneas)
└── epub.css                   # CSS para bloques de código en EPUB (31 líneas)
```

### Archivos raíz

```
├── astro.config.mjs           # Config principal (74 líneas)
├── package.json               # Dependencias y scripts
├── tsconfig.json              # TypeScript strict
├── strip_solutions.py         # Script Python: quita soluciones de boletines resueltos
├── portada.png                # Portada compartida PDF/EPUB (1200x630)
├── portada.svg                # Fuente SVG de la portada
├── .nojekyll                  # Vacío — evita build Jekyll en GitHub Pages
├── .gitignore                 # node_modules/, dist/, .astro/, *.local, .DS_Store
├── README.md                  # Documentación principal del proyecto
└── AGENTS.md                  # Este archivo — instrucciones para IA
```

---

## 🛠️ Stack tecnológico detallado

| Componente | Versión | Propósito |
|------------|---------|-----------|
| Astro | ^7.0.2 | Framework web (SSG, islands) |
| Starlight | ^0.41.0 | Documentación / theme Astro |
| TypeScript | strict | Lenguaje de desarrollo |
| Geist Sans | ^5.2.5 | Tipografía Vercel |
| Sharp | ^0.34.5 | Generación de imágenes (portada) |
| Shiki | ^4.3.0 | Syntax highlighting |
| Pagefind | (bundled) | Búsqueda full-text |
| starlight-to-pdf | ^1.4.0 | Generación PDF desde URL |
| Pandoc | 3+ | Generación EPUB (externo) |
| Node.js | 24 | Entorno de ejecución |
| GitHub Actions | — | CI/CD |

---

## 🚀 Comandos disponibles

```bash
npm run dev       # Servidor local → http://localhost:4321/ApuntesGestionAvanzadaInformacion
npm run build     # Build estático en dist/
npm run preview   # Previsualizar el build completo
npm run pdf       # Generar PDF en public/pdf/ (requiere URL desplegada)
npm run epub      # Generar EPUB en public/epub/ (requiere Pandoc)
npm run astro     # CLI de Astro
```

### Comandos npm adicionales (definidos en package.json)

```json
"scripts": {
  "dev": "astro dev",
  "start": "astro dev",
  "build": "astro build",
  "preview": "astro preview",
  "pdf": "astro build && npx starlight-to-pdf https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion -p public/pdf -f ApuntesGAI-es --footer scripts/pdf-footer.html --header scripts/pdf-header.html --preceding-html scripts/pdf-cover.html --print-bg",
  "epub": "pwsh -NoProfile -File scripts/generate-epub.ps1",
  "astro": "astro"
}
```

> **Nota importante:** El comando `pdf` requiere que el sitio esté accesible vía HTTP. Se puede usar localmente modificando la URL a `http://localhost:4321/ApuntesGestionAvanzadaInformacion` (comando `pdf:local` no oficial).

---

## 📖 Guía de estilo del contenido

### Tono y lenguaje

- **Tono:** Conversacional, cercano, orientado a administración y finanzas
- **Lenguaje:** Empresarial, claro, práctico. NO usar tecnicismos informáticos
- **Regla de vocabulario:** Usar términos genéricos en castellano:
  - ✅ "hoja de cálculo" — ❌ "Excel"
  - ✅ "documento de texto" — ❌ "Word"
  - ✅ "presentación" — ❌ "PowerPoint"
  - ✅ "correo electrónico" — ❌ "Outlook"
  - ✅ "base de datos" — ❌ "Access"

### Secciones especiales por unidad

Cada unidad debe incluir (donde aplique):

| Sección | Formato | Descripción |
|---------|---------|-------------|
| `## ⭐ Ponte en la piel del Knowledge Manager` | Markdown | Ejercicio situacional práctico. U1–U3: pistas + solución orientativa. U4–U11: solución directa |
| `## ❓ Dudas frecuentes` | Markdown | Preguntas y respuestas FAQ sobre la unidad |
| Blockquotes con etiqueta | `> **[NOTE]**`, `> **[WARNING]**`, `> **[TIP]**` | Avisos, notas al margen, consejos |
| Casos prácticos | Texto narrativo | "Eres el asistente de dirección y te piden..." |

### Formato de archivos

- Markdown compatible con **Google Docs** (importación directa)
- Títulos con `##` (sin `#` de documento, salvo el frontmatter)
- Tablas, listas, bloques de código con sintaxis coloreada (Shiki)
- Frontmatter YAML obligatorio (título, descripción, sidebar position)
- Sin HTML salvo en `index.md` (cards del landing)
- **NO añadir comentarios en el código fuente** a menos que el usuario lo pida explícitamente

### Frontmatter de unidades

```yaml
---
title: "01 — Gestión de proyectos Knowledge Management"
description: "Introducción a la gestión de proyectos de conocimiento"
sidebar:
  order: 1
---
```

### Frontmatter de boletines

```yaml
---
title: "Boletín 01 — Ejercicios fáciles (con soluciones)"
description: "Ejercicios fáciles de la unidad 1 con soluciones"
sidebar:
  order: 1
---
```

---

## 🧩 Sistema de generación de boletines

### Script: `scripts/generate-boletines.ps1`

Generador completo de los 40 boletines y 10 proyectos mediante plantillas parametrizadas en PowerShell.

**Estructura de plantillas (inline en el script):**

Cada boletín/proyecto se genera con:
1. Frontmatter YAML (título, descripción, order en sidebar)
2. Encabezado de unidad
3. Enunciados de ejercicios (con o sin soluciones)
4. Secciones de estilo consistentes

**Parámetros por tipo de boletín:**

| Variante | Soluciones | Nivel | Uso |
|----------|------------|-------|-----|
| `facil-resuelto` | ✅ Incluidas | Básico | Autoevaluación, estudio |
| `facil` | ❌ Sin soluciones | Básico | Exámenes, tareas |
| `avanzado-resuelto` | ✅ Incluidas | Alto | Práctica avanzada |
| `avanzado` | ❌ Sin soluciones | Alto | Evaluación avanzada |

**¿Cómo regenerar boletines?**
```powershell
pwsh -NoProfile -File scripts/generate-boletines.ps1
```

### Script: `strip_solutions.py`

Elimina soluciones de los boletines resueltos para generar las versiones sin soluciones.

```bash
python strip_solutions.py
```

**Qué hace:**
- Busca archivos que terminan en `-resuelto.md` pero NO en `-facil-resuelto.md`
- Elimina patrones `**Solución:**\n\`\`\`...\`\`\``
- Elimina bloques `<details>...</details>`
- Reporta qué archivos modificó

---

## 📄 Generación de PDF y EPUB

### PDF (`npm run pdf`)

```bash
npx starlight-to-pdf <URL> \
  -p public/pdf \
  -f ApuntesGAI-es \
  --footer scripts/pdf-footer.html \
  --header scripts/pdf-header.html \
  --preceding-html scripts/pdf-cover.html \
  --print-bg
```

- Usa Chromium headless para renderizar el sitio y convertirlo a PDF
- **Requiere** el sitio accesible (GitHub Pages o localhost)
- Portada en `scripts/pdf-cover.html` con gradiente azul, imagen superpuesta, título y autor
- Footer con copyright a izquierda y numeración a derecha
- Header vacío para suprimir la hora de impresión por defecto

### EPUB (`npm run epub`)

```powershell
# scripts/generate-epub.ps1
# 1. Recopila todos los .md de las unidades, boletines y proyectos
# 2. Concatena y elimina frontmatter YAML
# 3. Llama a Pandoc:
pandoc output.md \
  -o public/epub/ApuntesGAI-es.epub \
  --epub-cover-image=portada.png \
  --css=scripts/epub.css \
  --metadata title="Gestión Avanzada de la Información" \
  --metadata author="Sergi Garcia Barea" \
  --toc --toc-depth=2
```

- **Requiere Pandoc 3+** instalado en el sistema
- Portada común con PDF (`portada.png` en raíz)
- CSS propio para sintaxis coloreada en EPUB (`scripts/epub.css`)

---

## ⚙️ CI/CD: GitHub Actions

**Archivo:** `.github/workflows/deploy.yml`

```yaml
on:
  push:
    branches: [master]
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5
      - uses: actions/setup-node@v5  # Node 24
      - uses: actions/configure-pages@v5
      - run: npm ci && npm run build
      - uses: actions/upload-pages-artifact@v5  # uploads dist/
      
  deploy:
    needs: build
    permissions: { pages: write, id-token: write }
    environment: { name: github-pages, url: ${{ steps.deployment.outputs.page_url }} }
    runs-on: ubuntu-latest
    steps:
      - uses: actions/deploy-pages@v5
```

**Detalles clave:**
- Disparadores: push a `master` o `workflow_dispatch` manual
- Node 24 (latest stable en el momento de creación)
- `.nojekyll` en raíz — necesario para que GitHub Pages no intente procesar Jekyll
- `base: "/ApuntesGestionAvanzadaInformacion/"` en `astro.config.mjs` — coincide con el nombre del repo

---

## 🎨 Configuración de Astro (`astro.config.mjs`)

### Aspectos destacados

| Propiedad | Valor | Detalle |
|-----------|-------|---------|
| `site` | `https://sergarb1.github.io` | Dominio base |
| `base` | `/ApuntesGestionAvanzadaInformacion` | Subruta del repo |
| `locales` | `root: { label: 'Castellano', lang: 'es' }` | Monolingüe español |
| `social` | `github: 'https://github.com/sergarb1/ApuntesGestionAvanzadaInformacion'` | Enlace al repo |
| `customCSS` | `['./src/styles/custom.css', '@fontsource/geist-sans']` | Tema + fuente |

### Sidebar structure

Tres secciones principales:
1. **Inicio** → `index.md`
2. **Unidades** → 11 items con emojis: 📋, 📊, 📝, 📈, 🎬, 🌐, 🏢, 🗂️, 🔐, 🧩, 🏁
3. **Boletines** → 10 grupos desplegables, cada uno con 4 sub-páginas
4. **Proyectos** → 10 items (proyecto-01 a proyecto-10)

### Forzado de tema claro

El theme de Starlight se fuerza a modo claro mediante:
```html
<script>(function(){document.documentElement.dataset.theme='light'})()</script>
```
Inyectado en el `<head>` via `astro.config.mjs` / `head` array.

---

## 📐 Convenciones de nomenclatura

| Tipo | Patrón | Ejemplo |
|------|--------|---------|
| Unidad | `NN-descripcion-breve.md` | `01-gestion-proyectos-knowledge-management.md` |
| Boletín fácil resuelto | `boletin-NN-facil-resuelto.md` | `boletin-01-facil-resuelto.md` |
| Boletín fácil | `boletin-NN-facil.md` | `boletin-01-facil.md` |
| Boletín avanzado resuelto | `boletin-NN-avanzado-resuelto.md` | `boletin-01-avanzado-resuelto.md` |
| Boletín avanzado | `boletin-NN-avanzado.md` | `boletin-01-avanzado.md` |
| Proyecto | `proyecto-NN.md` | `proyecto-01.md` |
| Recursos | `public/resources/descriptivo.ext` | `guia-identidad-corporativa.md` |

**Reglas:**
- `NN` es número de 2 dígitos (01–11 para unidades, 01–10 para boletines/proyectos)
- Sin espacios en nombres de archivo
- Guiones como separadores
- Sin mayúsculas (excepto en recursos con nombre propio)

---

## 🔍 Pautas para edición asistida por IA

### Al crear o modificar contenido

1. **Leer primero** el archivo existente para entender su estructura y convenciones
2. **Mantener el tono conversacional** y lenguaje empresarial (no técnico-informático)
3. **No añadir comentarios** en el código a menos que se solicite explícitamente
4. **Respetar la indentación** y el formato exacto del texto existente
5. **Usar términos genéricos** ("hoja de cálculo", no "Excel")
6. **Incluir frontmatter YAML** en todo nuevo archivo Markdown
7. **No crear archivos Markdown de documentación** a menos que se indique explícitamente

### Al generar boletines

- 4 variantes por unidad: fácil, fácil-resuelto, avanzado, avanzado-resuelto
- Las versiones "resuelto" incluyen `**Solución:**` tras cada enunciado
- Usar `strip_solutions.py` para derivar versiones sin soluciones
- Cada boletín debe tener ~4–6 ejercicios

### Al modificar el CSS

- Paleta corporativa: `#1a5276` (azul oscuro), `#2e86c1` (azul medio), `#85c1e9` (azul claro)
- Fuente: Geist Sans (importada vía `@fontsource/geist-sans`)
- Clases principales: `.hero`, `.unit-card`, `.unit-link`, `.download-bar`, `.download-msg`

### Sidebar

- Las unidades llevan emojis temáticos en el título del sidebar (no en el frontmatter)
- Emojis por unidad: 📋 📊 📝 📈 🎬 🌐 🏢 🗂️ 🔐 🧩 🏁

---

## 📝 Historial de correcciones aplicadas

| Fecha | Cambio | Afecta a |
|-------|--------|----------|
| 2026-06-30 | Añadidas soluciones orientativas a "Ponte en la piel" en U1, U2, U3 (antes solo pistas) | U1, U2, U3 |
| 2026-06-30 | Corregidos encabezados `##` en secciones ⭐ y ❓ de U4, U5, U6 (faltaba prefijo heading) | U4, U5, U6 |
| 2026-06-30 | Renumerado ejercicio duplicado en U7 (8→9, 9→10) | U7 |
| 2026-06-30 | Tema claro por defecto + tarjetas + favicon SVG + portada.png + cc-by-sa.png + estilo hero shadow + botones + EPUB generado | Global |

---

## ⚡ Notas técnicas adicionales

- El layout de la web usa las **3 columnas por defecto de Starlight** (sidebar, contenido, TOC derecho)
- `portada.png` (1200×630px) se usa como **portada común** para PDF, EPUB y hero de la landing web
- Las rutas de portada en `index.md` y `pdf-cover.html` usan **URL absoluta** (`https://...`) para funcionar tanto en web como en PDF
- Los boletines y proyectos de unidad se generan para **U1–U10**. U11 es solo el proyecto final (sin boletín ni proyecto propio)
- `Ver unidad` en las cards del index es un botón azul degradado (`.unit-link` en `custom.css`)
- Los archivos de boletines "fáciles" y "avanzados" sin resolver contienen placeholders `[Enunciado del ejercicio]` — están pendientes de completar
- La empresa simulada **GesDoc Consulting** tiene su propia guía de identidad corporativa en `public/resources/guia-identidad-corporativa.md`
- Hay una plantilla de EDT/WBS en `public/resources/plantilla-edt-wbs.md` para la unidad 2
- La portada SVG (`portada.svg`) es la fuente vectorial de la portada PNG, generada mediante `create-portada.mjs`

---

## 📊 Estadísticas del proyecto

| Métrica | Valor |
|---------|-------|
| Archivos totales | ~94 |
| Archivos Markdown de contenido | 62 (1 index + 11 unidades + 40 boletines + 10 proyectos) |
| Archivos Markdown de documentación | 3 (README.md, AGENTS.md, guía identidad corporativa) |
| Scripts | 5 (PowerShell), 2 (HTML cover/footer), 1 (Python), 1 (JS) |
| Archivos CSS | 2 (custom.css 439 líneas, epub.css 31 líneas) |
| Imágenes | 4 PNG + 4 SVG |
| Líneas de contenido didáctico | ~3.000+ líneas de markdown |
| Líneas de CSS | ~470 |
| Líneas de scripts | ~450+ |

---

## 🔄 Flujo de trabajo típico

```
1. Editar contenido → src/content/docs/*.md
2. Previsualizar → npm run dev
3. Verificar build → npm run build
4. Desplegar → git push (GitHub Actions automático)
5. Generar PDF → npm run pdf (tras deploy)
6. Generar EPUB → npm run epub
```

Para añadir o modificar boletines:
```
1. Editar scripts/generate-boletines.ps1 (plantillas)
2. Ejecutar: pwsh -NoProfile -File scripts/generate-boletines.ps1
3. Si se modificaron versiones resueltas, derivar sin resolver:
   python strip_solutions.py
```
