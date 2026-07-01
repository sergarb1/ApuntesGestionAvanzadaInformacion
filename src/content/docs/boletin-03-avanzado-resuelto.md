---
title: "Boletín 3 - Avanzado Resuelto: Documentos profesionales con Word, Excel y PowerPoint"
---


---

## ⭐ Ejercicio 1: Cuadro de mando dinámico en Excel con segmentadores (⭐)

Diseña un cuadro de mando dinámico en Excel para el seguimiento de ventas mensuales. Debe incluir: tabla de datos brutos en formato tabla (Insertar > Tabla), tabla dinámica resumen por producto y región, 2 gráficos dinámicos (ventas por producto y por región), segmentadores de datos (slicers) para filtrar por mes y región.

**Solución:**

```
CUADRO DE MANDO DINÁMICO - VENTAS MENSUALES

Paso 1: Estructura de datos brutos (Hoja1: DATOS)
| Mes       | Producto   | Región | Importe |
|-----------|------------|--------|--------:|
| Enero     | Producto A | Norte  | 15.000  |
| Enero     | Producto B | Sur    | 12.500  |
| Febrero   | Producto A | Este   | 14.200  |
| ...       | ...        | ...    | ...     |

Seleccionar rango > Ctrl+T (Insertar > Tabla) para que sea dinámica.

Paso 2: Tabla dinámica (Hoja2: RESUMEN)
- Insertar > Tabla dinámica > Seleccionar tabla DATOS
- Filas: Producto
- Columnas: Región
- Valores: Suma de Importe
- Filtro: Mes

Paso 3: Gráficos dinámicos vinculados
- Gráfico 1: Seleccionar tabla dinámica > Analizar > Gráfico dinámico > Columnas agrupadas
- Gráfico 2: Analizar > Gráfico dinámico > Columnas apiladas

Paso 4: Segmentadores de datos (Slicers)
- Seleccionar tabla dinámica > Analizar > Insertar segmentador
- Marcar: Mes, Región
- Conectar cada segmentador a la tabla dinámica y a los gráficos:
  Clic derecho en segmentador > Conexiones de informe > Marcar tabla y gráficos
```

**Salida esperada:**
Un cuadro de mando interactivo en Excel con tabla dinámica, dos gráficos vinculados y segmentadores que filtran todo al mismo tiempo.

<aside type="tip">

Los segmentadores permiten filtrar visualmente todos los elementos conectados (tabla dinámica + gráficos) de forma sincronizada. Al usar formato tabla (Ctrl+T) en los datos brutos, al añadir nuevas filas la tabla dinámica se actualiza automáticamente sin necesidad de cambiar rangos.

</aside>

---

## ⭐⭐ Ejercicio 2: Informes personalizados con combinación de correspondencia (⭐⭐)

Una asesoría necesita generar informes personalizados para 3 tipos de clientes. Diseña un sistema con combinación de correspondencia de Word usando Excel como origen de datos.

**Solución:**

```
SISTEMA DE INFORMES PERSONALIZADOS

Paso 1: Hoja de datos en Excel (Clientes.xlsx)
| TipoCliente | NombreCliente | NIF        | Importe | Asesoramiento            | Normativa    |
|-------------|---------------|------------|--------:|------------------------|--------------|
| Autónomo    | María López   | 12345678A  | 3.500   | Asesoría fiscal         | IRPF         |
| PYME        | TecnoSL       | B98765432  | 12.000  | Asesoría contable       | ICAC         |
| GranEmpresa | InduSA        | A45678901  | 45.000  | Asesoría integral       | CNMV         |

Paso 2: Plantilla en Word
- Documento nuevo > Correspondencia > Iniciar combinación de correspondencia > Cartas
- Seleccionar destinatarios > Usar lista existente > elegir Clientes.xlsx
- Insertar campos combinados en el documento:
  "Estimado/a «NombreCliente»"
  "Informe de asesoramiento: «Asesoramiento»"
  "Normativa aplicable: «Normativa»"
  "Importe: «Importe» €"

Paso 3: Reglas condicionales (para contenido específico)
Para incluir párrafos según el tipo de cliente:
- Correspondencia > Reglas > Si... entonces... sino...
  Si "TipoCliente" es igual a "Autónomo"
  Escribir: "Régimen de estimación directa simplificada"
  Sino: "Régimen general de sociedades"

Paso 4: Vista previa y finalización
- Correspondencia > Vista previa de resultados
- Finalizar y combinar > Modificar documentos individuales > Todos

Para separar por tipo de cliente:
- Correspondencia > Editar lista de destinatarios > Filtrar > Filtrar por TipoCliente
- Repetir combinación para cada tipo
```

**Salida esperada:**
Documentos Word personalizados generados automáticamente desde los datos de Excel, con contenido condicional según el tipo de cliente.

<aside type="tip">

La combinación de correspondencia permite generar documentos masivos personalizados sin programar. Las reglas condicionales (Si... entonces... sino...) permiten incluir contenido distinto según el valor de un campo. Se pueden filtrar los destinatarios para generar lotes separados por tipo de cliente.

</aside>

---

## ⭐⭐⭐ Ejercicio 3: Presentación interactiva con navegación e hipervínculos (⭐⭐⭐)

Diseña una presentación interactiva en PowerPoint para un curso de formación autoguiado con menú principal, navegación y cuestionario.

**Solución:**

```
PRESENTACIÓN INTERACTIVA - CURSO AUTOGUIADO

Estructura de diapositivas:
- Diapo 1: Portada
- Diapo 2: Menú principal (4 botones como formas redondeadas)
- Diapo 3 a 6: Contenido de cada tema (con botones "Volver al menú")
- Diapo 7: Pregunta 1 (con 3 opciones)
- Diapo 8: ¡Correcto! (mensaje de felicitación)
- Diapo 9: Incorrecto, vuelve a intentarlo
- Diapo 10: Pregunta 2 (con 3 opciones)
- Diapo 11: ¡Correcto!
- Diapo 12: Incorrecto
- Diapo 13: Resultados finales

Configuración de botones (sin VBA):
- Insertar > Formas > Rectángulo redondeado
- Escribir el texto del botón (ej: "Tema 1: Introducción")
- Seleccionar la forma > Ctrl+K (Insertar > Enlace)
- En "Lugar de este documento" > Seleccionar la diapositiva de destino
- Para botones de acción: Insertar > Acción > Hipervínculo a diapositiva

Menú principal:
Botón "Tema 1" → Hipervínculo a Diapositiva 3
Botón "Tema 2" → Hipervínculo a Diapositiva 4
Botón "Cuestionario" → Hipervínculo a Diapositiva 7 (Pregunta 1)

En cada diapositiva de contenido:
Botón "Volver al menú" → Hipervínculo a Diapositiva 2

Cuestionario:
Diapo 7 (Pregunta 1):
  Opción A → Hipervínculo a Diapo 8 (Correcto)
  Opción B → Hipervínculo a Diapo 9 (Incorrecto)
  Opción C → Hipervínculo a Diapo 9 (Incorrecto)

Diapo 8 (Correcto): Botón "Siguiente pregunta" → Diapo 10
Diapo 9 (Incorrecto): Botón "Volver a intentar" → Diapo 7
```

**Salida esperada:**
Una presentación interactiva con navegación no lineal, menú principal y cuestionario autoevaluable, todo sin una línea de código.

<aside type="tip">

Los hipervínculos en PowerPoint permiten crear navegación no lineal entre diapositivas. Combinando formas (botones) con hipervínculos a diapositivas específicas, se puede crear una experiencia interactiva completa sin necesidad de macros o programación.

</aside>

---

## ⭐⭐⭐⭐ Ejercicio 4: Flujo de trabajo integrado entre Word, Excel y PowerPoint (⭐⭐⭐⭐)

Diseña un flujo de trabajo que, partiendo de datos en Excel, genere un informe en Word y una presentación en PowerPoint usando vinculación de datos.

**Solución:**

```
FLUJO DE TRABAJO INTEGRADO - EXCEL → WORD + POWERPOINT

Paso 1: Preparar datos en Excel (Datos_Ventas.xlsx)
| Nombre       | Departamento | Ventas Trimestre |
|--------------|--------------|-----------------:|
| Ana López    | Ventas       | 45.000           |
| Carlos Ruiz  | Ventas       | 52.000           |
| Marta Gómez  | Marketing    | 38.000           |
| ...          | ...          | ...              |
- Ordenar datos por Ventas descendente
- Crear gráfico de columnas: Ventas por departamento

Paso 2: Crear informe en Word con vínculos a Excel
- Documento Word nuevo
- Portada: "Informe de Ventas Trimestrales"
- Sección "Top Ventas":
  Copiar en Excel las 3 primeras filas (nombre, departamento, ventas)
  En Word: Inicio > Pegar > Pegado especial > Pegar vínculo > Texto con formato (RTF)
  Esto crea una tabla vinculada que se actualiza si cambian los datos en Excel
- Sección "Resumen ejecutivo":
  Escribir el resumen haciendo referencia a celdas vinculadas
  Opcional: Copiar celdas individuales con Pegar vínculo

Paso 3: Crear presentación en PowerPoint con vínculos a Excel
- PowerPoint nuevo
- Diapo 1 (Portada): "Informe de Ventas Trimestrales"
- Diapo 2 (Resultados):
  Copiar rango de Excel con todos los empleados
  En PowerPoint: Pegado especial > Pegar vínculo > Objeto hoja de cálculo de Microsoft Excel
  Esto inserta una tabla editable que se actualiza desde Excel
- Diapo 3 (Gráfico):
  En Excel, copiar el gráfico de ventas por departamento
  En PowerPoint: Pegado especial > Pegar vínculo > Gráfico de Microsoft Excel

Paso 4: Probar la actualización
- Guardar Excel, Word y PowerPoint
- Cambiar un dato en Excel (ej: aumentar ventas de Ana López a 50.000)
- Guardar Excel
- Abrir Word → Aceptar "Actualizar vínculos" → El dato y el gráfico cambian automáticamente
- Abrir PowerPoint → Aceptar "Actualizar vínculos" → Los cambios se reflejan
```

**Salida esperada:**
Un sistema integrado donde Word y PowerPoint se actualizan automáticamente al modificar los datos en Excel, sin escribir una línea de código.

<aside type="tip">

La vinculación de datos (Pegado especial > Pegar vínculo) permite que documentos de Word y presentaciones de PowerPoint se actualicen automáticamente cuando cambian los datos originales en Excel. Es la alternativa sin código a la automatización con macros. Los vínculos se actualizan al abrir el documento (previo aviso de seguridad) y también manualmente desde Archivo > Editar vínculos a archivos.

</aside>

## 🧠 Tu turno como Knowledge Manager

### Escenario: El informe que tu jefe quiere en 10 minutos

Tu jefe entra en tu despacho a las 14:50: "Necesito un informe con los datos de ventas del trimestre, con gráficos y todo, para la reunión de las 15:00 con el director comercial. Ah, y los datos están en una hoja de Excel que aún no está cerrada porque el departamento de contabilidad sigue introduciendo cifras."

**Tu misión:** ¿Cómo resuelves el plazo imposible sin morir en el intento? ¿Qué técnica ofimática te permite tener el informe listo aunque los datos sigan cambiando? Explica el proceso paso a paso.

> **Pistas para la reflexión:**
> - Vincular datos (no incrustarlos) permite que el informe se actualice solo cuando cambien los datos origen
> - Una plantilla de informe predefinida te ahorra el 80% del tiempo de maquetación
> - ¿Qué pasa si los datos llegan con 5 minutos de retraso? Ten un plan B
