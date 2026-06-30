---
title: "Boletín 09 - Nivel Fácil (Resuelto): Flujos de trabajo, custodia de documentos y normativa legal"
---

1. **Diseñar un flujo de trabajo de aprobación de facturas**
   El proceso de pago de una factura requiere: (1) recepción de la factura, (2) validación por el departamento solicitante, (3) aprobación por administración y (4) pago por tesorería. Dibuja un diagrama de flujo con las etapas, responsables y condiciones (por ejemplo, si la factura supera 1000 € requiere aprobación extra del director). Describe el flujo paso a paso.

   **Solución:**
   ```text
   Flujo de aprobación de facturas:
   
   Etapa 1: Recepción → Responsable: Administración
     - Registrar factura en el sistema con fecha de entrada.
     - Escanear y clasificar (proveedor, importe, concepto).
   
   Etapa 2: Validación → Responsable: Solicitante (jefe del departamento que hizo el pedido)
     - Verificar que los bienes/servicios se recibieron correctamente.
     - Conformar la factura.
     - Si no conforme → devolver a Administración con incidencia.
   
   Etapa 3: Aprobación → Responsable: Administración
     - Si importe ≤ 1000 € → aprobación directa por Administración.
     - Si importe > 1000 € → pasar a Dirección para aprobación adicional.
     - Si no aprobada → notificar al proveedor y archivar con estado "Rechazada".
   
   Etapa 4: Pago → Responsable: Tesorería
     - Programar pago según condiciones contractuales.
     - Ejecutar transferencia.
     - Archivar factura con estado "Pagada" y fecha de pago.
   
   Condiciones especiales:
   - Facturas sin pedido asociado: requieren justificación escrita del solicitante.
   - Facturas de proveedores nuevos: requieren validación adicional de cumplimiento (datos fiscales correctos).
   ```
   **Salida esperada:**
   ```
   Diagrama de flujo con 4 etapas, responsables, condiciones y rutas alternativas.
   ```
   > **💡 Explicación:** Un flujo de trabajo bien definido elimina la ambigüedad sobre quién hace qué y cuándo. Las condiciones evitan cuellos de botella al escalar solo las decisiones que realmente requieren un nivel superior.

2. **Cumplimentar una lista de verificación RGPD para un tratamiento de datos**
   El departamento de RRHH va a crear un fichero con datos de empleados (nombre, DNI, teléfono, salario). Elabora una lista de verificación de cumplimiento RGPD que incluya al menos 6 puntos: base legal, información al interesado, conservación, seguridad, cesión de datos y derechos ARCO.

   **Solución:**
   ```text
   Lista de verificación RGPD para fichero de empleados:
   
   ✔ Base legal: El tratamiento es necesario para la relación laboral (art. 6.1.b RGPD).
   ✔ Información al interesado: Se ha entregado a cada empleado la cláusula informativa con finalidad, responsable, plazo de conservación y ejercicio de derechos.
   ✔ Conservación: Los datos se conservarán mientras dure la relación laboral y hasta 4 años después (prescripción de acciones laborales y fiscales).
   ✔ Seguridad: Se han implementado medidas técnicas (acceso con contraseña, cifrado de datos salariales) y organizativas (política de escritorio limpio).
   ✔ Cesión de datos: No se cederán datos a terceros salvo obligación legal (Seguridad Social, Agencia Tributaria). Se ha informado al empleado de estas cesiones.
   ✔ Derechos ARCO: Se ha designado un procedimiento para atender solicitudes de acceso, rectificación, cancelación y oposición en el plazo máximo de 30 días.
   ✔ Registro de actividades: El tratamiento se ha incluido en el registro de actividades de tratamiento (RAT) de la empresa.
   ```
   **Salida esperada:**
   ```
   Lista de verificación con 7 puntos, todos marcados como cumplidos, con referencias al RGPD.
   ```
   > **💡 Explicación:** El RGPD exige que cualquier tratamiento de datos personales esté justificado, sea conocido por el interesado y cuente con medidas de seguridad. La lista de verificación ayuda a no omitir ninguno de estos requisitos.

3. **Crear un registro de entrada y salida de documentos**
   Diseña una plantilla (puede ser en Excel o SharePoint) para registrar la entrada y salida de documentos físicos en el archivo. La plantilla debe incluir: fecha, número de registro, tipo documental, remitente/destinatario, documento, soporte, ubicación física y firma de recepción. Rellena 3 ejemplos.

   **Solución:**
   ```text
   Plantilla de registro (campos):
   
   | Fecha       | Nº Reg. | Tipo Documento | Remitente/Destinatario | Documento           | Soporte | Ubicación | Firma       |
   |-------------|---------|----------------|------------------------|---------------------|---------|-----------|-------------|
   | 02/06/2026  | E-001   | Factura        | Proveedor ACME        | Factura 2026-120    | Papel   | Archivo A1 | M. López    |
   | 05/06/2026  | S-001   | Contrato       | Cliente Beta S.L.     | Contrato servicio   | Digital | DMS       | L. García   |
   | 10/06/2026  | E-002   | Informe        | Dpto. Comercial       | Informe ventas Q2   | Papel   | Archivo B3 | P. Ruiz     |
   
   Formato de numeración:
   - E-XXX para entrada de documentos.
   - S-XXX para salida (custodia temporal o préstamo).
   
   Notas adicionales:
   - Cuando un documento sale del archivo (préstamo), se anota la fecha prevista de devolución.
   - Si el documento es digital, la ubicación es el sistema DMS y la ruta de carpeta.
   ```
   **Salida esperada:**
   ```
   Plantilla funcional con 3 registros de ejemplo y criterios de numeración definidos.
   ```
   > **💡 Explicación:** Un registro de entrada/salida permite saber en todo momento qué documentos están en el archivo, quién los tiene y dónde localizarlos. Es esencial para la custodia y para evitar pérdidas de documentos.

4. **Aplicar una política de retención a documentos electrónicos**
   La empresa ha decidido eliminar facturas anteriores a 2018 (8 años de antigüedad). Enumera los pasos que debes seguir para hacerlo de forma segura y conforme a la ley: identificación de los documentos a eliminar, autorización, método de eliminación y registro de la destrucción. ¿Qué documentos NO deberías eliminar aunque superen el plazo?

   **Solución:**
   ```text
   Pasos para eliminación segura de documentos electrónicos:
   
   1. Identificación: Ejecutar una consulta en el DMS para listar facturas con fecha anterior a 01/01/2018.
   2. Revisión manual: Verificar que ninguna esté implicada en litigios, auditorías abiertas o requerimientos fiscales en curso.
   3. Autorización: Obtener la aprobación por escrito del responsable del tratamiento y del responsable de archivo.
   4. Método de eliminación: Eliminación segura (borrado criptográfico o destrucción del soporte). No vale "mover a la papelera".
   5. Registro: Generar un acta de destrucción con: fecha, documentos eliminados (rango), responsable, método y base legal.
   6. Comprobación: Verificar que los archivos ya no son accesibles ni recuperables.
   
   Documentos que NO deben eliminarse aunque superen el plazo:
   - Facturas involucradas en procedimientos judiciales o reclamaciones activas.
   - Documentos con valor histórico para la empresa.
   - Facturas que formen parte de expedientes con otros documentos con plazos mayores.
   
   La eliminación debe suspenderse si hay cualquier proceso abierto que requiera esos documentos.
   ```
   **Salida esperada:**
   ```
   Procedimiento en 6 pasos con identificación, autorización, eliminación segura y registro documental.
   ```
   > **💡 Explicación:** Eliminar documentos no es tan sencillo como pulsar "Suprimir". La normativa exige un proceso controlado con autorización y registro. La eliminación segura garantiza que los datos no puedan reconstruirse, protegiendo la confidencialidad.
