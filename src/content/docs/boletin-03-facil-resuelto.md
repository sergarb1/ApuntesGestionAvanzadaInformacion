---
title: "Boletín 3 - Fácil: Documentos profesionales con Word, Excel y PowerPoint"
---


## ✏️ Ejercicio 1: Creación de una plantilla profesional en Word

Diseña una plantilla de informe ejecutivo en Microsoft Word que incluya: portada con logotipo y título, encabezado con nombre de la empresa y número de página, cuerpo con estilos predefinidos (Título 1, Título 2, Cuerpo de texto), tabla de contenidos automática, y pie de página con información de confidencialidad.

<span class="solucion-label">✅ Solución:</span>

`markdown
**PLANTILLA INFORME EJECUTIVO - WORD**

**Estructura de la plantilla:**

1. **Portada:**
   - Logotipo de la empresa (centrado, parte superior)
   - Título del informe: "INFORME EJECUTIVO" (estilo Título 1, 24 pt, negrita)
   - Subtítulo: espacio para el tema del informe (estilo Título 2, 16 pt)
   - Datos: Empresa, Fecha, Versión, Autor (tabla sin bordes, 12 pt)
   - Línea decorativa horizontal (forma geométrica)

2. **Encabezado:**
   - [Nombre de la empresa] | [Departamento] | Página [Número de página]
   - Fuente: Calibri 10 pt, color corporativo

3. **Estilos predefinidos:**
   - Título 1: Calibri 18 pt, negrita, color azul oscuro, espacio posterior 12 pt
   - Título 2: Calibri 14 pt, negrita, color azul medio, espacio posterior 8 pt
   - Título 3: Calibri 12 pt, negrita, cursiva, color negro
   - Cuerpo de texto: Calibri 11 pt, interlineado 1,15, justificado
   - Notas al pie: Calibri 9 pt, cursiva

4. **Tabla de contenidos:**
   - Insertar TDC automática basada en estilos Título 1 y Título 2
   - Actualizable con clic derecho > Actualizar campo

5. **Pie de página:**
   - "Documento confidencial. Prohibida su reproducción sin autorización de [Empresa]"
   - Calibri 8 pt, cursiva, color gris
`

<span class="salida-label">📋 Salida esperada:</span>
Una plantilla de Word completa con todos los elementos listados que permita crear informes consistentes.

<aside type="tip">

Las plantillas de Word basadas en estilos garantizan la consistencia documental. La TDC automática se actualiza al modificar el contenido. El uso de encabezados y pies de página diferenciados aporta profesionalismo.

</aside>

## ✏️ Ejercicio 2: Creación de una factura automatizada en Excel

Diseña una hoja de cálculo en Excel para generar facturas. Debe incluir: datos del cliente (nombre, NIF, dirección), desglose de productos/servicios (cantidad, descripción, precio unitario, total), cálculo automático de base imponible, IVA (21%) y total, y un formato de factura profesional con logotipo y numeración automática.

<span class="solucion-label">✅ Solución:</span>

`markdown
**FACTURA AUTOMATIZADA EN EXCEL - ESTRUCTURA**

**Hoja 1: FACTURA**

| A | B | C | D | E |
|---|---|---|---|---|

Fila 1: [Logotipo] | | FACTURA Nº: =TEXTO(HOY();"AAAAMM") & "-" & FILA()
Fila 2: [Nombre empresa] | | Fecha: =HOY()
Fila 3: [Dirección] | | Cliente: [celda entrada]
Fila 4: [NIF/Empresa] | | NIF: [celda entrada]
Fila 5: (vacío)
Fila 6: **DESGLOSE**
Fila 7: Cantidad | Descripción | Precio Unitario | Total | (cabecera negrita)
Fila 8: [cant] | [producto] | [precio] | =A8*C8 | (arrastrar fórmula)
Fila 9: ... (filas para más productos)
Fila 15: | | BASE IMPONIBLE: | =SUMA(D8:D14)
Fila 16: | | IVA 21%: | =D15*0,21
Fila 17: | | **TOTAL FACTURA:** | =D15+D16

**Fórmulas clave:**
- Total línea: = [Cantidad] * [Precio Unitario]
- Base Imponible: = SUMA(todos los totales)
- IVA: = Base Imponible * 0,21
- Total: = Base Imponible + IVA

**Formato condicional:** Si el total es > 5.000 €, la celda del total se resalta en amarillo.

**Validación de datos:** La columna Cantidad solo acepta números enteros positivos.
`

<span class="salida-label">📋 Salida esperada:</span>
Una hoja Excel con las fórmulas implementadas que calcule automáticamente el importe de cada línea, la base imponible, el IVA y el total.

<aside type="tip">

Las fórmulas de Excel automatizan los cálculos repetitivos y reducen errores humanos. La validación de datos evita entradas incorrectas. El formato condicional ayuda a identificar visualmente facturas de alto importe.

</aside>

## ✏️ Ejercicio 3: Presentación PowerPoint para un comité de dirección

Crea la estructura de una presentación comercial para presentar los resultados anuales ante el comité de dirección. Debe incluir: diapositiva de título, índice, 4 diapositivas de contenido (resultados financieros, logros clave, objetivos futuros, conclusiones), uso de gráficos (al menos 1), animaciones moderadas y notas del orador.

<span class="solucion-label">✅ Solución:</span>

`markdown
**PRESENTACIÓN RESULTADOS ANUALES - POWERPOINT**

**Diapositiva 1 - Portada:**
- Título: "Resultados Anuales 2026 - División Comercial"
- Subtítulo: "Presentación para el Comité de Dirección"
- Fecha: [Fecha de la presentación]

**Diapositiva 2 - Índice:**
- Resultados financieros
- Logros clave del año
- Objetivos y metas para 2027
- Conclusiones y propuestas

**Diapositiva 3 - Resultados Financieros:**
- Gráfico de barras: Ingresos mensuales (Ene-Dic 2026)
- Tabla comparativa: 2025 vs 2026 (Ingresos, Gastos, Margen)
- Indicador destacado: +15% crecimiento interanual (círculo de texto)

**Diapositiva 4 - Logros Clave:**
- 3 logros principales con iconos y descripción breve
- Lista con viñetas animadas (aparecen una a una)
- Ejemplo: "Captación de 120 nuevos clientes corporativos"

**Diapositiva 5 - Objetivos 2027:**
- 3 objetivos SMART: aumento del 20% de ingresos, expansión a 2 nuevas regiones, reducción del 10% de costes operativos

**Diapositiva 6 - Conclusiones:**
- Resumen en 3 puntos clave
- Diapositiva de cierre con datos de contacto

**Notas del orador (ejemplo diapositiva 3):**
"Como pueden ver en el gráfico, el pico de ingresos se produjo en octubre gracias al lanzamiento del nuevo producto. El margen se ha mantenido estable a pesar del incremento de costes operativos."
`

<span class="salida-label">📋 Salida esperada:</span>
Una estructura de presentación con 6 diapositivas, incluyendo un gráfico de barras y animaciones.

<aside type="tip">

Una presentación profesional debe tener una estructura clara (portada, índice, contenido, cierre). Las animaciones deben ser sutiles (aparecer, atenuar) y las notas del orador ayudan a recordar los puntos clave durante la exposición.

</aside>

## ✏️ Ejercicio 4: Configuración de una combinación de correspondencia (Mail Merge)

Configura una combinación de correspondencia en Word para enviar una carta personalizada a 50 clientes informando de un cambio en las condiciones de pago. La carta debe incluir: nombre del cliente, dirección, tratamiento (Sr./Sra.), importe actual de la póliza y fecha de entrada en vigor. Describe paso a paso el proceso.

<span class="solucion-label">✅ Solución:</span>

`markdown
**COMBINACIÓN DE CORRESPONDENCIA - CAMBIO CONDICIONES DE PAGO**

**Paso 1: Preparar el origen de datos (Excel)**
Crear un archivo Excel "Clientes.xlsx" con las columnas:
| Nombre | Apellido | Tratamiento | Direccion | Ciudad | CodPostal | ImportePoliza | FechaVigor |
|--------|----------|------------|-----------|--------|----------|--------------|-----------|
| Ana | García | Sra. | Avda. Sol 15 | Madrid | 28001 | 1.200 € | 01/03/2027 |
| Carlos | López | Sr. | C/Luna 8 | Barcelona | 08002 | 850 € | 15/03/2027 |
| ... | ... | ... | ... | ... | ... | ... | ... |

**Paso 2: Crear la carta modelo en Word**
`
[Nombre de la empresa]
[Dirección de la empresa]

«Tratamiento» «Nombre» «Apellido»
«Direccion»
«Ciudad», «CodPostal»

Muy señor/a mío/a:

Por medio de la presente, le comunicamos que, con fecha «FechaVigor», su póliza
con número de referencia «ImportePoliza» experimentará las siguientes
modificaciones en las condiciones de pago:
[...]

Atentamente,
[Firma]
`

**Paso 3: Configurar la combinación**
1. En Word: Correspondencia > Iniciar combinación de correspondencia > Cartas
2. Seleccionar destinatarios > Usar lista existente > Seleccionar "Clientes.xlsx"
3. Insertar campos combinados en las posiciones correspondientes
4. Vista previa de resultados (revisar 3-4 registros)
5. Finalizar y combinar > Imprimir documentos o Enviar mensajes de correo electrónico
`

<span class="salida-label">📋 Salida esperada:</span>
Una carta modelo configurada para mail merge con los campos combinados y 50 cartas personalizadas generadas.

<aside type="tip">

La combinación de correspondencia permite personalizar documentos masivos. Es importante revisar la vista previa para asegurar que los campos se insertan correctamente y que el formato se mantiene en todas las copias.

</aside>

## 🧠 Tu turno como Knowledge Manager

<div class="escenario-box">
### Escenario: El informe que tu jefe quiere en 10 minutos

Tu jefe entra en tu despacho a las 14:50: "Necesito un informe con los datos de ventas del trimestre, con gráficos y todo, para la reunión de las 15:00 con el director comercial. Ah, y los datos están en una hoja de Excel que aún no está cerrada porque el departamento de contabilidad sigue introduciendo cifras."

**Tu misión:** ¿Cómo resuelves el plazo imposible sin morir en el intento? ¿Qué técnica ofimática te permite tener el informe listo aunque los datos sigan cambiando? Explica el proceso paso a paso.

<aside type="tip">

- Vincular datos (no incrustarlos) permite que el informe se actualice solo cuando cambien los datos origen
- Una plantilla de informe predefinida te ahorra el 80% del tiempo de maquetación
- ¿Qué pasa si los datos llegan con 5 minutos de retraso? Ten un plan B

</aside>


</div>