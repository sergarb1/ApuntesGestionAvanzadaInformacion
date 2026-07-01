---
title: "Boletín 06 - Nivel Avanzado (Resuelto): Comunicación y trabajo en equipo con herramientas web"
---

1. ⭐ **Diseñar una estructura de equipos para toda la organización**
   Una empresa de 50 empleados tiene los departamentos: Dirección, RRHH, Comercial, Producción y Administración. Diseña una estructura en Teams con equipos públicos y privados, canales estándar y privados, y justifica qué tipo de equipo usarías para cada departamento. Especifica quién debería ser propietario en cada caso.

   **Solución:**
   ```text
   Estructura propuesta:
   
   1. Equipo "Dirección" → Privado (solo directivos)
      - Propietarios: Director General, Secretaría de Dirección
      - Canales: "Estrategia", "Informes confidenciales" (privado)
   
   2. Equipo "RRHH" → Privado (datos personales de empleados)
      - Propietarios: Responsable de RRHH, Asistente de RRHH
      - Canales: "Selección", "Nóminas" (privado), "Formación", "Comunicados"
   
   3. Equipo "Comercial" → Público (toda la empresa puede verlo)
      - Propietarios: Jefe Comercial, 2 comerciales senior
      - Canales: "Ofertas", "Clientes", "Incidencias comerciales"
   
   4. Equipo "Producción" → Público
      - Propietarios: Jefe de Producción, Encargado de turno
      - Canales: "Planificación", "Calidad", "Mantenimiento"
   
   5. Equipo "Administración" → Privado
      - Propietarios: Responsable de Administración, Asistente contable
      - Canales: "Facturación", "Contabilidad", "Archivo"
   
   Justificación: Los equipos privados protegen información sensible (nóminas, estrategia, datos contables).
   Los públicos fomentan la transparencia en áreas operativas.
   ```
   **Salida esperada:**
   ```
   Estructura de 5 equipos con canales estándar y privados correctamente justificada.
   ```
   <aside type="tip">

La combinación de equipos públicos y privados permite equilibrar la transparencia con la confidencialidad. Los canales privados dentro de un equipo público añaden una capa adicional de restricción sin crear un equipo nuevo.

</aside>

2. ⭐⭐ **Automatizar el envío de una agenda semanal con Power Automate**
   Crea un flujo en Power Automate que cada lunes a las 8:00 h publique un mensaje en el canal "General" del equipo con el resumen de tareas pendientes del Planner. Describe los pasos para configurarlo y qué conectores necesitas.

   **Solución:**
   ```text
   Conectores necesarios: Planner, Teams, Programador.
   
   Pasos del flujo:
   1. Desencadenador: "Programación" → "Periodicidad" → Cada lunes a las 08:00.
   2. Acción 1 (Planner): "Obtener tareas" del plan "Tareas Documentación" filtrado por estado distinto de "Completada".
   3. Acción 2 (Teams): "Publicar mensaje en un canal" → Equipo: "Proyecto Facturación 2026" → Canal: "General".
   4. Mensaje: "Buenos días, equipo. Estas son las tareas pendientes de esta semana:\n\n[Listado de tareas]\n\n¡Ánimo con la semana!"
   
   Configuración adicional:
   - Usar "Aplicar a cada" para iterar sobre las tareas obtenidas.
   - Incluir nombre de la tarea, asignado y fecha de vencimiento.
   - Añadir una condición para etiquetar con "⚠️ Urgente" si la etiqueta es roja.
   ```
   **Salida esperada:**
   ```
   Cada lunes a las 8:00 aparece un mensaje en el canal General con las tareas pendientes del Planner.
   ```
   <aside type="tip">

Power Automate elimina la necesidad de recordatorios manuales. Al integrar Planner y Teams, el equipo recibe automáticamente el estado de sus tareas sin intervención humana.

</aside>

3. ⭐⭐ **Configurar una reunión recurrente con grabación automática**
   Programa una reunión recurrente semanal (los miércoles de 9:30 a 10:30) llamada "Seguimiento de proyectos". Activa la grabación automática y la transcripción en vivo. Configura que los archivos de grabación se guarden en la biblioteca de documentos del equipo "Proyecto Facturación 2026".

   **Solución:**
   ```text
   1. Calendario de Teams → "Nueva reunión" → "Programar reunión".
   2. Asunto: "Seguimiento de proyectos".
   3. Periodicidad: "Semanal" → los miércoles → 9:30-10:30.
   4. En "Opciones de reunión" (acceso por "Opciones" en la barra superior):
      - "Grabar automáticamente": Activar.
      - "Permitir transcripción": Activar.
   5. Ubicación de grabaciones: Las grabaciones de Teams se guardan por defecto en OneDrive del organizador. Para cambiarlo a la biblioteca del equipo:
      - Ir a SharePoint del equipo → Biblioteca de documentos.
      - En la reunión recurrente, añadir la pestaña "Grabaciones" vinculada a la carpeta de SharePoint.
      - Opcional: usar Power Automate para mover las grabaciones automáticamente tras finalizar.
   6. Invitar a los asistentes habituales y guardar.
   ```
   **Salida esperada:**
   ```
   Reunión recurrente creada. Cada miércoles se grabará y transcribirá automáticamente.
   ```
   <aside type="tip">

La grabación automática asegura que ningún asistente pierda información si no puede acudir. La transcripción en vivo permite buscar palabras clave dentro de la reunión posteriormente.

</aside>

4. ⭐⭐⭐ **Integrar un formulario externo con recogida de datos automatizada**
   Supón que tu empresa recibe solicitudes de proveedores a través de un formulario de Microsoft Forms. Diseña un sistema completo para que cada nueva respuesta:
   - Se registre en una lista de SharePoint.
   - Se cree una tarea en Planner asignada al comercial correspondiente según el producto seleccionado.
   - Se publique un mensaje en Teams con un resumen de la solicitud.
   Describe los pasos, conectores y la lógica de asignación condicional.

   **Solución:**
   ```text
   Conectores: Microsoft Forms, SharePoint, Planner, Teams.
   
   Flujo completo:
   
   1. Desencadenador: "Cuando se envía una nueva respuesta" (Forms).
   2. Acción 1 (SharePoint): "Crear elemento en lista" → Lista "Solicitudes Proveedores" con campos:
      - Empresa, Contacto, Producto, Volumen estimado, Fecha.
   3. Acción 2 (Condición): Según el campo "Producto":
      - Si "Materia prima A" → Asignar a: comercial1@empresa.com
      - Si "Materia prima B" → Asignar a: comercial2@empresa.com
      - Si "Logística" → Asignar a: comercial3@empresa.com
      - Otro → Asignar a: comercial-general@empresa.com
   4. Acción 3 (Planner): "Crear tarea" → Título: "Revisar solicitud de [Empresa]" → Asignado a: [comercial según condición].
   5. Acción 4 (Teams): "Publicar mensaje" → Canal "Incidencias" con:
      "📩 Nueva solicitud de [Empresa] para [Producto]. Comercial asignado: [Nombre]. Revisar en Planner."
   
   Nota: Usar "Aplicar a cada" y "Configuración de concurrentes" para evitar límites de API.
   ```
   **Salida esperada:**
   ```
   Cada respuesta de formulario genera un registro en SharePoint, una tarea en Planner y un aviso en Teams.
   ```
   <aside type="tip">

Este flujo elimina la entrada manual de datos y reduce el tiempo de respuesta a proveedores. La asignación condicional garantiza que cada solicitud llegue automáticamente a la persona adecuada.

</aside>

```

## 🧠 Tu turno como Knowledge Manager

### Escenario: El equipo que habla en 4 idiomas (digitales)

Eres el Knowledge Manager y acabas de descubrir que el equipo del proyecto se comunica así: los de Madrid usan Teams, los de Barcelona usan WhatsApp, los de Valencia usan correo electrónico y los de Bilbao usan Slack (herencia de un cliente antiguo). Cada vez que hay que tomar una decisión importante, la información está repartida en 4 sitios distintos y nadie tiene la versión completa. Las decisiones se retrasan, la gente se salta cadenas y los malentendidos crecen.

**Tu misión:** Diseña un plan de unificación de la comunicación en 30 días. ¿Qué herramienta eliges como canal oficial? ¿Cómo convences a cada oficina para que abandone su herramienta actual? ¿Qué haces con la información histórica que ya está en cada plataforma?

> **Pistas para la reflexión:**
> - La mejor herramienta no es la más potente, es la que todo el equipo usa de verdad
> - El cambio requiere formación y un período de solapamiento (no apagues todas las herramientas el mismo día)
> - La información histórica importante debe migrarse; la trivial puede perderse
```
