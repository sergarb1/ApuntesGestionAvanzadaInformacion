---
title: "Boletín 4 - Avanzado: Informes empresariales: datos, gráficos y comunicaciones"
---


## ✏️ Ejercicio 1: Cuadro de mando interactivo con segmentadores y líneas de tiempo (⭐)

Diseña un cuadro de mando interactivo en Excel para una cadena de 10 tiendas. Debe incluir: tabla de ventas diarias (5.000+ registros de todo el año), tabla dinámica resumen por tienda y mes, 2 gráficos dinámicos (ventas por tienda y evolución temporal), segmentadores para filtrar por tienda, región y tipo de producto, y una línea de tiempo (timeline) para filtrar por rango de fechas. Describe la configuración paso a paso.

<aside type="tip">

Los datos deben estar en formato Tabla (Ctrl+T) para que las tablas dinámicas se expandan automáticamente al añadir nuevos registros. Los segmentadores se insertan desde Analizar > Insertar segmentador. La línea de tiempo requiere que el campo de fecha esté en formato de fecha válido. Conecta todos los elementos a la misma tabla dinámica para que los filtros se sincronicen.

</aside>

## ✏️ Ejercicio 2: Scorecard dinámico con formato condicional avanzado (⭐⭐)

Diseña un scorecard de rendimiento para evaluar a 20 comerciales. Cada comercial tiene 4 indicadores: ventas mensuales (€), clientes nuevos, tasa de conversión (%) y cumplimiento de objetivos (%). Crea un sistema de puntuación ponderada (30% ventas, 25% clientes, 20% conversión, 25% cumplimiento) que asigne una nota final del 0 al 10. Utiliza formato condicional con barras de datos, escalas de color y conjuntos de iconos. Incluye un ranking automático.

<aside type="tip">

Normaliza cada indicador a una escala 0-10 dividiendo entre el valor máximo del rango. La puntuación ponderada se calcula multiplicando cada indicador normalizado por su peso. Para el ranking, usa la función JERARQUIA. El formato condicional con barras de datos es ideal para comparar visualmente magnitudes; las escalas de color funcionan bien para porcentajes.

</aside>

## ✏️ Ejercicio 3: Infografía dinámica basada en datos con tablas dinámicas (⭐⭐⭐)

Crea una infografía dinámica en Excel que se actualice automáticamente al cambiar los datos de origen. Los datos son: encuesta de satisfacción de 500 clientes con campos (edad, género, producto, puntuación 1-5, recomendaría S/N, comentarios). La infografía debe incluir: indicador de NPS (Net Promoter Score), 2 gráficos dinámicos (satisfacción por producto y edad), tarjetas con KPIs (media, total respuestas, % promotores), y formato condicional que resalte productos con NPS inferior a 30.

<aside type="tip">

El NPS se calcula como %Promotores - %Detractores. Los promotores son los que puntúan 5; los detractores los que puntúan 1-2; los pasivos son 3-4. Usa CONTAR.SI.CONJUNTO para clasificar las respuestas. Las tarjetas KPI se crean con cuadros de texto vinculados a celdas. El formato condicional resalta automáticamente los productos con NPS bajo.

</aside>

## ✏️ Ejercicio 4: Generación automatizada de informes trimestrales (⭐⭐⭐⭐)

Diseña un sistema en Excel que genere automáticamente un informe trimestral de ventas con los siguientes requisitos: los datos brutos están en una hoja (12 meses × 5 productos × 4 regiones), el informe debe incluir portada dinámica (con trimestre seleccionable), tabla resumen (top 10 productos), gráfico de tendencias, tabla comparativa intertrimestral y exportación automática a PDF. Todo debe actualizarse al cambiar el trimestre en una celda desplegable.

<aside type="tip">

La celda desplegable se crea con Validación de datos > Lista. Usa SUMAR.SI.CONJUNTO con criterios de fecha (>= FechaInicio y <= FechaFin) para filtrar los datos del trimestre. Para el top 10, combina JERARQUIA con INDICE y COINCIDIR. Para exportar a PDF, usa Archivo > Exportar > Crear PDF/XPS. Diseña las fórmulas para que todas referencien la celda del trimestre seleccionado.

</aside>

## 🧠 Tu turno como Knowledge Manager

<div class="escenario-box">
### Escenario: El gráfico que no cuenta nada

La directora general de GesDoc Consulting recibe tu informe ejecutivo con 5 gráficos, tablas y un dashboard. Te llama y te dice: "He mirado los gráficos y no sé si las cosas van bien o mal. Esto parece una sopa de números. Necesito que en una diapositiva me expliques el estado del proyecto en 30 segundos."

**Tu misión:** ¿Cuál es el problema? ¿Estás mostrando datos o estás contando una historia? Rediseña el mensaje: ¿qué gráfico quitas, cuál mantienes y qué titular le pones a cada uno? Prepara la diapositiva mentalmente con la estructura: titular → dato → conclusión.

<aside type="tip">

- Menos es más: un gráfico bien explicado vale más que 5 gráficos sin contexto
- Cada gráfico debe responder a una pregunta concreta: ¿vamos bien de plazo? ¿de presupuesto? ¿de calidad?
- El titular debe ser la conclusión, no la descripción: "Vamos bien de plazo pero nos estamos saliendo del presupuesto" vs "Gráfico de evolución del proyecto"

</aside>


</div>