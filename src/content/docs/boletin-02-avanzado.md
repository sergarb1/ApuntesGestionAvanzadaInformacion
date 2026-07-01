---
title: "Boletín 2 - Avanzado: Planificación y seguimiento de proyectos con herramientas digitales"
---


## Ejercicio 1: Cálculo del camino crítico y holguras (⭐)

El proyecto de desarrollo de una nueva plataforma de e-learning tiene las siguientes tareas con sus duraciones y dependencias:

| Tarea | Descripción | Duración (días) | Dependencias |
|-------|-------------|:--------------:|:------------:|
| A | Análisis de requisitos | 5 | - |
| B | Diseño pedagógico | 8 | A |
| C | Desarrollo frontend | 12 | B |
| D | Desarrollo backend | 15 | B |
| E | Creación de contenidos | 10 | A |
| F | Pruebas de integración | 6 | C, D |
| G | Pruebas con usuarios | 4 | E, F |
| H | Despliegue y lanzamiento | 3 | G |

Calcula: a) la duración total del proyecto, b) el camino crítico, c) la holgura total de cada tarea.

> 💡 **Pista:** Calcula los tiempos tempranos (inicio y fin) recorriendo el grafo de izquierda a derecha. Luego calcula los tiempos tardíos recorriendo de derecha a izquierda. La holgura es la diferencia entre ambos. El camino crítico son las tareas con holgura cero. Recuerda que cuando confluyen dos tareas, el tiempo temprano de la siguiente es el máximo de los dos.

## Ejercicio 2: Análisis del valor ganado (Earned Value) (⭐⭐)

Un proyecto de consultoría tiene un presupuesto total (BAC) de 150.000 € y una duración prevista de 6 meses. Al finalizar el mes 3, se han ejecutado 3 de 6 fases (50% del trabajo planificado). Los costes reales acumulados son 90.000 €. Calcula: PV, EV, AC, CV, SV, CPI, SPI. Interpreta los resultados y pronostica el coste final (EAC).

> 💡 **Pista:** PV es lo que debería haberse gastado según lo planificado. EV es el valor del trabajo realmente completado. AC es lo que realmente se ha gastado. Compara EV vs AC para ver desviación de coste (CV) y EV vs PV para ver desviación de plazo (SV). CPI = EV/AC, si es menor que 1 hay sobrecoste. El EAC = BAC/CPI pronostica el coste final.

## Ejercicio 3: Matriz de probabilidad e impacto con simulación (⭐⭐⭐)

Para el proyecto de la plataforma e-learning, se han identificado los siguientes 6 riesgos. Construye una matriz de probabilidad-impacto (5x5) y calcula el valor esperado del riesgo (Probabilidad x Impacto económico). Prioriza los riesgos y propone un plan de respuesta para los 3 riesgos críticos.

| Riesgo | Probabilidad | Impacto económico |
|--------|:-----------:|:----------------:|
| R1: Rotación del desarrollador principal | 30% | 25.000 € |
| R2: Cambio en requisitos legales de protección de datos | 20% | 40.000 € |
| R3: Fallo en servidores cloud durante el lanzamiento | 10% | 60.000 € |
| R4: Curva de aprendizaje lenta de los usuarios | 60% | 8.000 € |
| R5: Incompatibilidad con navegadores antiguos | 40% | 12.000 € |
| R6: Retraso en la entrega de contenidos por proveedor externo | 50% | 15.000 € |

> 💡 **Pista:** Asigna un nivel del 1 al 5 tanto a la probabilidad como al impacto (ej. 10% = 1, 60% = 4). Ubica cada riesgo en la matriz 5x5 según sus coordenadas. El valor esperado (Probabilidad x Impacto económico) te permite priorizar numéricamente. Para los planes de respuesta, piensa en: ¿podemos evitar, mitigar, transferir o aceptar este riesgo?

## Ejercicio 4: Nivelación de recursos (Resource Leveling) (⭐⭐⭐⭐)

El proyecto de consultoría tiene 4 consultores disponibles. Las tareas y sus necesidades de recursos son:

| Tarea | Duración (días) | Consultores necesarios | Dependencias |
|-------|:--------------:|:---------------------:|:------------:|
| A | 3 | 2 | - |
| B | 5 | 3 | - |
| C | 4 | 1 | A |
| D | 6 | 2 | A |
| E | 3 | 3 | B, C |
| F | 2 | 4 | D, E |

Planifica la asignación de recursos aplicando nivelación. Calcula la duración inicial (sin nivelar), identifica el conflicto de recursos, aplica nivelación y calcula la nueva duración. Presenta un diagrama de carga de recursos antes y después.

> 💡 **Pista:** Dibuja primero la planificación sin restricciones y calcula los recursos necesarios por día. Identifica los días donde se superan los 4 consultores disponibles. Para nivelar, retrasa las tareas con holgura (no críticas) hasta que la demanda no supere la oferta. Mide cuántos días adicionales añade la nivelación al proyecto.

## 🧠 Tu turno como Knowledge Manager

### Escenario: La reunión de seguimiento donde nadie ha actualizado nada

Son las 9:30. Empieza la reunión semanal de seguimiento del proyecto Knowledge Manager. Abres el cronograma en la pantalla y ves que los estados no se han actualizado desde la semana pasada. Preguntas "¿cómo vamos?" y obtienes respuestas vagas: "ahí, ahí", "estoy en ello", "esta semana lo termino".

**Tu misión:** ¿Cómo reconduces la reunión para obtener información útil? ¿Qué dos cambios harías en el proceso de seguimiento para que no vuelva a pasar?

> **Pistas para la reflexión:**
> - Las preguntas cerradas ("¿al 100%?") dan respuestas concretas; las abiertas ("¿cómo va?") dan vaguedades
> - ¿Quién actualiza el cronograma? ¿Cada miembro del equipo o una sola persona?
> - Una reunión sin datos es una conversación de café. Una reunión con datos es gestión.
