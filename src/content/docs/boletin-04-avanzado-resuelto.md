---
title: "Boletín 4 - Avanzado: Informes empresariales: datos, gráficos y comunicaciones"
---

# Boletín 4 - Avanzado: Informes empresariales: datos, gráficos y comunicaciones

## Ejercicio 1: Cuadro de mando interactivo con segmentadores y líneas de tiempo (⭐)

Diseña un cuadro de mando interactivo en Excel para una cadena de 10 tiendas. Debe incluir: tabla de ventas diarias (5.000+ registros de todo el año), tabla dinámica resumen por tienda y mes, 2 gráficos dinámicos (ventas por tienda y evolución temporal), segmentadores para filtrar por tienda, región y tipo de producto, y una línea de tiempo (timeline) para filtrar por rango de fechas. Describe la configuración paso a paso.

**Solución:**

`markdown
**CUADRO DE MANDO INTERACTIVO - VENTAS ANUALES**

**Paso 1: Datos brutos (Hoja: VENTAS)**
| Fecha | Tienda | Región | Producto | Categoría | Importe | Unidades |
|-------|--------|--------|----------|-----------|--------|----------|-----------|
| 01/01/2026 | Tienda A | Norte | Producto 1 | Electrónica | 45,00 | 2 |
| 01/01/2026 | Tienda B | Sur | Producto 2 | Hogar | 32,50 | 1 |
| ... | ... | ... | ... | ... | ... | ... |

Formato: Tabla (Ctrl+T) para que los datos sean dinámicos.

**Paso 2: Tabla dinámica (Hoja: RESUMEN)**
- Filas: Tienda, Producto
- Columnas: Mes (agrupado automáticamente desde Fecha)
- Valores: Suma de Importe, Recuento de Unidades

**Paso 3: Gráficos dinámicos vinculados**
- Gráfico 1: Columnas agrupadas (Ventas por tienda)
- Gráfico 2: Líneas (Evolución mensual de ventas)
- Gráfico 3: Anillos (Distribución por categoría)

**Paso 4: Segmentadores y línea de tiempo**
- Insertar 3 segmentadores: Tienda, Región, Categoría
- Conectar cada segmentador a la tabla dinámica y a los 3 gráficos
- Insertar línea de tiempo: basada en el campo Fecha
- Conectar la línea de tiempo a la tabla dinámica y gráficos

**Configuración visual:**
- Mover todos los elementos a la Hoja DASHBOARD
- Ocultar la Hoja VENTAS (para evitar ediciones accidentales)
- Ajustar tamaño de gráficos para que encajen en una sola pantalla (1920x1080)
- Añadir un título: "DASHBOARD DE VENTAS 2026"
`

**Salida esperada:**
Un dashboard interactivo con tabla dinámica, 3 gráficos vinculados, 3 segmentadores y una línea de tiempo funcionando sincronizadamente.

> **💡 Explicación:** Los segmentadores y líneas de tiempo convierten un informe estático en una herramienta interactiva de análisis. La clave está en conectar todos los elementos a la misma tabla dinámica para que los filtros se sincronicen automáticamente.

## Ejercicio 2: Scorecard dinámico con formato condicional avanzado (⭐⭐)

Diseña un scorecard de rendimiento para evaluar a 20 comerciales. Cada comercial tiene 4 indicadores: ventas mensuales (€), clientes nuevos, tasa de conversión (%) y cumplimiento de objetivos (%). Crea un sistema de puntuación ponderada (30% ventas, 25% clientes, 20% conversión, 25% cumplimiento) que asigne una nota final del 0 al 10. Utiliza formato condicional con barras de datos, escalas de color y conjuntos de iconos. Incluye un ranking automático.

**Solución:**

`markdown
**SCORECARD COMERCIAL - RENDIMIENTO MENSUAL**

**Estructura en Excel:**

| Comercial | Ventas (€) | Clientes Nuevos | Tasa Conversión | % Objetivos | Puntuación | Ranking |
|-----------|:---------:|:--------------:|:--------------:|:----------:|:---------:|:------:|
| Ana López | 45.000 | 8 | 22% | 95% | 8,2 | 2 |
| Carlos Ruiz | 52.000 | 5 | 18% | 110% | 8,5 | 1 |
| ... | ... | ... | ... | ... | ... | ... |

**Fórmulas:**

1. **Normalización de indicadores (0-10):**
   - Ventas: =MIN(10; (Ventas/MaxVentas)*10)
   - Clientes: =MIN(10; (Clientes/MaxClientes)*10)
   - Conversión: =MIN(10; (Tasa/TasaMax)*10)
   - Cumplimiento: =MIN(10; (%Objetivo/100)*10)

2. **Puntuación ponderada:**
   = VentasNorm*0,30 + ClientesNorm*0,25 + ConversionNorm*0,20 + CumplimientoNorm*0,25

3. **Ranking:**
   = JERARQUIA(Puntuación; RangoPuntuaciones; 0)

**Formato condicional:**
- Ventas: Barra de datos (degradado azul)
- Tasa Conversión: Escala de color 3 colores (rojo-blanco-verde)
- % Objetivos: Conjunto de iconos (✅ > 100%, ⚠️ 80-100%, ❌ < 80%)
- Puntuación: Barra de datos con valor máximo 10
- Ranking: Formato condicional para destacar Top 3 (fondo dorado/plateado/bronce)

**Condicional adicional:**
Si Ranking <= 3 → fondo verde claro
Si Ranking >= 18 → fondo rojo claro
`

**Salida esperada:**
Un scorecard con 20 comerciales evaluados, puntuación ponderada automática, ranking y formato condicional avanzado.

> **💡 Explicación:** Los scorecards permiten evaluar el rendimiento de forma objetiva combinando múltiples indicadores. La normalización asegura que todos los indicadores tengan el mismo rango (0-10) antes de aplicar la ponderación. El formato condicional avanzado mejora la legibilidad.

## Ejercicio 3: Infografía dinámica basada en datos con tablas dinámicas (⭐⭐⭐)

Crea una infografía dinámica en Excel que se actualice automáticamente al cambiar los datos de origen. Los datos son: encuesta de satisfacción de 500 clientes con campos (edad, género, producto, puntuación 1-5, recomendaría S/N, comentarios). La infografía debe incluir: indicador de NPS (Net Promoter Score), 2 gráficos dinámicos (satisfacción por producto y edad), tarjetas con KPIs (media, total respuestas, % promotores), y formato condicional que resalte productos con NPS inferior a 30.

**Solución:**

`markdown
**INFOGRÁFICA DINÁMICA DE SATISFACCIÓN - NPS**

**Paso 1: Datos de encuesta (Hoja: ENCUESTA)**
| ID | Edad | Género | Producto | Puntuación (1-5) | Recomendaría | Comentarios |
|----|------|--------|----------|:---------------:|:------------:|------------|
| 1 | 25-34 | Mujer | Producto A | 5 | Sí | Excelente |
| 2 | 35-44 | Hombre | Producto B | 3 | No | Regular |
| ... | ... | ... | ... | ... | ... | ... |

**Paso 2: Cálculo del NPS**
- Promotores (Puntuación 5): =CONTAR.SI.CONJUNTO
- Pasivos (Puntuación 3-4): =CONTAR.SI.CONJUNTO
- Detractores (Puntuación 1-2): =CONTAR.SI.CONJUNTO
- % Promotores = Promotores / Total
- % Detractores = Detractores / Total
- **NPS = % Promotores - % Detractores** (rango: -100 a +100)

**Paso 3: Tarjetas KPI**
┌──────────────────────────────────────────────────────────┐
│ ⭐ Satisfacción media: 4,2/5    │ 📊 Total respuestas: 500    │
│ 👍 % Promotores: 52%            │ 👎 % Detractores: 12%      │
│ 🏆 **NPS: +40** (Excelente)     │                           │
└──────────────────────────────────────────────────────────┘

**Paso 4: Gráficos dinámicos**
- Gráfico 1: Barras (Satisfacción media por producto) con línea de objetivo (4,0)
- Gráfico 2: Columnas (Distribución de edades) con segmentación por género
- Gráfico 3: Anillo (Proporción Promotores/Pasivos/Detractores)

**Paso 5: Formato condicional para NPS bajo**
Regla: =SI(NPS_Producto < 30; "REVISAR"; "OK")
Aplicar a: celdas de nombre de producto
Formato: Fondo rojo claro, texto rojo oscuro, negrita
`

**Salida esperada:**
Una infografía interactiva que calcula el NPS automáticamente y se actualiza al añadir nuevas respuestas de la encuesta.

> **💡 Explicación:** El NPS (Net Promoter Score) es un indicador estándar de satisfacción y lealtad. Se calcula como el porcentaje de promotores menos el porcentaje de detractores. Un NPS superior a 0 es bueno; superior a 50 es excelente.

## Ejercicio 4: Generación automatizada de informes trimestrales (⭐⭐⭐⭐)

Diseña un sistema en Excel que genere automáticamente un informe trimestral de ventas con los siguientes requisitos: los datos brutos están en una hoja (12 meses × 5 productos × 4 regiones), el informe debe incluir portada dinámica (con trimestre seleccionable), tabla resumen (top 10 productos), gráfico de tendencias, tabla comparativa intertrimestral y exportación automática a PDF. Todo debe actualizarse al cambiar el trimestre en una celda desplegable.

**Solución:**

`markdown
**SISTEMA AUTOMATIZADO DE INFORMES TRIMESTRALES**

**Estructura del archivo:**

Hoja1: DATOS BRUTOS (12 meses × 5 productos × 4 regiones = 240 filas)
Hoja2: INFORME (todo el contenido del informe)
Hoja3: PARÁMETROS (celda desplegable para seleccionar trimestre)

**Paso 1: Configuración de parámetros (Hoja PARÁMETROS)**
- Celda A1: "Seleccione trimestre"
- Celda B1: Validación de datos > Lista > "T1, T2, T3, T4"
- Celdas auxiliares para fechas:
  - FechaInicio = SI(B1="T1"; "01/01"; SI(B1="T2"; "01/04"; ...))
  - FechaFin = SI(B1="T1"; "31/03"; SI(B1="T2"; "30/06"; ...))

**Paso 2: Fórmulas dinámicas (Hoja INFORME)**

**Portada dinámica:**
- Título: = "INFORME DE VENTAS - " & PARÁMETROS!B1 & " 2026"
- Fecha: = "Periodo: " & PARÁMETROS!FechaInicio & " al " & PARÁMETROS!FechaFin

**Tabla top 10 productos:**
Usar =JERARQUIA y =INDICE/COINCIDIR para extraer los 10 productos
con mayores ventas del trimestre seleccionado.

Fórmula para filtrar ventas del trimestre:
=SUMAR.SI.CONJUNTO(Ventas; Producto; productoX; Fecha; ">="&FechaInicio; Fecha; "<="&FechaFin)

**Gráfico dinámico:**
- Tipo: Columnas agrupadas
- Datos: Ventas mensuales del trimestre (3 meses × 5 productos)
- El rango se actualiza automáticamente al cambiar el trimestre

**Tabla comparativa intertrimestral:**
| Producto | T-1 actual | T-2 anterior | Variación | % Variación |
|----------|:---------:|:------------:|:---------:|:-----------:|
| Producto A | 45.000 € | 42.000 € | 3.000 € | +7,1% |
| ... | ... | ... | ... | ... |

**Paso 3: Exportación a PDF**
Para exportar el informe a PDF:
- Archivo > Exportar > Crear PDF/XPS
- Seleccionar la hoja INFORME como área de exportación
- Marcar "Optimizar para: estándar"
- Nombrar el archivo según el trimestre seleccionado

Para hacerlo más rápido, se puede asignar el comando a la barra de acceso rápido:
- Clic derecho en el botón "Exportar a PDF" de la cinta de opciones
- "Agregar a la barra de herramientas de acceso rápido"

**Paso 4: Instrucciones de uso:**
1. Seleccionar el trimestre en la celda desplegable (PARÁMETROS!B1)
2. Todo el informe se actualiza automáticamente
3. Archivo > Exportar > Crear PDF/XPS para guardar el informe
`

**Salida esperada:**
Un sistema completo que genera informes trimestrales automáticamente al cambiar un parámetro, listo para exportar a PDF.

> **💡 Explicación:** La automatización de informes mediante parámetros y fórmulas dinámicas reduce drásticamente el tiempo de elaboración. Al cambiar el trimestre en la celda desplegable, todas las fórmulas, tablas y gráficos se actualizan sin necesidad de programar. La exportación a PDF desde Archivo permite distribuir el informe en formato profesional.

## 🧠 Tu turno como Knowledge Manager

### Escenario: El gráfico que no cuenta nada

La directora general de GesDoc Consulting recibe tu informe ejecutivo con 5 gráficos, tablas y un dashboard. Te llama y te dice: "He mirado los gráficos y no sé si las cosas van bien o mal. Esto parece una sopa de números. Necesito que en una diapositiva me expliques el estado del proyecto en 30 segundos."

**Tu misión:** ¿Cuál es el problema? ¿Estás mostrando datos o estás contando una historia? Rediseña el mensaje: ¿qué gráfico quitas, cuál mantienes y qué titular le pones a cada uno? Prepara la diapositiva mentalmente con la estructura: titular → dato → conclusión.

> **Pistas para la reflexión:**
> - Menos es más: un gráfico bien explicado vale más que 5 gráficos sin contexto
> - Cada gráfico debe responder a una pregunta concreta: ¿vamos bien de plazo? ¿de presupuesto? ¿de calidad?
> - El titular debe ser la conclusión, no la descripción: "Vamos bien de plazo pero nos estamos saliendo del presupuesto" vs "Gráfico de evolución del proyecto"
