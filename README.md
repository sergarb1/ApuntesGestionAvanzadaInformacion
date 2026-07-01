<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion/logo-gai.svg">
  <img alt="Gestión Avanzada de la Información" src="https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion/logo-gai.svg" width="600">
</picture>

# Gestión Avanzada de la Información — CFGS Asistencia a la Dirección

[![CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-blue.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
[![Astro](https://img.shields.io/badge/Astro-7-FF5D01?logo=astro&logoColor=white)](https://astro.build)
[![Starlight](https://img.shields.io/badge/Starlight-0.41-3B5BDB?logo=starlight)](https://starlight.astro.build)
[![Node](https://img.shields.io/badge/Node-24-339933?logo=node.js&logoColor=white)](https://nodejs.org)
[![GitHub Pages](https://img.shields.io/badge/Deploy-GitHub%20Pages-222222?logo=githubpages)](https://pages.github.com)
[![Status](https://img.shields.io/badge/Status-Active-success)](https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion/)

Curso completo del **módulo 0663 — Gestión Avanzada de la Información**, perteneciente al **CFGS Asistencia a la Dirección** (RD 1583/2011). Orientado al perfil profesional de **Knowledge Manager**.

> Formar profesionales capaces de diseñar e implantar sistemas de gestión del conocimiento: capturar, almacenar, organizar y difundir el capital intelectual de una organización.

---

## 🌐 Web del curso

**https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion/**

---

## 📦 Contenido

| Recurso | Cantidad | Descripción |
|---------|----------|-------------|
| **Unidades didácticas** | 11 | Contenido teórico-práctico completo (171–356 líneas c/u) |
| **Boletines de ejercicios** | 40 | 4 por unidad (fácil, fácil resuelto, avanzado, avanzado resuelto) |
| **Proyectos de unidad** | 10 | Piezas incrementales del proyecto global de KM |
| **Proyecto final** | 1 | Integración en U10 + presentación/defensa en U11 |
| **Recursos adicionales** | 2 | Guía de identidad corporativa + plantilla EDT/WBS |
| **Total archivos** | >90 | Markdown, scripts, CSS, imágenes, config |

---

## 🧭 Hilo conductor: Proyecto global Knowledge Manager

Todas las unidades alimentan un proyecto común: la **implantación de un Sistema de Knowledge Management** en una empresa simulada (**GesDoc Consulting**). Cada unidad aporta una pieza:

| Unidad | Pieza del proyecto |
|--------|-------------------|
| **U1** 📋 | Propuesta de proyecto KM para la empresa simulada |
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

## 📚 Unidades y Resultados de Aprendizaje (RA)

Cada unidad cubre los RA oficiales del BOE (RD 1583/2011):

| # | Unidad | RA |
|---|--------|----|
| 01 | Gestión de proyectos Knowledge Management | RA1 |
| 02 | Planificación y seguimiento de proyectos | RA1 |
| 03 | Documentos profesionales con ofimática | RA2 |
| 04 | Informes empresariales con datos y gráficos | RA2 |
| 05 | Vídeos corporativos y audiovisual | RA3 |
| 06 | Comunicación y trabajo en equipo en la web | RA4 |
| 07 | Oficina virtual y página web | RA4 |
| 08 | Archivo digital y gestión documental | RA5 |
| 09 | Flujos de trabajo y custodia legal | RA5 |
| 10 | Proyecto Knowledge Management I | RA1–RA5 |
| 11 | Proyecto Knowledge Management II | RA1–RA5 |

---

## 🛠️ Stack tecnológico

| Componente | Tecnología |
|------------|-----------|
| **Framework web** | [Astro](https://astro.build/) 7 + [Starlight](https://starlight.astro.build/) 0.41 |
| **Lenguaje** | TypeScript (strict) |
| **Fuente tipográfica** | [Geist Sans](https://vercel.com/font) (Vercel) |
| **Tema visual** | Azul corporativo (#1a5276) — modo claro por defecto |
| **CSS** | 439 líneas de estilos premium (hero, cards, botones, descargas) |
| **Buscador** | Pagefind (integrado en Starlight) |
| **Syntax highlighting** | Shiki |
| **Generación PDF** | `starlight-to-pdf` (Chromium headless) |
| **Generación EPUB** | Pandoc |
| **Imágenes** | `sharp` (generación programática de portada) |
| **Despliegue** | GitHub Actions → GitHub Pages |
| **Node.js** | 24 |

---

## 📁 Estructura del proyecto

```
.
├── src/
│   ├── content/
│   │   └── docs/                  # 62 archivos Markdown
│   │       ├── index.md           # Landing page con hero + cards + descargas
│   │       ├── 01-*.md … 11-*.md # 11 unidades didácticas
│   │       ├── boletin-01-*.md … 10-*.md # 40 boletines de ejercicios
│   │       └── proyecto-01.md … 10.md    # 10 proyectos de unidad
│   ├── content.config.ts          # Configuración de colecciones Astro
│   └── styles/
│       └── custom.css             # Tema CSS completo (439 líneas)
├── public/
│   ├── portada.png                # Imagen de portada para la web
│   ├── favicon.svg / favicon.png  # Favicons
│   ├── logo.svg / logo-gai.svg    # Logotipos
│   ├── cc-by-sa.png               # Badge de licencia
│   ├── pdf/                       # PDFs generados
│   ├── epub/                      # EPUBs generados
│   └── resources/                 # Recursos adicionales (plantillas, guías)
├── scripts/
│   ├── create-portada.mjs         # Genera portada.png desde SVG con sharp
│   ├── generate-boletines.ps1     # Genera boletines y proyectos desde plantillas
│   ├── generate-epub.ps1          # Genera EPUB completo con Pandoc
│   ├── gen.ps1                    # Utilidad de ayuda
│   ├── pdf-cover.html             # Portada del PDF con imagen + título
│   ├── pdf-header.html            # Header vacío (elimina hora de impresión)
│   ├── pdf-footer.html            # Pie con número de página y línea decorativa
│   └── epub.css                   # CSS para bloques de código en EPUB
├── portada.png                    # Portada para EPUB (raíz del proyecto)
├── portada.svg                    # Fuente SVG de la portada
├── strip_solutions.py             # Script para quitar soluciones de boletines
├── astro.config.mjs               # Config principal (sidebar, i18n, plugins)
├── package.json
├── tsconfig.json
├── .github/workflows/deploy.yml   # CI/CD para GitHub Pages
├── .nojekyll                      # Evita build Jekyll en GitHub Pages
├── README.md
└── AGENTS.md                      # Instrucciones para asistentes AI
```

---

## 🚀 Desarrollo

### Requisitos

- **Node.js** 24+
- **npm** 10+
- **Pandoc** 3+ (solo para EPUB)
- **PowerShell** 7+ (solo para scripts de generación)

### Comandos

| Comando | Descripción |
|---------|-------------|
| `npm run dev` | Servidor local de desarrollo |
| `npm run build` | Build estático en `dist/` |
| `npm run preview` | Previsualizar el build |
| `npm run pdf` | Generar PDF en `public/pdf/` |
| `npm run epub` | Generar EPUB en `public/epub/` |
| `npm run astro` | CLI de Astro |

> **Nota:** El PDF requiere que el sitio esté desplegado en GitHub Pages o corriendo localmente (usa `pdf:local` modificando la URL).

---

## 📖 Guía de estilo del contenido

- **Tono:** Conversacional, orientado a administración y finanzas. Sin tecnicismos informáticos.
- **Lenguaje:** Empresarial, claro, práctico. Ej: "hoja de cálculo" en vez de "Excel", "documento de texto" en vez de "Word".
- **Secciones especiales por unidad:**
  - `## ⭐ Ponte en la piel del Knowledge Manager` — ejercicios prácticos situacionales
  - `## ❓ Dudas frecuentes` — FAQ
  - `[NOTE]`, `[WARNING]`, `[TIP]` en blockquotes
  - Casos prácticos: "Eres el asistente de dirección y te piden..."
- **Formato:** Markdown compatible con Google Docs (importación directa).
- **Idioma:** Castellano (raíz `/`).

---

## 📥 Descargas offline

- **PDF:** `npm run pdf` — documento completo con portada, sin cabecera, numeración estilizada
- **EPUB:** `npm run epub` — libro electrónico con portada y sintaxis coloreada

Los enlaces de descarga están disponibles en la página de inicio.

---

## 🤖 Asistencia AI (AGENTS.md)

El repositorio incluye un archivo `AGENTS.md` con instrucciones detalladas para que asistentes de IA (opencode, Copilot, etc.) puedan entender y colaborar eficazmente en el proyecto. Cubre:

- Estructura completa del proyecto
- Convenciones de estilo de contenido
- Descripción del hilo conductor pedagógico
- Stack tecnológico
- Guía para generar boletines y proyectos
- Historial de correcciones aplicadas

---

## 🧪 Testing y validación

Actualmente el proyecto no cuenta con pruebas automatizadas. La validación se realiza mediante:
- Build exitoso con `npm run build`
- Revisión visual del sitio generado
- Generación correcta de PDF y EPUB

---

## 📄 Licencia

**CC BY-SA 4.0** — *Sergi Garcia Barea*

Este obra está bajo una [Licencia Creative Commons Atribución-CompartirIgual 4.0 Internacional](https://creativecommons.org/licenses/by-sa/4.0/).

Eres libre de:
- **Compartir** — copiar y redistribuir el material en cualquier medio o formato
- **Adaptar** — remezclar, transformar y construir a partir del material

Bajo los siguientes términos:
- **Atribución** — Debes reconocer la autoría de forma adecuada
- **CompartirIgual** — Si remezclas o transformas, debes distribuir bajo la misma licencia

---

## 👤 Autor

**Sergi Garcia Barea** — Docente del CFGS Asistencia a la Dirección

- 🌐 Web del curso: https://sergarb1.github.io/ApuntesGestionAvanzadaInformacion/
- 📧 Contacto: a través del repositorio

---

## ⭐ ¿Te resulta útil?

Si este proyecto te sirve como material didáctico o referencia:
- ⭐ Dale estrella al repositorio
- 📤 Compártelo con otros docentes
- 🐛 Reporta incidencias o sugiere mejoras en [Issues](https://github.com/sergarb1/ApuntesGestionAvanzadaInformacion/issues)
