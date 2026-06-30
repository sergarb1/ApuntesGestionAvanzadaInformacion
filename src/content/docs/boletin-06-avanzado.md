---
title: "Boletín 06 - Nivel Avanzado: Comunicación y trabajo en equipo con herramientas web"
---

1. ⭐ **Diseñar una estructura de equipos para toda la organización**
   Una empresa de 50 empleados tiene los departamentos: Dirección, RRHH, Comercial, Producción y Administración. Diseña una estructura en Teams con equipos públicos y privados, canales estándar y privados, y justifica qué tipo de equipo usarías para cada departamento. Especifica quién debería ser propietario en cada caso.

   > 💡 **Pista:** Los equipos de Dirección y RRHH suelen manejar información confidencial. Los canales privados son útiles dentro de un equipo público cuando solo un subgrupo debe acceder a ciertos contenidos.

2. ⭐⭐ **Automatizar el envío de una agenda semanal con Power Automate**
   Crea un flujo en Power Automate que cada lunes a las 8:00 h publique un mensaje en el canal "General" del equipo con el resumen de tareas pendientes del Planner. Describe los pasos para configurarlo y qué conectores necesitas.

   > 💡 **Pista:** Necesitarás los conectores "Programación", "Planner" y "Teams". El flujo debe obtener las tareas no completadas y luego publicarlas formateadas como mensaje. Usa "Aplicar a cada" para iterar.

3. ⭐⭐ **Configurar una reunión recurrente con grabación automática**
   Programa una reunión recurrente semanal (los miércoles de 9:30 a 10:30) llamada "Seguimiento de proyectos". Activa la grabación automática y la transcripción en vivo. Configura que los archivos de grabación se guarden en la biblioteca de documentos del equipo "Proyecto Facturación 2026".

   > 💡 **Pista:** La opción de grabación automática está en "Opciones de reunión". Las grabaciones se guardan en OneDrive del organizador por defecto; tendrás que configurar el destino en SharePoint del equipo.

4. ⭐⭐⭐ **Integrar un formulario externo con recogida de datos automatizada**
   Supón que tu empresa recibe solicitudes de proveedores a través de un formulario de Microsoft Forms. Diseña un sistema completo para que cada nueva respuesta:
   - Se registre en una lista de SharePoint.
   - Se cree una tarea en Planner asignada al comercial correspondiente según el producto seleccionado.
   - Se publique un mensaje en Teams con un resumen de la solicitud.
   Describe los pasos, conectores y la lógica de asignación condicional.

   > 💡 **Pista:** El desafío está en la asignación condicional. Usa una "Condición" o "Cambiar" en Power Automate para bifurcar según el producto. Necesitarás Forms, SharePoint, Planner y Teams como conectores. Ten en cuenta los límites de concurrencia al procesar el formulario.
