---
title: "Boletín 08 - Nivel Avanzado: Archivo digital: cómo organizar los documentos de la empresa"
---

1. ⭐ **Diseñar un esquema de metadatos para documentos administrativos**
   Una empresa quiere implantar un sistema de gestión documental (DMS) y necesita definir los metadatos para sus documentos. Diseña un esquema con al menos 8 campos, indicando para cada uno: nombre, tipo de dato (texto, fecha, lista), obligatoriedad y ejemplo. Incluye metadatos de identificación, contexto y control de versiones.

   > 💡 **Pista:** Distingue tres grupos: metadatos de identificación (ID, título, serie), de contexto (autor, destinatario, departamento) y de control (versión, estado, fecha de archivo). Piensa en qué campos necesitarías para encontrar un documento sin abrirlo.

2. ⭐⭐ **Definir una política de migración de archivos físicos a digitales**
   El departamento de Administración tiene 12 archivadores con documentos en papel que deben digitalizarse. Diseña un plan de migración que incluya: criterios de prioridad (qué documentos primero), lotes de trabajo, controles de calidad y qué hacer con los documentos en papel después de digitalizar. Incluye un cronograma estimado.

   > 💡 **Pista:** No todos los documentos tienen el mismo valor. Prioriza por vigencia (contratos activos, facturas del año) y valor legal. Los documentos históricos de baja consulta pueden esperar. Planifica un control de calidad sobre una muestra de cada lote.

3. ⭐⭐ **Automatizar la clasificación documental con Power Automate y SharePoint**
   Diseña un flujo en Power Automate que, cuando se suba un archivo a una carpeta de SharePoint, le asigne automáticamente metadatos (tipo documental, año, departamento) en función de la carpeta destino y del nombre del archivo. Describe la lógica condicional necesaria.

   > 💡 **Pista:** El desencadenador es "Cuando se crea un archivo". Usa condiciones múltiples para inspeccionar la ruta de la carpeta con expresiones como contains(triggerOutputs()?['body/Path'], 'Facturación'). Para extraer el año del nombre, usa expresiones de coincidencia de patrones.

4. ⭐⭐⭐ **Crear un plan de conservación documental basado en la normativa legal**
   Investiga los plazos de conservación legales en España para: facturas (Ley 58/2003), contratos mercantiles (Código de Comercio), nóminas (ET), informes anuales y actas de consejo (LSC). Diseña una tabla con el tipo documental, plazo legal, base normativa y acción al vencimiento (eliminar, conservar parcialmente, transferir a archivo histórico). Aplica estos plazos a un ejemplo concreto de cada tipo.

   > 💡 **Pista:** Busca en el Código de Comercio (art. 30), la Ley General Tributaria (art. 66-70) y el Estatuto de los Trabajadores. No todos los documentos se eliminan al vencimiento: algunos deben conservarse parcialmente (informes) o transferirse al archivo histórico (actas, escrituras).

```

## 🧠 Tu turno como Knowledge Manager

### Escenario: El contrato que no aparece por ninguna parte

La directora financiera de GesDoc Consulting necesita urgentemente el contrato con un proveedor firmado hace 3 años. Hay una cláusula que debe revisar antes de renovar. Te pide el documento. Buscas en la carpeta de "Contratos" y encuentras 47 archivos con nombres como "contrato_proveedor_final.pdf", "contrato_proveedor_v2.pdf", "contrato_definitivo_SI_esta_vez_si.pdf". Abres varios y ninguno es el que buscas. Preguntas a 3 compañeros y cada uno te dice una ubicación distinta. Pasada una hora, sigues sin encontrar el contrato.

**Tu misión:** ¿Qué ha fallado en el sistema de clasificación documental para que esta situación sea posible? Diseña 3 reglas básicas de nombrado y organización que eviten que esto vuelva a ocurrir.

> **Pistas para la reflexión:**
> - Un buen nombre de archivo debe contener: tipo_documento_cliente_fecha.pdf
> - Las versiones se controlan con un sistema, no con nombres (v1, v2, final, definitivo...)
> - La clasificación no es solo cosa tuya: si cada empleado clasifica como quiere, el sistema no sirve
```
