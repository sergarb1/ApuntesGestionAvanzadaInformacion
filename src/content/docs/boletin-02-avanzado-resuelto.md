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

**Solución:**

`markdown
**ANÁLISIS DEL CAMINO CRÍTICO - PLATAFORMA E-LEARNING**

**Diagrama de red (método PERT):**

Tempranos (Inicio - Fin):
| Tarea | Duración | Inicio temprano | Fin temprano | Inicio tardío | Fin tardío | Holgura |
|-------|:-------:|:--------------:|:------------:|:-------------:|:----------:|:-------:|
| A | 5 | 0 | 5 | 0 | 5 | 0 |
| B | 8 | 5 | 13 | 5 | 13 | 0 |
| C | 12 | 13 | 25 | 13 | 25 | 0 |
| D | 15 | 13 | 28 | 16 | 31 | 3 |
| E | 10 | 5 | 15 | 19 | 29 | 14 |
| F | 6 | 28 | 34 | 28 | 34 | 0 |
| G | 4 | 34 | 38 | 34 | 38 | 0 |
| H | 3 | 38 | 41 | 38 | 41 | 0 |

**Resultados:**

a) **Duración total del proyecto:** 44 días

b) **Camino crítico:** A → B → C → ... (espera, revisemos)
   Camino 1: A(5) → B(8) → C(12) → F(6) → G(4) → H(3) = 38 días
   Camino 2: A(5) → B(8) → D(15) → F(6) → G(4) → H(3) = 41 días
   Camino 3: A(5) → E(10) → G(4) → H(3) = 22 días

   **Camino crítico:** A → B → D → F → G → H (41 días)
   **Duración total:** 41 días

c) **Holguras totales:**
   - Tarea A: 0 días (crítica)
   - Tarea B: 0 días (crítica)
   - Tarea C: 41 - (5+8+12+6+4+3) = 3 días
   - Tarea D: 0 días (crítica)
   - Tarea E: 41 - (5+10+4+3) = 19 días
   - Tarea F: 0 días (crítica)
   - Tarea G: 0 días (crítica)
   - Tarea H: 0 días (crítica)

**Conclusión:** El proyecto dura 41 días. El camino crítico es A-B-D-F-G-H.
Las tareas C y E tienen holgura (3 y 19 días respectivamente) y pueden retrasarse sin afectar la fecha de fin.
`

**Salida esperada:**
Una tabla con el cálculo de tiempos tempranos y tardíos, identificación del camino crítico y holgura de cada tarea.

<aside type="tip">

El camino crítico es la secuencia de tareas con holgura cero. Cualquier retraso en estas tareas retrasa el proyecto. Las tareas no críticas tienen holgura, que es el tiempo que pueden retrasarse sin afectar la fecha de finalización.

</aside>

## Ejercicio 2: Análisis del valor ganado (Earned Value) (⭐⭐)

Un proyecto de consultoría tiene un presupuesto total (BAC) de 150.000 € y una duración prevista de 6 meses. Al finalizar el mes 3, se han ejecutado 3 de 6 fases (50% del trabajo planificado). Los costes reales acumulados son 90.000 €. Calcula: PV, EV, AC, CV, SV, CPI, SPI. Interpreta los resultados y pronostica el coste final (EAC).

**Solución:**

`markdown
**ANÁLISIS DEL VALOR GANADO - PROYECTO CONSULTORÍA**

**Datos:**
- BAC (Presupuesto total): 150.000 €
- Duración: 6 meses
- Mes de análisis: 3
- % completado planificado: 50% (3 fases de 6)
- % completado real: 50%
- Costes reales (AC): 90.000 €

**Cálculos:**

PV (Valor planificado) = 50% de 150.000 = 75.000 €
EV (Valor ganado) = 50% de 150.000 = 75.000 €
AC (Coste real) = 90.000 €

CV (Variación de coste) = EV - AC = 75.000 - 90.000 = -15.000 € (negativo, sobrecoste)
SV (Variación de plazo) = EV - PV = 75.000 - 75.000 = 0 € (en plazo)

CPI (Índice rendimiento coste) = EV / AC = 75.000 / 90.000 = 0,83 (por cada € gastado se obtienen 0,83 € de valor)
SPI (Índice rendimiento plazo) = EV / PV = 75.000 / 75.000 = 1,00 (en plazo)

**Interpretación:**
- El proyecto está en plazo (SV = 0, SPI = 1,00)
- Pero tiene sobrecoste (CV = -15.000 €, CPI = 0,83)
- Por cada euro presupuestado, se están gastando 1,20 € (1/0,83)

**Pronóstico:**
EAC (Coste estimado al finalizar) = BAC / CPI = 150.000 / 0,83 = 180.723 €
VAC (Variación al finalizar) = BAC - EAC = 150.000 - 180.723 = -30.723 €

**Conclusión:** Si el rendimiento de costes no mejora, el proyecto terminará con un sobrecoste de aproximadamente 30.723 € sobre el presupuesto inicial.
`

**Salida esperada:**
Cálculos completos de EVM con interpretación y pronóstico del coste final.

<aside type="tip">

El análisis del valor ganado (EVM) integra alcance, plazo y coste. Un CPI menor que 1 indica sobrecoste. Un SPI menor que 1 indica retraso. El EAC pronostica el coste final si el rendimiento actual se mantiene.

</aside>

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

**Solución:**

`markdown
**MATRIZ DE PROBABILIDAD-IMPACTO Y VALOR ESPERADO**

| Riesgo | Probabilidad | Impacto | Valor esperado | Prioridad |
|--------|:-----------:|:-------:|:-------------:|:---------:|
| R1 | 30% (3) | 25.000 € (3) | 7.500 € | Crítico |
| R2 | 20% (2) | 40.000 € (4) | 8.000 € | Crítico |
| R3 | 10% (1) | 60.000 € (5) | 6.000 € | Alto |
| R4 | 60% (4) | 8.000 € (2) | 4.800 € | Alto |
| R5 | 40% (3) | 12.000 € (2) | 4.800 € | Alto |
| R6 | 50% (4) | 15.000 € (3) | 7.500 € | Crítico |

**Matriz 5x5 (Probabilidad x Impacto):**
`
Impacto →  1(MB)   2(B)    3(M)    4(A)    5(MA)
Probabilidad ↓
5 (MA)     |  B  |  M   |  A   |  A   |  MA  |
4 (A)      |  B  |  M   |  A   |  A   |  A   |
3 (M)      |  B  |  B   |  M   |  A   |  A   |
2 (B)      |  MB |  B   |  M   |  M   |  A   |
1 (MB)     |  MB |  MB  |  B   |  M   |  M   |
`
(R1→3x3=M, R2→2x4=M, R3→1x5=M, R4→4x2=M, R5→3x2=B, R6→4x3=A)

**Planes de respuesta para riesgos críticos (R1, R2, R6):**

| Riesgo | Respuesta | Tipo | Acción concreta |
|--------|-----------|------|----------------|
| R1 | Contratar un segundo desarrollador senior como respaldo | Mitigar | Tener un contractor disponible con contrato de disponibilidad (5.000 €/mes) |
| R2 | Auditoría legal preventiva antes del desarrollo | Mitigar | Contratar despacho especializado en protección de datos (3.000 €) |
| R6 | Penalización contractual al proveedor por retraso | Transferir | Incluir cláusula de penalización del 2% del contrato por semana de retraso |

**Valor esperado total de riesgos:** 7.500 + 8.000 + 6.000 + 4.800 + 4.800 + 7.500 = 38.600 €
`

**Salida esperada:**
Matriz de probabilidad-impacto, valor esperado de cada riesgo, priorización y plan de respuesta para los 3 críticos.

<aside type="tip">

El valor esperado del riesgo (Probabilidad x Impacto) permite priorizar objetivamente. La matriz 5x5 clasifica los riesgos en zonas de criticidad. Las respuestas pueden ser: evitar, mitigar, transferir o aceptar.

</aside>

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

**Solución:**

`markdown
**NIVELACIÓN DE RECURSOS - PROYECTO CONSULTORÍA**
Recursos disponibles: 4 consultores

**Planificación inicial (sin nivelar):**

`
Día:  1  2  3  4  5  6  7  8  9 10 11 12 13
A:    ██ ██ ██         (2 consultores)
B:    ███ ███ ███ ███ ███ (3 consultores)
C:              █      (1 consultor)
D:              ██ ██ ██ ██ ██ ██ (2 consultores)
E:                    ███ ███ ███ (3 consultores)
F:                          ████ ████ (4 consultores)
`

**Carga de recursos por día (inicial):**
| Día | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 |
|-----|---|---|---|---|---|---|---|---|---|----|----|----|----|
| Req  | 5 | 5 | 5 | 3 | 3 | 3 | 2 | 2 | 3 | 3 | 4 | 4 | 4 |
| Disp | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |
| Conflicto | SI | SI | SI | - | - | - | - | - | - | - | - | - | - |

**Conflicto:** Días 1-3 se necesitan 5 consultores pero solo hay 4 disponibles.

**Planificación nivelada (retrasando tarea B 1 día):**

`
Día:  1  2  3  4  5  6  7  8  9 10 11 12 13 14
A:    ██ ██ ██         (2 consultores)
B:       ███ ███ ███ ███ ███ (3 consultores)
C:              █      (1 consultor)
D:              ██ ██ ██ ██ ██ ██ (2 consultores)
E:                    ███ ███ ███ (3 consultores)
F:                          ████ ████ (4 consultores)
`

**Carga de recursos por día (nivelada):**
| Día | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 |
|-----|---|---|---|---|---|---|---|---|---|---|----|----|----|----|
| Req  | 2 | 4 | 4 | 4 | 3 | 3 | 3 | 2 | 2 | 3 | 3 | 4 | 4 | 4 |
| Disp | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |
| OK?  | SI| SI| SI| SI| SI| SI| SI| SI| SI| SI| SI| SI| SI| SI |

**Resultados:**
- Duración inicial: 13 días (con conflicto de recursos)
- Duración nivelada: 14 días (1 día adicional)
- Se eliminó el conflicto retrasando la tarea B 1 día (usando su holgura)
- Carga máxima reducida de 5 a 4 consultores
`

**Salida esperada:**
Un plan de nivelación con diagramas de carga antes y después, identificación del conflicto y solución aplicada.

<aside type="tip">

La nivelación de recursos resuelve conflictos cuando la demanda supera la disponibilidad. Puede aumentar la duración del proyecto. Se prioriza retrasar tareas con holgura antes que las del camino crítico.

</aside>

## 🧠 Tu turno como Knowledge Manager

### Escenario: La reunión de seguimiento donde nadie ha actualizado nada

Son las 9:30. Empieza la reunión semanal de seguimiento del proyecto Knowledge Manager. Abres el cronograma en la pantalla y ves que los estados no se han actualizado desde la semana pasada. Preguntas "¿cómo vamos?" y obtienes respuestas vagas: "ahí, ahí", "estoy en ello", "esta semana lo termino".

**Tu misión:** ¿Cómo reconduces la reunión para obtener información útil? ¿Qué dos cambios harías en el proceso de seguimiento para que no vuelva a pasar?

> **Pistas para la reflexión:**
> - Las preguntas cerradas ("¿al 100%?") dan respuestas concretas; las abiertas ("¿cómo va?") dan vaguedades
> - ¿Quién actualiza el cronograma? ¿Cada miembro del equipo o una sola persona?
> - Una reunión sin datos es una conversación de café. Una reunión con datos es gestión.
