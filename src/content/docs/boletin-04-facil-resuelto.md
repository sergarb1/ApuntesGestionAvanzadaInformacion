---
title: "Boletín 4 - Fácil: Informes empresariales: datos, gráficos y comunicaciones"
---

# Boletín 4 - Fácil: Informes empresariales: datos, gráficos y comunicaciones

## Ejercicio 1: Creación de un cuadro de mando con KPIs

Diseña un cuadro de mando en Excel para el departamento de atención al cliente. Debe incluir: 5 indicadores clave (KPIs) con semáforo (verde/ámbar/rojo), un gráfico de evolución mensual de llamadas atendidas y una tabla resumen con datos de los últimos 6 meses. Los KPIs son: tiempo medio de respuesta (< 2 min → verde, 2-5 min → ámbar, > 5 min → rojo), llamadas atendidas/día (> 50 → verde, 30-50 → ámbar, < 30 → rojo), satisfacción del cliente (> 85% → verde, 70-85% → ámbar, < 70% → rojo).

**Solución:**

`markdown
**CUADRO DE MANDO - ATENCIÓN AL CLIENTE**

**Estructura en Excel:**

Hoja1: DATOS (últimos 6 meses)
| Mes | Llamadas recibidas | Llamadas atendidas | Tiempo medio (min) | Satisfacción (%) |
|-----|:-----------------:|:------------------:|:------------------:|:----------------:|
| Enero | 1.200 | 1.150 | 2,5 | 82% |
| Febrero | 1.350 | 1.300 | 3,1 | 79% |
| Marzo | 1.100 | 1.080 | 1,8 | 88% |
| Abril | 1.400 | 1.320 | 4,2 | 75% |
| Mayo | 1.250 | 1.220 | 2,8 | 84% |
| Junio | 1.300 | 1.280 | 2,1 | 86% |

Hoja2: CUADRO DE MANDO

Panel de KPIs (formato semáforo con formato condicional):

| KPI | Valor Actual | Objetivo | Estado | Icono |
|-----|:-----------:|:--------:|:------:|:-----:|
| Tiempo medio respuesta | 2,1 min | < 2 min | Ámbar | 🟡 |
| Llamadas atendidas/día | 42,7 | > 50 | Ámbar | 🟡 |
| Satisfacción cliente | 86% | > 85% | Verde | 🟢 |
| % llamadas atendidas | 98,5% | > 95% | Verde | 🟢 |
| Abandonos antes de atención | 1,5% | < 3% | Verde | 🟢 |

**Fórmulas de Excel:**
- Media llamadas/día: =PROMEDIO(B2:B7)/22 (22 días hábiles/mes)
- Estado semáforo: =SI(CeldaValor > ObjetivoVerde; "Verde"; SI(CeldaValor > ObjetivoAmbar; "Ámbar"; "Rojo"))
- Formato condicional: 3 reglas con iconos (verde, amarillo, rojo)

**Gráfico de evolución:**
- Tipo: Líneas con marcadores
- Eje X: Meses (Enero a Junio)
- Eje Y: Llamadas atendidas
- Incluir línea de objetivo (50/día) como referencia
`

**Salida esperada:**
Un cuadro de mando con 5 KPIS, semáforo, gráfico de evolución mensual y tabla de datos.

> **💡 Explicación:** Los cuadros de mando permiten visualizar rápidamente el estado de los indicadores clave. El semáforo (verde/ámbar/rojo) facilita la identificación de áreas que requieren atención. El formato condicional de Excel automatiza la actualización de colores.

## Ejercicio 2: Combinación de correspondencia para comunicación comercial

Una agencia de seguros necesita enviar una carta personalizada a 200 clientes ofreciendo un descuento del 15% en su renovación anual. Diseña el proceso completo: estructura del origen de datos en Excel (campos necesarios), carta modelo en Word con los campos combinados, y las instrucciones paso a paso para ejecutar la combinación. Incluye un ejemplo de cómo filtrar solo a clientes con pólizas superiores a 500 €.

**Solución:**

`markdown
**COMBINACIÓN DE CORRESPONDENCIA - DESCUENTO RENOVACIÓN**

**Paso 1: Origen de datos en Excel (Clientes.xlsx)**

| ID | Nombre | Apellido | Tratamiento | Direccion | Ciudad | CP | ImportePoliza | FechaVencimiento |
|----|--------|----------|------------|-----------|--------|----|:-------------:|:----------------:|
| 1 | María | García | Sra. | C/Mayor 10 | Madrid | 28001 | 850 € | 15/03/2027 |
| 2 | José | López | Sr. | Avda.Paz 5 | Barcelona | 08002 | 320 € | 22/03/2027 |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |

**Paso 2: Carta modelo en Word**

[Logotipo Aseguradora]
[Dirección de la empresa]

«Tratamiento» «Nombre» «Apellido»
«Direccion»
«Ciudad», «CP»

Madrid, [Fecha actual]

Estimado/a «Tratamiento» «Apellido»:

Nos complace informarle que, como cliente valorado, le ofrecemos un **descuento
exclusivo del 15%** en la renovación de su póliza con vencimiento el próximo
«FechaVencimiento».

El importe actual de su póliza es de «ImportePoliza». Con este descuento,
su nueva prima sería de **[=«ImportePoliza»*0,85]**.

Para aceptar esta oferta, no necesita hacer nada: el descuento se aplicará
automáticamente en su próxima factura.

Atentamente,
Departamento de Fidelización
[Teléfono de contacto]

**Paso 3: Filtro para clientes con póliza > 500 €**
En Word: Correspondencia > Editar lista de destinatarios > Filtrar
Configurar filtro: ImportePoliza es mayor que 500

**Paso 4: Ejecutar combinación**
Finalizar y combinar > Imprimir documentos (o Enviar correo electrónico)
`

**Salida esperada:**
Una carta modelo con campos combinados, origen de datos Excel configurado y filtro aplicado para seleccionar clientes objetivo.

> **💡 Explicación:** La combinación de correspondencia permite personalizar comunicaciones masivas. El filtro evita enviar la oferta a clientes que no cumplen los criterios. El cálculo del descuento se realiza directamente en Word usando el campo = (fórmula).

## Ejercicio 3: Creación de una infografía empresarial

Diseña una infografía en formato vertical (A4) que resuma los logros anuales de una empresa de logística. Debe incluir: título llamativo, 4 datos clave con iconos (paquetes enviados, km recorridos, empleados, clientes), un gráfico de barras de crecimiento interanual, una línea de tiempo con los hitos del año y un código de colores corporativos (azul y naranja).

**Solución:**

`markdown
**INFOGRÁFICA ANUAL - LOGÍSTICA RÁPIDA S.A.**

**Estructura de la infografía (PowerPoint - diapositiva vertical):**

1. **Encabezado (20% del espacio):**
   - Título: "LOGÍSTICA RÁPIDA S.A. - INFORME ANUAL 2026"
   - Subtítulo: "Un año de crecimiento y expansión"
   - Logotipo en la esquina superior derecha
   - Fondo: degradado azul corporativo (#003366 → #006699)

2. **Datos clave (30% del espacio) - 4 tarjetas:**
   ┌──────────────────────────────────────────────────┐
   │ 📦 2.500.000    🚛 850.000     👥 340      🤝 1.200 │
   │ Paquetes        Km recorridos  Empleados    Clientes │
   │ +22% vs 2025    +15% vs 2025   +12% vs 2025 +18% vs 2025 │
   └──────────────────────────────────────────────────┘

3. **Gráfico de crecimiento (25% del espacio):**
   - Tipo: Barras agrupadas
   - Datos: Ingresos por trimestre (2025 vs 2026)
   - Colores: Azul (2025), Naranja (2026)
   - Destacar: "Q4: récord histórico de 12,5 M €"

4. **Línea de tiempo (25% del espacio):**
   │ Ene │ Mar │ Jun │ Sep │ Dic │
   │ Apertura │ Nuevo │ Lanzamiento │ Premio │ Expansión │
   │ almacén │ software │ app cliente │ calidad │ internacional │

**Colores corporativos:**
- Primario: Azul #003366 (fondos, títulos)
- Secundario: Naranja #FF6600 (destacados, acentos)
- Fondo: Blanco #FFFFFF y gris claro #F5F5F5
`

**Salida esperada:**
Una infografía empresarial completa con datos clave, gráfico de crecimiento y línea de tiempo.

> **💡 Explicación:** Las infografías combinan datos visuales y texto para comunicar información de forma atractiva y rápida. PowerPoint es una herramienta accesible para crearlas. La distribución en bloques (encabezado, datos, gráfico, tiempo) facilita la lectura.

## Ejercicio 4: Informe empresarial con gráficos dinámicos

Elabora un informe de ventas trimestral en Excel para una cadena de tiendas de ropa. Debe incluir: portada con título y fecha, tabla de datos (6 meses × 3 tiendas), 2 gráficos (evolución de ventas por tienda y comparativa por categoría de producto), análisis de tendencias y un cuadro de conclusiones con recomendaciones.

**Solución:**

`markdown
**INFORME DE VENTAS TRIMESTRAL - MODA URBANA S.L.**

**Hoja1: PORTADA**
- Título: "INFORME DE VENTAS - PRIMER SEMESTRE 2026"
- Subtítulo: "Moda Urbana S.L. - 3 tiendas"
- Fecha: Julio 2026
- Elaborado por: Departamento de Administración

**Hoja2: DATOS**
| Mes | Tienda Centro | Tienda Norte | Tienda Sur | Total |
|-----|:------------:|:------------:|:----------:|:-----:|
| Enero | 45.000 € | 32.000 € | 28.000 € | 105.000 € |
| Febrero | 42.000 € | 30.000 € | 25.000 € | 97.000 € |
| Marzo | 52.000 € | 38.000 € | 35.000 € | 125.000 € |
| Abril | 48.000 € | 35.000 € | 32.000 € | 115.000 € |
| Mayo | 55.000 € | 40.000 € | 38.000 € | 133.000 € |
| Junio | 60.000 € | 45.000 € | 42.000 € | 147.000 € |

**Hoja3: INFORME**

**Gráfico 1: Evolución de ventas por tienda**
- Tipo: Líneas con marcadores
- Series: Tienda Centro (azul), Tienda Norte (naranja), Tienda Sur (verde)
- Tendencia: línea de tendencia lineal para cada serie

**Gráfico 2: Ventas por categoría de producto**
- Tipo: Columnas apiladas
- Categorías: Hombre, Mujer, Infantil, Accesorios
- Porcentaje de cada categoría sobre el total

**Análisis de tendencias:**
- La tienda Centro es la de mayor facturación (302.000 € en el semestre)
- Crecimiento general positivo: +40% de enero a junio
- La categoría Mujer representa el 45% de las ventas totales
- El mes de junio ha sido el mejor del semestre

**Conclusiones y recomendaciones:**
1. Incrementar stock en la Tienda Centro ante el crecimiento sostenido
2. Reforzar la categoría de Accesorios (solo 8% de ventas, margen alto)
3. Analizar la caída de febrero para evitar su repetición
4. Proyectar cierre de 2026: 310.000 €/trimestre (estimación)
`

**Salida esperada:**
Un informe estructurado en 3 hojas (portada, datos, análisis) con gráficos, tendencias y conclusiones.

> **💡 Explicación:** Un informe empresarial debe contar una historia con los datos. La estructura típica es: portada (presentación), datos (hechos), análisis (interpretación) y conclusiones (recomendaciones). Los gráficos de líneas son ideales para mostrar tendencias temporales.
