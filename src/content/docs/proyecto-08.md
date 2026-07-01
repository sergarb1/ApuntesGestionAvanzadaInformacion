---
title: "Proyecto 8: Sistema de clasificación documental"
---

## 🎯 Objetivo
Diseñar e implementar un sistema de clasificación documental para GesDoc Consulting que incluya una taxonomía corporativa, un esquema de metadatos y la configuración de un sistema de digitalización y captura de documentos, garantizando la organización, recuperación y trazabilidad de todos los activos documentales de la organización.

## 📖 Contexto
GesDoc Consulting genera miles de documentos al año: informes de consultoría, presentaciones de clientes, materiales formativos, propuestas comerciales, contratos y actas de reuniones. Actualmente, cada área guarda sus documentos en carpetas compartidas sin una estructura común, los nombres de archivo son inconsistentes y encontrar un documento concreto puede llevar horas. Además, muchos documentos críticos solo existen en papel. El proyecto KM ha alcanzado la fase de organización documental y usted debe diseñar un sistema de clasificación que permita categorizar, etiquetar, almacenar y recuperar cualquier documento de forma rápida y consistente. Este sistema será la base del repositorio documental que alimentará el portal del conocimiento (Proyecto 7).

## 📋 Tareas del proyecto
<div class="tarea-item">

1. Diseñar una taxonomía corporativa jerárquica para GesDoc Consulting con al menos 3 niveles de profundidad y 5 categorías principales (ej: Informes, Formación, Comercial, Proyectos, Administración).

</div>
<div class="tarea-item">

2. Definir un esquema de metadatos obligatorios y opcionales para cada tipo documental (título, autor, fecha, área, cliente, versión, palabras clave, formato, confidencialidad, estado).

</div>
<div class="tarea-item">

3. Crear una tabla de retención documental que especifique los plazos de conservación y el destino final (archivo histórico o destrucción) para cada categoría documental.

</div>
<div class="tarea-item">

4. Definir el procedimiento de captura y registro de nuevos documentos, especificando qué metadatos se asignan en el momento de la incorporación al sistema (origen, tipo documental, área responsable, nivel de confidencialidad).

</div>
<div class="tarea-item">

5. Elaborar una guía de clasificación documental para los empleados, con instrucciones claras sobre cómo clasificar y etiquetar cada documento.

</div>
<div class="tarea-item">

6. Probar el sistema clasificando al menos 10 documentos reales o simulados de diferentes áreas y tipos.

</div>

## 📦 Entregables
- 📄 Documento de diseño del sistema de clasificación (8-12 páginas en Word): taxonomía, esquema de metadatos, tabla de retención.
- 📄 Guía de clasificación documental para empleados (3-5 páginas, formato infografía o documento breve).
- 📄 Procedimiento de captura y registro: descripción del proceso de alta de nuevos documentos con los metadatos obligatorios.
- 📄 Muestra de 10 documentos clasificados con sus metadatos completos (tabla Excel o capturas).

## 📊 Criterios de evaluación
- 🏆 **Calidad de la taxonomía (30%):** Jerarquía lógica, cobertura completa, términos consistentes y no ambiguos.
- 🏆 **Esquema de metadatos (25%):** Metadatos relevantes, vocabularios controlados, campos obligatorios bien definidos.
- 🏆 **Tabla de retención (20%):** Plazos justificados, cumplimiento legal, destino final claro.
- 🏆 **Aplicabilidad (25%):** Guía clara para empleados, documentos correctamente clasificados, flujo de digitalización definido.

## 🛠️ Recursos y herramientas
- Estándares: ISAD(G), Dublin Core, ISO 15489 (gestión documental)
- Herramienta de gestión documental: SharePoint, Alfresco, ownCloud, o sistema de carpetas con metadatos en Windows
- Para el diseño de flujos de trabajo del ciclo de vida documental, consulte el Proyecto 9
- Vocabularios controlados: tesauros, listas de términos autorizados

## 💡 Consejos para el Knowledge Manager
<div class="consejo-box">

- La taxonomía debe reflejar cómo piensan los usuarios, no cómo está organizada la empresa. Observe cómo buscan los documentos los empleados antes de diseñarla.

</div>
<div class="consejo-box">

- No diseñe una taxonomía demasiado profunda. Más de 4 niveles y los usuarios se pierden.

</div>
<div class="consejo-box">

- Los metadatos obligatorios deben ser los mínimos indispensables. Si pide demasiados, los empleados saltarán el proceso.

</div>
<div class="consejo-box">

- Pruebe el sistema con un grupo piloto durante dos semanas antes del despliegue general. Las primeras semanas revelarán problemas que no había anticipado.

</div>

## 🧠 Tu turno como Knowledge Manager

<div class="escenario-box">

### Escenario: El documento confidencial que apareció donde no debía

Un auditor externo está revisando los procesos documentales de GesDoc Consulting. Durante la auditoría, encuentra un informe confidencial de recursos humanos (con datos salariales de empleados) almacenado en la carpeta compartida de "Plantillas corporativas", accesible para toda la empresa. El auditor te pregunta: "¿Cómo ha llegado esto aquí? ¿Quién tiene acceso? ¿Cuál es el procedimiento para clasificar documentos confidenciales?".

**Tu misión:** Analiza cómo ha podido ocurrir este fallo en el sistema de clasificación documental. ¿Qué medidas técnicas y de proceso implementarías para evitar que vuelva a suceder? ¿Cómo auditarías retrospectivamente la clasificación de los documentos existentes? Redacta las tres acciones prioritarias que pondrías en marcha mañana mismo.


</div>

<aside type="tip">

**Pistas para la reflexión:**
- El error no es de la persona que guardó el archivo, es del proceso que lo permitió
- ¿Tu taxonomía incluye niveles de confidencialidad? ¿Y metadatos de acceso?
- ¿Cómo formas a los empleados para que clasifiquen correctamente?

</aside>

<span class="solucion-label">✅ Solución orientativa</span>

<details>
<summary>🤔 Solución orientativa</summary>

Tres acciones prioritarias:
1. **Auditoría de choque:** Revisa todos los documentos de carpetas compartidas buscando archivos mal clasificados. Usa un script de búsqueda por palabras clave (confidencial, salario, datos personales, etc.) para identificar candidatos. Reclasifica y reubica los documentos sensibles en carpetas con permisos restringidos.
2. **Mejora de la taxonomía:** Añade un nivel de "confidencialidad" como metadato obligatorio en todos los documentos (Público, Interno, Confidencial, Secreto). Configura alertas automáticas: si alguien guarda un documento marcado como "Confidencial" en una carpeta de acceso general, el sistema envía una notificación al responsable.
3. **Formación exprés:** Sesión de 30 minutos para todos los empleados sobre clasificación documental. Regla simple: "Si tiene datos personales, nombres, salarios o información estratégica, no va en carpetas compartidas. Pregunta antes de guardar."

</details>

---

<p class="proyecto-footer">*Este proyecto forma parte del proyecto global "Implantación de un Sistema de Knowledge Management". Conserve todos los entregables para la integración final en la Unidad 10.*</p>

<span class="ra-badge-footer">**RA trabajados:** RA5 - Implementa sistemas de archivo digital y gestión documental, aplicando técnicas de digitalización, clasificación, almacenamiento seguro y recuperación de la información.</span>
