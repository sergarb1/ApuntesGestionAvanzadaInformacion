---
title: "Boletín 08 - Nivel Avanzado (Resuelto): Archivo digital: cómo organizar los documentos de la empresa"
---

1. ⭐ **Diseñar un esquema de metadatos para documentos administrativos**
   Una empresa quiere implantar un sistema de gestión documental (DMS) y necesita definir los metadatos para sus documentos. Diseña un esquema con al menos 8 campos, indicando para cada uno: nombre, tipo de dato (texto, fecha, lista), obligatoriedad y ejemplo. Incluye metadatos de identificación, contexto y control de versiones.

   **Solución:**
   ```text
   Esquema de metadatos para documentos administrativos:
   
   | Campo               | Tipo     | Obligatorio | Ejemplo                         |
   |---------------------|----------|-------------|---------------------------------|
   | ID_Documento        | Texto    | Sí          | FACT-2026-001234                |
   | Título              | Texto    | Sí          | Factura ACME marzo 2026         |
   | Serie_Documental    | Lista    | Sí          | Facturación                     |
   | Fecha_Creación      | Fecha    | Sí          | 2026-03-25                      |
   | Autor               | Texto    | Sí          | Dpto. Administración            |
   | Destinatario        | Texto    | No          | ACME S.L.                       |
   | Formato             | Lista    | Sí          | PDF/A                           |
   | Versión             | Número   | Sí          | 1                               |
   | Estado              | Lista    | Sí          | Borrador / Revisado / Aprobado  |
   | Fecha_Archivo       | Fecha    | No          | 2026-04-01                      |
   | Conservación (años) | Número   | Sí          | 5                               |
   | Acceso              | Lista    | Sí          | Público / Restringido / Confidencial |
   
   Los metadatos permiten buscar documentos sin necesidad de abrirlos y automatizar políticas de conservación.
   ```
   **Salida esperada:**
   ```
   Esquema de 12 campos con tipo, obligatoriedad y ejemplo. Listo para implementar en un DMS.
   ```
   <aside type="tip">

Los metadatos son la ficha técnica del documento. Sin ellos, buscar un documento en un archivo digital grande es como buscar una aguja en un pajar. La combinación de metadatos de identificación (ID, título), contexto (autor, destinatario) y control (versión, estado) cubre todo el ciclo de vida.

</aside>

2. ⭐⭐ **Definir una política de migración de archivos físicos a digitales**
   El departamento de Administración tiene 12 archivadores con documentos en papel que deben digitalizarse. Diseña un plan de migración que incluya: criterios de prioridad (qué documentos primero), lotes de trabajo, controles de calidad y qué hacer con los documentos en papel después de digitalizar. Incluye un cronograma estimado.

   **Solución:**
   ```text
   Plan de migración a digital:
   
   Fase 1: Auditoría inicial (1 semana)
   - Inventariar los 12 archivadores: volumen total estimado, estado del papel, tipos documentales.
   - Identificar documentos con valor legal frente a documentos administrativos temporales.
   
   Fase 2: Priorización (criterios)
   - Prioridad alta: contratos, facturas del año en curso, nóminas, expedientes de clientes activos.
   - Prioridad media: informes, actas, correspondencia.
   - Prioridad baja: documentación de ejercicios cerrados con más de 5 años.
   
   Fase 3: Digitalización por lotes (6-8 semanas)
   - Lote 1 (semanas 1-2): Facturación del año en curso + contratos vigentes.
   - Lote 2 (semanas 3-4): Nóminas y RRHH.
   - Lote 3 (semanas 5-6): Informes y actas.
   - Lote 4 (semanas 7-8): Documentos históricos y baja prioridad.
   
   Fase 4: Control de calidad
   - Verificar que cada PDF tenga OCR aplicado y texto seleccionable.
   - Revisar una muestra del 10% de cada lote comparando digital vs. original.
   - Comprobar que los nombres de archivo y metadatos cumplen la convención.
   
   Fase 5: Destino del papel
   - Conservar originales en papel durante 1 año tras digitalización (periodo de seguridad).
   - Transcurrido ese plazo, destruir confidencialmente (trituradora industrial) los documentos sin valor legal permanente.
   - Los contratos y escrituras con valor legal permanente se conservan en papel en archivo histórico.
   ```
   **Salida esperada:**
   ```
   Plan estructurado en 5 fases con prioridades, lotes, controles y cronograma de 8 semanas.
   ```
   <aside type="tip">

Digitalizar no es solo escanear: requiere un plan ordenado. Priorizar por uso y valor legal asegura que los documentos más críticos estén disponibles primero. El control de calidad evita que una mala digitalización genere más trabajo que el papel original.

</aside>

3. ⭐⭐ **Automatizar la clasificación documental con Power Automate y SharePoint**
   Diseña un flujo en Power Automate que, cuando se suba un archivo a una carpeta de SharePoint, le asigne automáticamente metadatos (tipo documental, año, departamento) en función de la carpeta destino y del nombre del archivo. Describe la lógica condicional necesaria.

   **Solución:**
   ```text
   Flujo: "Clasificación automática de documentos"
   
   Desencadenador: "Cuando se crea un archivo" (SharePoint - Biblioteca de documentos).
   
   Lógica condicional:
   
   1. Inicializar variable "TipoDocumento" según la ruta de carpeta:
      - Si la carpeta contiene "Facturación" → TipoDocumento = "Factura"
      - Si la carpeta contiene "Contratos/Proveedores" → TipoDocumento = "ContratoProveedor"
      - Si la carpeta contiene "Contratos/Clientes" → TipoDocumento = "ContratoCliente"
      - Si la carpeta contiene "RRHH/Nóminas" → TipoDocumento = "Nómina"
      - ... etc.
   
   2. Extraer el año del nombre del archivo:
      - Buscar patrón "20[0-9]{2}" en el nombre del archivo.
      - Si se encuentra → asignar a metadato "Año".
      - Si no → usar año actual.
   
   3. Extraer departamento de la ruta:
      - La raíz de la carpeta indica el departamento: Administración, Comercial, RRHH.
   
   4. Actualizar metadatos del archivo en SharePoint:
      - "TipoDocumento" = [valor obtenido]
      - "Año" = [valor obtenido]
      - "Departamento" = [valor obtenido]
      - "ClasificadoPor" = "Sistema Automático"
      - "FechaClasificacion" = UTC Now()
   
   5. Notificación: Si el archivo no pudo clasificarse (carpeta no reconocida), enviar correo al administrador para revisión manual.
   ```
   **Salida esperada:**
   ```
   Cada archivo subido recibe metadatos automáticos. Los no clasificables generan alerta para revisión manual.
   ```
   <aside type="tip">

Automatizar la clasificación reduce el error humano y acelera la disponibilidad de los documentos. La lógica condicional basada en carpetas y nombres permite adaptarse a la estructura existente sin cambios drásticos.

</aside>

4. ⭐⭐⭐ **Crear un plan de conservación documental basado en la normativa legal**
   Investiga los plazos de conservación legales en España para: facturas (Ley 58/2003), contratos mercantiles (Código de Comercio), nóminas (ET), informes anuales y actas de consejo (LSC). Diseña una tabla con el tipo documental, plazo legal, base normativa y acción al vencimiento (eliminar, conservar parcialmente, transferir a archivo histórico). Aplica estos plazos a un ejemplo concreto de cada tipo.

   **Solución:**
   ```text
   Tabla de conservación documental:
   
   | Tipo Documental       | Plazo Legal | Base Normativa               | Acción al Vencimiento               |
   |-----------------------|-------------|------------------------------|--------------------------------------|
   | Facturas              | 6 años      | Ley 58/2003 (LGT) art. 66-70 | Eliminar                             |
   | Contratos mercantiles | 6 años      | Código de Comercio art. 30   | Eliminar                             |
   | Nóminas               | 4 años      | ET art. 37.3 + RD 1561/1995  | Eliminar                             |
   | Informes anuales      | 6 años      | Código de Comercio art. 30   | Conservar resumen ejecutivo          |
   | Actas de consejo      | Permanente  | LSC art. 97                  | Transferir a archivo histórico       |
   | Escrituras            | Permanente  | Código de Comercio art. 32   | Transferir a archivo histórico       |
   
   Ejemplos:
   1. Factura ACME 2026 → Conservar hasta 2032 → Eliminar.
   2. Contrato limpieza 2025 → Conservar hasta 2031 → Eliminar.
   3. Nómina junio 2026 → Conservar hasta 2030 → Eliminar.
   4. Informe anual 2025 → Conservar hasta 2031 → Extraer resumen ejecutivo y conservarlo; eliminar resto.
   5. Acta consejo 2026 → Conservar permanentemente en archivo histórico.
   
   Nota: Los plazos empiezan a contar desde la finalización del ejercicio fiscal o desde la extinción de la obligación contractual.
   ```
   **Salida esperada:**
   ```
   Tabla de conservación con 5 tipos documentales, plazos legales, base normativa y acciones al vencimiento.
   ```
   <aside type="tip">

Cada tipo documental tiene un plazo de conservación diferente según la ley. No todos los documentos deben conservarse para siempre; una política de eliminación programada reduce costes de almacenamiento y riesgos legales. Las actas de consejo y escrituras tienen valor permanente.

</aside>

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
