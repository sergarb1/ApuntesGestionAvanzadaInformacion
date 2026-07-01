---
title: "Boletín 08 - Nivel Fácil (Resuelto): Archivo digital: cómo organizar los documentos de la empresa"
---

1. **Clasificar documentos según un cuadro de clasificación**
   Una empresa recibe los siguientes documentos: factura nº 1234, contrato de proveedor, nómina de junio, informe trimestral de ventas, acta de reunión del consejo. Asigna cada documento a la serie documental correspondiente usando el siguiente cuadro: S1-Facturación, S2-Contratos, S3-Nóminas, S4-Informes, S5-Actas. Explica qué criterio has usado para cada asignación.

   **Solución:**
   ```text
   Asignación:
   1. Factura nº 1234 → S1-Facturación (documento contable que acredita una transacción).
   2. Contrato de proveedor → S2-Contratos (acuerdo legal con un tercero).
   3. Nómina de junio → S3-Nóminas (registro salarial mensual).
   4. Informe trimestral de ventas → S4-Informes (documento periódico de resultados).
   5. Acta de reunión del consejo → S5-Actas (registro de decisiones y acuerdos).
   
   Criterio: Cada documento se asigna según su función principal dentro de la empresa. Un cuadro de clasificación agrupa documentos por su origen y finalidad, no por su soporte (papel/digital).
   ```
   **Salida esperada:**
   ```
   5 documentos clasificados correctamente en las 5 series documentales.
   ```
   <aside type="tip">

El cuadro de clasificación es la herramienta fundamental de la gestión documental. Clasificar correctamente desde el origen evita que los documentos se pierdan y facilita su recuperación posterior.

</aside>

2. **Crear una estructura de carpetas para el archivo digital**
   Diseña una estructura de carpetas en una unidad compartida (OneDrive o SharePoint) para el departamento de Administración. Debe incluir: Facturación (2024, 2025, 2026), Contratos (Proveedores, Clientes), RRHH (Nóminas, Contratos laborales) e Informes (Mensuales, Trimestrales, Anuales). Explica el criterio de ordenación elegido.

   **Solución:**
   ```text
   Estructura de carpetas:
   
   Administración/
   ├── Facturación/
   │   ├── 2024/
   │   ├── 2025/
   │   └── 2026/
   ├── Contratos/
   │   ├── Proveedores/
   │   └── Clientes/
   ├── RRHH/
   │   ├── Nóminas/
   │   └── Contratos laborales/
   └── Informes/
       ├── Mensuales/
       ├── Trimestrales/
       └── Anuales/
   
   Criterio de ordenación:
   - Por función (Facturación, Contratos, RRHH, Informes).
   - Dentro de cada función, por tipo documental si hay subtipos (Proveedores/Clientes).
   - Para series con volumen alto, subcarpetas por año.
   ```
   **Salida esperada:**
   ```
   Estructura jerárquica coherente que permite localizar cualquier documento en menos de 3 clics.
   ```
   <aside type="tip">

Una estructura de carpetas bien diseñada reduce el tiempo de búsqueda y evita duplicados. Se recomienda no superar los 3 niveles de profundidad para mantener la navegación ágil.

</aside>

3. **Nombrar archivos siguiendo una convención**
   Define una convención de nomenclatura para los archivos del departamento con el formato: AAAAMMDD_TipoDocumento_Descripcion_Version. Aplica esa convención para renombrar estos archivos: "factura.pdf" (25/03/2026, factura proveedor ACME), "contrato.docx" (10/01/2025, contrato servicio limpieza), "informe.xlsx" (31/12/2025, informe anual ventas v2).

   **Solución:**
   ```text
   Formato: AAAAMMDD_TipoDocumento_Descripcion_Version.ext
   
   Archivos renombrados:
   1. 20260325_Factura_ProveedorACME_V1.pdf
   2. 20250110_Contrato_ServicioLimpieza_V1.docx
   3. 20251231_Informe_VentasAnual_V2.xlsx
   
   Reglas adicionales de la convención:
   - Fecha siempre en formato ISO (AAAAMMDD) para ordenación cronológica.
   - Tipo de documento en singular con primera letra mayúscula.
   - Descripción sin espacios ni caracteres especiales (usar CamelCase o guiones).
   - Versión: V1, V2, V3... (no usar "final", "definitivo", "ultimo").
   - Sin acentos ni eñes para evitar problemas entre sistemas.
   ```
   **Salida esperada:**
   ```
   Archivos renombrados siguiendo la convención y ordenables cronológicamente por nombre.
   ```
   <aside type="tip">

Una convención de nomenclatura evita nombres ambiguos como "final-final-v3.docx". El formato con fecha ISO al inicio permite ordenar los archivos cronológicamente de forma automática.

</aside>

4. **Digitalizar un documento escaneado y extraer su texto con OCR**
   Escanea un documento (puede ser una factura en papel) a 300 DPI en formato PDF. Usa Adobe Acrobat o una herramienta gratuita (Tesseract OCR) para realizar el reconocimiento óptico de caracteres. Explica qué calidad de imagen es necesaria para un OCR fiable y qué hacer si el texto contiene errores de reconocimiento.

   **Solución:**
   ```text
   Pasos con Tesseract OCR (gratuito):
   1. Escanear la factura a 300 DPI, escala de grises, formato PNG o TIFF.
   2. Instalar Tesseract OCR (https://github.com/tesseract-ocr/).
   3. Ejecutar en terminal:
      tesseract factura_escaneada.png factura_ocr -l spa
      (esto genera factura_ocr.txt con el texto extraído en español)
   
   Pasos con Adobe Acrobat:
   4. Abrir el PDF escaneado en Acrobat.
   5. Herramientas → "Reconocer texto" → "En este archivo".
   6. Elegir idioma: español → "Aceptar".
   7. Guardar como PDF con texto seleccionable.
   
   Calidad necesaria:
   - 300 DPI mínimo (menos de 200 DPI reduce drásticamente la precisión).
   - Escala de grises o blanco y negro (el color aporta ruido innecesario).
   - Buena iluminación y contraste, sin sombras.
   
   Gestión de errores:
   - Revisar manualmente el texto extraído contra el original.
   - Corregir caracteres confundidos (por ejemplo, "rn" leído como "m").
   - Si la calidad es baja, volver a escanear ajustando brillo/contraste.
   ```
   **Salida esperada:**
   ```
   Archivo PDF con texto seleccionable o archivo TXT con el contenido extraído de la factura.
   ```
   <aside type="tip">

El OCR convierte imágenes de texto en texto digital editable y buscable. La calidad del escaneado es crítica: un escaneo pobre produce errores que requieren corrección manual, anulando el beneficio de la automatización.

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
