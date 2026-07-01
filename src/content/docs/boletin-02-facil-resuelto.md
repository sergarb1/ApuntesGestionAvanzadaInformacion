---
title: "Boletín 2 - Fácil: Planificación y seguimiento de proyectos con herramientas digitales"
---


## Ejercicio 1: Creación de una Estructura de Desglose del Trabajo (EDT/WBS)

La empresa ElectroHogar va a lanzar un nuevo producto: una aspiradora inteligente con navegación láser. Desarrolla la EDT (WBS) hasta el tercer nivel para este proyecto. Identifica al menos 4 paquetes de trabajo principales y desglosa cada uno en al menos 3 subpaquetes.

**Solución:**

`markdown
**EDT - LANZAMIENTO ASPIRADORA INTELIGENTE "CLEANBOT X1"**
**Empresa:** ElectroHogar S.A.

1.0 DISEÑO Y DESARROLLO
    1.1 Diseño industrial del producto
    1.2 Desarrollo del software de navegación
    1.3 Integración de sensores y hardware
    1.4 Prototipado y pruebas funcionales

2.0 PRODUCCIÓN Y LOGÍSTICA
    2.1 Selección de proveedores de componentes
    2.2 Fabricación de 5.000 unidades piloto
    2.3 Control de calidad (pruebas en 10% de unidades)
    2.4 Embalaje y preparación para distribución

3.0 MARKETING Y VENTAS
    3.1 Campaña de lanzamiento (online + tiendas físicas)
    3.2 Formación a la fuerza de ventas (30 comerciales)
    3.3 Material promocional (catálogo, vídeo, web)
    3.4 Estrategia de precios y promociones

4.0 SOPORTE POST-VENTA
    4.1 Manual de usuario y guía rápida
    4.2 Centro de atención al cliente (formación 5 operadores)
    4.3 Gestión de garantías y devoluciones
    4.4 Actualizaciones de firmware (programación)
`

**Salida esperada:**
Una EDT jerárquica con 4 paquetes de trabajo principales y al menos 3 subniveles cada uno.

<aside type="tip">

La EDT descompone el trabajo en componentes manejables. Cada nivel inferior es un subconjunto del nivel superior. La regla del 100% establece que el nivel padre debe contener todo el trabajo de sus niveles hijo.

</aside>

## Ejercicio 2: Planificación de un diagrama de Gantt

El proyecto de mudanza de oficinas de la empresa InnovaConsult tiene las siguientes tareas y duraciones: 1) Buscar nuevo local (15 días), 2) Contratar reformas (5 días), 3) Reformar local (30 días), 4) Contratar mudanza (3 días), 5) Empaquetar material (10 días), 6) Realizar mudanza (2 días), 7) Instalar equipos informáticos (5 días), 8) Reabrir oficina (1 día). Las dependencias son: 1 precede a 2 y 3; 2 y 3 preceden a 5; 4 comienza tras 2; 5 y 6 preceden a 7; 7 precede a 8. Construye un diagrama de Gantt indicando la duración total del proyecto.

**Solución:**

`markdown
**DIAGRAMA DE GANTT - MUDANZA OFICINAS INNOVACONSULT**

| Tarea | Duración | Sem 1 | Sem 2 | Sem 3 | Sem 4 | Sem 5 | Sem 6 | Sem 7 | Sem 8 |
|-------|----------|-------|-------|-------|-------|-------|-------|-------|-------|
| 1. Buscar local | 15 d | ████████ | ███████ | | | | | | |
| 2. Contratar reformas | 5 d | | | █████ | | | | | |
| 3. Reformar local | 30 d | | | | ████████████████████████████████ | | | | |
| 4. Contratar mudanza | 3 d | | | | ███ | | | | |
| 5. Empaquetar material | 10 d | | | | | ██████████ | | | |
| 6. Realizar mudanza | 2 d | | | | | | ██ | | |
| 7. Instalar equipos | 5 d | | | | | | █████ | | |
| 8. Reabrir oficina | 1 d | | | | | | | █ | |

**Duración total del proyecto:** 50 días hábiles (10 semanas)

**Camino crítico:** Tarea 1 → Tarea 3 → Tarea 5 → Tarea 7 → Tarea 8
(no hay margen en estas tareas; cualquier retraso afecta la fecha de fin)
`

**Salida esperada:**
Un diagrama de Gantt con las tareas, duraciones, dependencias y la duración total del proyecto.

<aside type="tip">

El diagrama de Gantt es una herramienta visual de planificación. Las dependencias determinan el orden de las tareas. El camino crítico es la secuencia de tareas que determina la duración mínima del proyecto.

</aside>

## Ejercicio 3: Análisis de riesgos del proyecto

Identifica al menos 6 riesgos para el proyecto de lanzamiento de la aspiradora inteligente del ejercicio 1. Para cada riesgo, indica: descripción, probabilidad (Alta/Media/Baja), impacto (Alto/Medio/Bajo), y una medida de mitigación concreta. Utiliza una tabla de registro de riesgos.

**Solución:**

`markdown
**REGISTRO DE RIESGOS - PROYECTO CLEANBOT X1**

| ID | Descripción del riesgo | Probabilidad | Impacto | Mitigación |
|----|----------------------|:-----------:|:-------:|-----------|
| R1 | Retraso del proveedor de sensores láser | Media | Alto | Tener 2 proveedores alternativos homologados |
| R2 | Fallo en la precisión del mapeo láser | Media | Alto | Realizar pruebas beta con 100 usuarios antes del lanzamiento |
| R3 | Incumplimiento normativa de seguridad eléctrica | Baja | Muy Alto | Contratar auditoría externa de certificación en fase de diseño |
| R4 | Rotura de stock en el lanzamiento | Alta | Medio | Fabricar un 20% adicional sobre la previsión inicial |
| R5 | Baja aceptación del mercado por precio elevado | Media | Alto | Realizar encuesta de precio percibido antes de fijar el PVP |
| R6 | Fuga de información técnica a la competencia | Baja | Alto | Firmar NDAs con todos los implicados y limitar acceso a planos |
`

**Salida esperada:**
Un registro de riesgos con al menos 6 entradas, cada una con descripción, probabilidad, impacto y mitigación.

<aside type="tip">

El registro de riesgos es un documento vivo que se actualiza durante todo el proyecto. Las medidas de mitigación deben ser acciones concretas y asignables a una persona responsable.

</aside>

## Ejercicio 4: Elaboración de un presupuesto de proyecto

Elabora el presupuesto detallado para el proyecto de mudanza del ejercicio 2. Incluye: costes de personal (3 personas implicadas: Jefe de Proyecto a 300 €/día, Administrativo a 150 €/día, Técnico a 200 €/día), costes de materiales (embalaje 1.200 €, reformas 15.000 €, mudanza 3.500 €, instalación redes 2.800 €) y costes de contingencia (10% del total). Calcula el presupuesto final.

**Solución:**

`markdown
**PRESUPUESTO - MUDANZA OFICINAS INNOVACONSULT**

**1. Costes de personal:**
| Rol | Días estimados | Coste/día | Total |
|-----|:-------------:|:---------:|:-----:|
| Jefe de Proyecto | 20 | 300 € | 6.000 € |
| Administrativo | 30 | 150 € | 4.500 € |
| Técnico informático | 15 | 200 € | 3.000 € |
| **Total personal** | | | **13.500 €** |

**2. Costes de materiales y servicios:**
| Concepto | Importe |
|----------|:-------:|
| Material de embalaje (cajas, film, etiquetas) | 1.200 € |
| Reformas del nuevo local (pintura, electricidad, climatización) | 15.000 € |
| Servicio de mudanza (carga, transporte, descarga) | 3.500 € |
| Instalación de redes y equipos informáticos | 2.800 € |
| **Total materiales** | **22.500 €** |

**3. Cálculo del presupuesto:**
| Concepto | Importe |
|----------|:-------:|
| Total costes directos (personal + materiales) | 36.000 € |
| Contingencia (10%) | 3.600 € |
| **Presupuesto final** | **39.600 €** |
`

**Salida esperada:**
Un presupuesto desglosado en personal y materiales, con contingencia y total final.

<aside type="tip">

El presupuesto debe incluir todos los costes necesarios para ejecutar el proyecto. La contingencia cubre imprevistos y se calcula como un porcentaje sobre los costes directos (generalmente entre 5% y 15% según la incertidumbre del proyecto).

</aside>

## 🧠 Tu turno como Knowledge Manager

### Escenario: La reunión de seguimiento donde nadie ha actualizado nada

Son las 9:30. Empieza la reunión semanal de seguimiento del proyecto Knowledge Manager. Abres el cronograma en la pantalla y ves que los estados no se han actualizado desde la semana pasada. Preguntas "¿cómo vamos?" y obtienes respuestas vagas: "ahí, ahí", "estoy en ello", "esta semana lo termino".

**Tu misión:** ¿Cómo reconduces la reunión para obtener información útil? ¿Qué dos cambios harías en el proceso de seguimiento para que no vuelva a pasar?

> **Pistas para la reflexión:**
> - Las preguntas cerradas ("¿al 100%?") dan respuestas concretas; las abiertas ("¿cómo va?") dan vaguedades
> - ¿Quién actualiza el cronograma? ¿Cada miembro del equipo o una sola persona?
> - Una reunión sin datos es una conversación de café. Una reunión con datos es gestión.
