# Curso Gestión Avanzada de la Información — CFGS Asistencia a la Dirección

**CC BY-SA 4.0** — Sergi Garcia Barea

## Descripción

Curso completo de **Gestión Avanzada de la Información** para el CFGS de Asistencia a la Dirección (módulo 0663), organizado en 11 unidades didácticas en Markdown. Cada unidad indica al final qué RAs oficiales del BOE cubre.

Orientado al perfil profesional de **Knowledge Manager**: desarrollar estrategias para captar, almacenar, organizar y difundir el capital intelectual de una organización.

Publicado como web estática con **Astro + Starlight** + GitHub Pages.

## Unidades (11)

```
01-gestion-proyectos-knowledge-management.md       → RA1
02-planificacion-seguimiento-proyectos.md           → RA1
03-documentos-profesionales-ofimatica.md            → RA2
04-informes-empresariales-datos-graficos.md         → RA2
05-videos-corporativos-audiovisual.md               → RA3
06-comunicacion-trabajo-equipo-web.md               → RA4
07-oficina-virtual-pagina-web.md                    → RA4
08-archivo-digital-gestion-documental.md            → RA5
09-flujos-trabajo-custodia-legal.md                 → RA5
10-proyecto-knowledge-management-i.md               → RA1, RA2, RA3, RA4, RA5
11-proyecto-knowledge-management-ii.md              → RA1, RA2, RA3, RA4, RA5
```

## Boletines (4 por unidad, U1-U10)

```
boletin-XX-facil-resuelto.md    → Ejercicios fáciles con soluciones
boletin-XX-facil.md             → Mismos ejercicios fáciles sin soluciones
boletin-XX-avanzado-resuelto.md → Ejercicios avanzados con soluciones
boletin-XX-avanzado.md          → Mismos ejercicios avanzados sin soluciones
```

## Proyectos de unidad (1 por unidad, U1-U10)

```
proyecto-XX.md → Pieza del proyecto global "Implantación de un Sistema de Knowledge Management"
```

Cada proyecto de unidad es una pieza incremental. En U10 se integran todas las piezas y en U11 se presenta el proyecto final completo.

## Hilo conductor: Proyecto global Knowledge Manager

| Unidad | El alumno crea... |
|--------|-------------------|
| U1 | Propuesta de proyecto KM para una empresa simulada |
| U2 | Planificación: cronograma, WBS, recursos, riesgos |
| U3 | Plantillas corporativas y base de conocimiento ofimática |
| U4 | Dashboard de indicadores e informe ejecutivo |
| U5 | Vídeo de presentación del proyecto KM |
| U6 | Espacio colaborativo en Teams/Notion/Slack |
| U7 | Portal web / intranet del conocimiento |
| U8 | Sistema de clasificación y archivo digital |
| U9 | Política de custodia, flujos documentales y checklist legal |
| U10 | Integración de todas las piezas y memoria del proyecto |
| U11 | Presentación y defensa final del sistema KM completo |

## Estilo

- **Tono:** conversacional, orientado a administración y finanzas. Sin tecnicismos informáticos.
- **Lenguaje:** empresarial, claro, práctico. Ej: "hoja de cálculo" en vez de "Excel", "documento de texto" en vez de "Word".
- **Secciones especiales:**
  - "⭐ Ponte en la piel del Knowledge Manager" — ejercicios prácticos situacionales
  - "❓ Dudas frecuentes" — preguntas y respuestas tipo FAQ
  - [NOTE], [WARNING], [TIP] en blockquotes
  - Casos prácticos: "Eres el asistente de dirección y te piden..."
- **Formato:** Markdown compatible con Google Docs (importación directa).
- **Idioma:** Castellano (raíz `/`).

## Stack tecnológico

- **Framework:** [Astro](https://astro.build/) + [Starlight](https://starlight.astro.build/)
- **Tema:** Azul corporativo (#1a5276) + degradados + Geist Sans
- **Idioma:** Castellano (raíz `/`)
- **Buscador:** Pagefind integrado (Starlight)
- **PDF:** `starlight-to-pdf` (generar PDF completo del sitio)
- **EPUB:** Pandoc (generar EPUB con sintaxis coloreada y portada)
- **Fuente:** Geist Sans (Vercel)
- **Despliegue:** GitHub Actions → GitHub Pages (`main` branch)

## Estructura del proyecto

```
src/content/docs/            → Markdown (castellano, raíz)
src/content/docs/index.md    → Portada (imagen principal) + cards unidades + barra descargas + licencia
src/styles/custom.css        → CSS premium (paleta, botones, hero, cards, download-bar)
public/portada.png           → Imagen de portada para PDF/EPUB
public/                      → PDFs y EPUBs exportados
public/epub/                 → EPUBs generados
public/pdf/                  → PDFs generados
scripts/
  pdf-cover.html             → Portada del PDF con imagen + título superpuesto
  pdf-header.html            → Header vacío (elimina la hora de impresión por defecto)
  pdf-footer.html            → Pie con número de página y línea decorativa
  generate-epub.ps1          → Genera EPUB con Pandoc
  epub.css                   → CSS para bloques de código en EPUB
  generate-boletines.ps1     → Genera boletines desde plantillas
  gen.ps1                    → Utilidad de generación
strip_solutions.py           → Script para quitar soluciones de boletines resueltos
astro.config.mjs             → Config principal (sidebar, i18n, plugins)
.github/workflows/deploy.yml → CI/CD para GitHub Pages
```

## Descargas

- **PDF:** `npm run pdf` (genera PDF con portada, sin header hora, footer estilizado)
- **EPUB:** `npm run epub` (genera EPUB con portada y sintaxis coloreada)
- Los enlaces de descarga están disponibles en la página de inicio (`index.md`)

## CI/CD

- `.nojekyll` en raíz del repo para evitar build Jekyll de GitHub Pages
- `actions/checkout@v5` + `actions/setup-node@v5` con Node 24
- `actions/upload-pages-artifact@v5` + `actions/deploy-pages@v5`

## Google Docs

Cada .md se importa directamente a Google Docs:
1. Abrir docs.google.com → Archivo → Importar
2. Seleccionar el .md → se renderiza con títulos, código, tablas y listas

## Comandos

```bash
npm run dev       # Servidor local (http://localhost:4321/ApuntesGestionAvanzadaInformacion)
npm run build     # Build estático en dist/
npm run preview   # Previsualizar build
npm run pdf       # Generar PDF en public/pdf/
npm run epub      # Generar EPUB en public/epub/
```

## Notas

- Los boletín y proyecto de unidad se generan para U1-U10. U11 es solo el proyecto final.
- Las unidades en el sidebar llevan emojis temáticos (📋, 📊, 📝, 📈, 🎬, 🌐, 🏢, 🗂️, 🔐, 🧩, 🏁)
- El layout de la web usa las 3 columnas por defecto de Starlight (sidebar, contenido, TOC derecho)
- `portada.png` se usa como portada común para PDF y EPUB, y se muestra en la web como hero de la landing
- Las rutas de la portada en `index.md` y `pdf-cover.html` usan URL absoluta para que funcionen tanto en web como en PDF generado
- `Ver unidad` en las cards es un botón azul degradado (`.unit-link` en `custom.css`)
- PDF generado con `--preceding-html scripts/pdf-cover.html`, `--header scripts/pdf-header.html` (vacío), `--footer scripts/pdf-footer.html` (numeración estilizada)
