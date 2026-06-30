---
title: "Boletín 09 - Nivel Avanzado: Flujos de trabajo, custodia de documentos y normativa legal"
---

1. ⭐ **Diseñar un flujo de trabajo automatizado con aprobaciones en Microsoft Teams**
   Supón que cada solicitud de compra debe ser aprobada por el jefe de departamento y, si supera 5000 €, también por dirección. Diseña un flujo usando Power Automate y Approvals de Teams que incluya: formulario de solicitud, notificaciones, escalado por importe y registro en SharePoint. Incluye la lógica de tiempos de espera (si no responde en 48 h, escalar al siguiente nivel).

   > 💡 **Pista:** Usa "Esperar aprobación" de Teams Approvals. El escalado por importe se hace con una condición después de la primera aprobación. Para el tiempo de espera, configura la opción de "Tiempo de expiración" en la acción de aprobación.

2. ⭐⭐ **Realizar un análisis de riesgos para un tratamiento de datos personales**
   El departamento de Administración va a implantar un nuevo software de gestión de clientes que almacenará: nombre, DNI, dirección, email, teléfono e historial de compras. Realiza un análisis de riesgos identificando: activos, amenazas, vulnerabilidades, impacto potencial (bajo, medio, alto) y medidas de mitigación. Sigue la metodología del RGPD (AEPD).

   > 💡 **Pista:** La AEPD publica una guía de análisis de riesgos. Clasifica cada amenaza por impacto y probabilidad para obtener el nivel de riesgo. Las medidas de mitigación deben ser proporcionales al riesgo identificado. No olvides el error humano como una de las amenazas más probables.

3. ⭐⭐ **Diseñar un sistema de custodia con cadena de custodia digital**
   Una empresa maneja documentos que pueden ser requeridos como prueba en juicios (contratos, facturas, actas). Diseña un sistema de custodia digital que garantice la integridad, autenticidad y conservación del documento, incluyendo: sellado de tiempo (timestamp), firmas electrónicas, registro de accesos y copias de seguridad. Explica cómo se demuestra que el documento no ha sido alterado.

   > 💡 **Pista:** El hash SHA-256 es la base de la integridad digital. El timestamp vincula el hash a una fecha y hora certificadas por un tercero. Para demostrar que no ha sido alterado, el procedimiento es: recalcular el hash y compararlo con el original almacenado de forma inmutable.

4. ⭐⭐⭐ **Elaborar un informe de auditoría de cumplimiento normativo**
   Imagina que eres el responsable de archivo y te piden una auditoría interna de cumplimiento. Elabora un informe que incluya: alcance (qué departamentos y procesos se auditan), checklist de verificación (al menos 10 puntos sobre RGPD, LOPDGDD, ENS si aplica), hallazgos (3 no conformidades realistas), recomendaciones y plan de acción con plazos. Redacta el informe como si fuera para la dirección de la empresa.

   > 💡 **Pista:** Estructura el informe como un documento formal: título, fecha, alcance, metodología, resultados y plan de acción. Las no conformidades deben ser realistas y específicas. Cada recomendación debe tener un responsable y un plazo concreto. El tono debe ser profesional y orientado a soluciones, no solo a señalar problemas.

```

## 🧠 Tu turno como Knowledge Manager

### Escenario: La auditoría que destapa una filtración de datos

El Delegado de Protección de Datos de GesDoc Consulting te informa de que ha recibido una notificación: un empleado del departamento de Formación ha enviado por error un listado de empleados con datos personales (nombre, DNI, salario) a toda la lista de distribución de clientes externos. El error ocurrió hace 20 minutos. Ahora mismo no sabes: (1) cuántos destinatarios lo han recibido, (2) si los datos se pueden recuperar, (3) qué obligación legal tienes de notificar a la Agencia Española de Protección de Datos.

**Tu misión:** ¿Cuáles son las 3 acciones inmediatas que pones en marcha en los próximos 5 minutos? ¿Qué medidas preventivas implementarías en los workflows de aprobación de documentos para que un error así no pueda volver a ocurrir?

> **Pistas para la reflexión:**
> - La AEPD debe ser notificada en un plazo de 72 horas si hay riesgo para los derechos de las personas
> - La primera acción es contener: pedir al empleado que revoque el correo si es posible, o enviar un correo de rectificación
> - Los workflows de aprobación deberían detectar automáticamente envíos masivos con datos personales y requerir una doble validación
```
