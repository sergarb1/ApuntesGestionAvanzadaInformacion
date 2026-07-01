---
title: "Boletín 09 - Nivel Avanzado (Resuelto): Flujos de trabajo, custodia de documentos y normativa legal"
---

1. ⭐ **Diseñar un flujo de trabajo automatizado con aprobaciones en Microsoft Teams**
   Supón que cada solicitud de compra debe ser aprobada por el jefe de departamento y, si supera 5000 €, también por dirección. Diseña un flujo usando Power Automate y Approvals de Teams que incluya: formulario de solicitud, notificaciones, escalado por importe y registro en SharePoint. Incluye la lógica de tiempos de espera (si no responde en 48 h, escalar al siguiente nivel).

   <span class="solucion-label">✅ Solución:</span>
   ```text
   Flujo automatizado de aprobación de compras:
   
   1. Punto de inicio: Formulario de Microsoft Forms donde el solicitante rellena: departamento, concepto, importe, proveedor, justificación.
   2. Desencadenador: "Cuando se envía una nueva respuesta" (Forms).
   3. Crear solicitud de aprobación nivel 1 (jefe de departamento):
      - Título: "Solicitud de compra: [concepto]"
      - Asignado a: jefe del departamento del solicitante.
      - Detalles: importe, proveedor, justificación.
      - Tiempo de espera: 48 horas.
   4. Esperar respuesta de aprobación (Acción "Esperar aprobación").
   5. Lógica condicional:
      - Si aprobado e importe ≤ 5000 € → Registrar en SharePoint (estado "Aprobada") y notificar a Tesorería.
      - Si aprobado e importe > 5000 € → Crear solicitud de aprobación nivel 2 (Dirección) con mismo mecanismo y espera de 48 h.
      - Si rechazado → Registrar en SharePoint (estado "Rechazada") y notificar al solicitante con motivo.
      - Si expira el tiempo sin respuesta → Escalar al siguiente nivel automáticamente y notificar a ambos.
   6. Registro en SharePoint: Lista "SolicitudesCompra" con campos: ID, Fecha, Departamento, Concepto, Importe, Estado, FechaAprobacion.
   7. Notificaciones en Teams: Mensaje en el canal "Aprobaciones" del equipo de Administración con el resultado final.
   ```
   <span class="salida-label">📋 Salida esperada:</span>
   ```
   Flujo completo con aprobaciones en dos niveles, escalado automático y registro en SharePoint.
   ```
   <aside type="tip">

Automatizar las aprobaciones elimina los correos encadenados y los retrasos. El escalado automático evita que una solicitud quede bloqueada para siempre porque un responsable está de vacaciones o no responde.

</aside>

2. ⭐⭐ **Realizar un análisis de riesgos para un tratamiento de datos personales**
   El departamento de Administración va a implantar un nuevo software de gestión de clientes que almacenará: nombre, DNI, dirección, email, teléfono e historial de compras. Realiza un análisis de riesgos identificando: activos, amenazas, vulnerabilidades, impacto potencial (bajo, medio, alto) y medidas de mitigación. Sigue la metodología del RGPD (AEPD).

   <span class="solucion-label">✅ Solución:</span>
   ```text
   Análisis de riesgos del tratamiento "Gestión de Clientes":
   
   Activos identificados:
   - Base de datos de clientes (datos de carácter personal).
   - Servidor donde se aloja el software.
   - Credenciales de acceso de los empleados.
   
   Amenazas:
   - Acceso no autorizado por robo de credenciales.
   - Pérdida de datos por fallo del servidor.
   - Fuga de datos por empleado descontento.
   - Ataque de ransomware.
   - Error humano al modificar o eliminar registros.
   
   Vulnerabilidades:
   - Contraseñas débiles o compartidas.
   - Falta de copias de seguridad automatizadas.
   - Ausencia de controles de acceso por roles.
   - Software sin actualizar.
   
   Evaluación de impacto:
   | Amenaza                    | Impacto | Probabilidad | Riesgo   |
   |----------------------------|---------|--------------|----------|
   | Acceso no autorizado       | Alto    | Media        | Alto     |
   | Pérdida de datos           | Alto    | Baja         | Medio    |
   | Fuga de datos por empleado | Alto    | Baja         | Medio    |
   | Ransomware                 | Alto    | Baja         | Medio    |
   | Error humano               | Medio   | Alta         | Alto     |
   
   Medidas de mitigación:
   ✔ Autenticación multifactor (MFA) para todos los accesos.
   ✔ Copias de seguridad diarias con retención de 30 días.
   ✔ Perfiles de acceso por roles (administrador, consultor, editor).
   ✔ Plan de respuesta ante incidentes (notificación a la AEPD en 72 h si hay brecha).
   ✔ Formación anual en protección de datos para empleados.
   ```
   <span class="salida-label">📋 Salida esperada:</span>
   ```
   Análisis completo con activos, amenazas, vulnerabilidades, matriz de riesgo y medidas de mitigación.
   ```
   <aside type="tip">

El análisis de riesgos es obligatorio bajo el RGPD (art. 32 y 35). Identificar las amenazas permite aplicar medidas proporcionadas: no se trata de eliminar todo riesgo, sino de reducirlo a un nivel aceptable para los derechos de los interesados.

</aside>

3. ⭐⭐ **Diseñar un sistema de custodia con cadena de custodia digital**
   Una empresa maneja documentos que pueden ser requeridos como prueba en juicios (contratos, facturas, actas). Diseña un sistema de custodia digital que garantice la integridad, autenticidad y conservación del documento, incluyendo: sellado de tiempo (timestamp), firmas electrónicas, registro de accesos y copias de seguridad. Explica cómo se demuestra que el documento no ha sido alterado.

   <span class="solucion-label">✅ Solución:</span>
   ```text
   Sistema de custodia digital con cadena de custodia:
   
   1. Ingreso del documento:
      - Se digitaliza (si viene en papel) y se genera un PDF/A (formato de archivo estándar ISO).
      - Se calcula el hash del documento (SHA-256).
      - Se aplica un sellado de tiempo (timestamp) a través de un proveedor cualificado (TSA).
      - Se firma electrónicamente con certificado de la empresa.
   
   2. Almacenamiento:
      - El documento se almacena en un repositorio seguro con control de accesos.
      - Se guarda también el hash, el timestamp y la firma en un registro inmutable (blockchain o base de datos de solo lectura).
   
   3. Registro de accesos (log):
      - Cada vez que alguien consulta o modifica metadatos del documento, se registra: quién, cuándo, qué acción y desde qué IP.
      - El log también se protege con hash encadenado (no se puede modificar un registro sin alterar todos los siguientes).
   
   4. Verificación de integridad:
      - Para demostrar que un documento no ha sido alterado:
        1. Calcular el hash actual del documento.
        2. Compararlo con el hash almacenado en el momento del ingreso.
        3. Verificar el timestamp contra la TSA (prueba de que el documento existía en esa fecha).
        4. Verificar la firma electrónica.
      - Si todo coincide, el documento es auténtico y no ha sido modificado.
   
   5. Conservación:
      - Copias de seguridad diarias en ubicación geográficamente separada.
      - Migración periódica de formatos (cuando un formato queda obsoleto) sin romper la cadena de custodia.
   ```
   <span class="salida-label">📋 Salida esperada:</span>
   ```
   Sistema de custodia con 5 componentes: ingreso sellado, almacenamiento seguro, registro de accesos, verificación por hash y conservación.
   ```
   <aside type="tip">

La cadena de custodia digital garantiza que un documento es admisible como prueba judicial. El hash + timestamp + firma electrónica crean un vínculo indisoluble entre el documento y su momento de creación, imposible de falsificar sin romper la cadena.

</aside>

4. ⭐⭐⭐ **Elaborar un informe de auditoría de cumplimiento normativo**
   Imagina que eres el responsable de archivo y te piden una auditoría interna de cumplimiento. Elabora un informe que incluya: alcance (qué departamentos y procesos se auditan), checklist de verificación (al menos 10 puntos sobre RGPD, LOPDGDD, ENS si aplica), hallazgos (3 no conformidades realistas), recomendaciones y plan de acción con plazos. Redacta el informe como si fuera para la dirección de la empresa.

   <span class="solucion-label">✅ Solución:</span>
   ```text
   INFORME DE AUDITORÍA DE CUMPLIMIENTO NORMATIVO
   Fecha: 30/06/2026
   Auditor: [Nombre del responsable de archivo]
   Alcance: Departamento de Administración, Comercial y RRHH. Procesos de tratamiento de datos de clientes, empleados y proveedores.
   
   Checklist de verificación:
   1. ¿Existe un registro de actividades de tratamiento (RAT) actualizado? ✔/✘
   2. ¿Se ha informado a los interesados del tratamiento de sus datos? ✔/✘
   3. ¿Los formularios de recogida de datos incluyen la cláusula informativa? ✔/✘
   4. ¿Se han firmado contratos de encargado de tratamiento con los proveedores? ✔/✘
   5. ¿Las contraseñas cumplen la política de seguridad (8+ caracteres, especiales)? ✔/✘
   6. ¿Existe copia de seguridad automatizada y verificada? ✔/✘
   7. ¿Se han clasificado los documentos según el cuadro de clasificación? ✔/✘
   8. ¿Se aplican los plazos de conservación según la normativa? ✔/✘
   9. ¿Existe un procedimiento para atender derechos ARCO? ✔/✘
   10. ¿Los accesos a datos personales están registrados (logs)? ✔/✘
   
   Hallazgos:
   ❌ No conformidad 1 - RAT desactualizado: El registro de actividades no incluye el nuevo software de gestión de clientes implantado en enero.
   ❌ No conformidad 2 - Contratos de encargado pendientes: El proveedor del software de facturación electrónica no ha firmado el contrato de encargado de tratamiento.
   ❌ No conformidad 3 - Copias de seguridad no verificadas: Existe copia automatizada pero no se ha probado la restauración en los últimos 6 meses.
   
   Recomendaciones:
   ✅ Actualizar el RAT en un plazo de 15 días.
   ✅ Solicitar y firmar el contrato de encargado de tratamiento con el proveedor en 30 días.
   ✅ Realizar una prueba de restauración mensual y documentar el resultado.
   ✅ Impartir formación anual en protección de datos a toda la plantilla.
   
   Plan de acción:
   | Acción                                    | Responsable       | Plazo       |
   |-------------------------------------------|-------------------|-------------|
   | Actualizar RAT                            | Responsable RGPD  | 15/07/2026  |
   | Firmar contrato encargado tratamiento     | Administración    | 31/07/2026  |
   | Primera prueba de restauración            | Sistemas          | 15/07/2026  |
   | Formación anual RGPD                      | RRHH              | 30/09/2026  |
   
   Firmado: [Responsable de archivo]
   ```
   <span class="salida-label">📋 Salida esperada:</span>
   ```
   Informe de auditoría completo con alcance, checklist, 3 hallazgos, recomendaciones y plan de acción con plazos.
   ```
   <aside type="tip">

Un informe de auditoría no solo detecta incumplimientos, sino que propone soluciones con plazos concretos. La dirección necesita saber qué está mal, por qué es importante y qué hay que hacer para solucionarlo. Sin plan de acción, la auditoría es solo un papel.

</aside>

```

## 🧠 Tu turno como Knowledge Manager

<div class="escenario-box">
### Escenario: La auditoría que destapa una filtración de datos

El Delegado de Protección de Datos de GesDoc Consulting te informa de que ha recibido una notificación: un empleado del departamento de Formación ha enviado por error un listado de empleados con datos personales (nombre, DNI, salario) a toda la lista de distribución de clientes externos. El error ocurrió hace 20 minutos. Ahora mismo no sabes: (1) cuántos destinatarios lo han recibido, (2) si los datos se pueden recuperar, (3) qué obligación legal tienes de notificar a la Agencia Española de Protección de Datos.

**Tu misión:** ¿Cuáles son las 3 acciones inmediatas que pones en marcha en los próximos 5 minutos? ¿Qué medidas preventivas implementarías en los workflows de aprobación de documentos para que un error así no pueda volver a ocurrir?

<aside type="tip">

- La AEPD debe ser notificada en un plazo de 72 horas si hay riesgo para los derechos de las personas
- La primera acción es contener: pedir al empleado que revoque el correo si es posible, o enviar un correo de rectificación
- Los workflows de aprobación deberían detectar automáticamente envíos masivos con datos personales y requerir una doble validación

</aside>

```

</div>