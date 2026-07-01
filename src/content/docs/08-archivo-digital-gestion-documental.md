---
title: "🗂️ Unidad 8: Archivo digital: cómo organizar los documentos de la empresa"
---

🎯 **Objetivos de aprendizaje**

<div class="objetivos-box">
- Comprender el concepto de gestión documental y su importancia estratégica en la empresa.
- Identificar los elementos que componen un sistema de gestión documental (SGD).
- Conocer las técnicas de digitalización: escaneo, OCR y captura de documentos.
- Diferenciar entre metadatos y taxonomías documentales y saber aplicarlos.
- Reconocer los sistemas de clasificación documental: jerárquica, facetada y mixta.
- Evaluar las opciones de almacenamiento: local, red y nube.
- Diseñar un plan básico de copias de seguridad y recuperación.
</div>
## Concepto de gestión documental y su importancia

Imagina que tu empresa recibe cada día 50 documentos: facturas, contratos, informes, correos, actas de reuniones… Ahora imagina que no hay ningún sistema para organizarlos. ¿Dónde está la factura de la imprenta de enero? "Uy, creo que la guardé en el escritorio... o en el grupo de WhatsApp... o en un correo que ya no encuentro."

La **gestión documental** es el conjunto de prácticas, procesos y herramientas que permiten controlar el ciclo de vida de los documentos en una organización: desde que se crean o reciben hasta que se archivan o destruyen.

<aside>

No confundas gestión documental con tener carpetas bien ordenadas en el ordenador. La gestión documental implica políticas, roles, metadatos, control de versiones, permisos de acceso y, sobre todo, un sistema que garantice que el documento correcto está disponible para la persona correcta en el momento correcto.

</aside>

¿Por qué es importante? Por varias razones:

- **Eficiencia:** localizar un documento en segundos, no en horas. Un empleado puede perder hasta 30 minutos al día buscando documentos. Multiplícalo por la plantilla y verás el coste.
- **Cumplimiento legal:** muchas normas exigen conservar documentos durante plazos específicos. No hacerlo puede acarrear sanciones.
- **Reducción de costes:** menos papel, menos espacio de almacenamiento físico, menos tiempo perdido.
- **Toma de decisiones:** con información accesible y fiable, se decide mejor y más rápido.
- **Continuidad del negocio:** si un empleado se va, el conocimiento no se va con él. Los documentos quedan en la empresa.

<aside type="tip">

Como Knowledge Manager, tu objetivo no es solo guardar documentos, sino hacer que la información sea **encontrable**. Un documento que no se puede encontrar es, a efectos prácticos, un documento que no existe.

</aside>

### Beneficios concretos de una buena gestión documental

| Área | Sin gestión documental | Con gestión documental |
|---|---|---|
| Búsqueda de documentos | 15-30 minutos por documento | Segundos |
| Control de versiones | "Informe_v3_FINAL_v2_revisado.docx" | Versionado automático |
| Seguridad | Cualquiera puede acceder a todo | Permisos granulares por rol |
| Cumplimiento legal | Depende de la memoria de cada uno | Políticas automatizadas |
| Espacio físico | Archivos llenos de papel | Digitalización y liberación de espacio |

## Elementos de un SGD: bases de datos documentales, hardware, software, roles

Un Sistema de Gestión Documental (SGD) no es solo un programa. Es un ecosistema que combina tecnología, personas y procesos.

### Bases de datos documentales

Es el núcleo del SGD. Almacena los metadatos de los documentos y permite buscarlos y recuperarlos. Puede ser relacional (SQL) o no relacional (NoSQL). También existen bases de datos documentales puras como MongoDB, aunque en entornos corporativos es más común que el SGD gestione su propio índice de búsqueda.

El índice de búsqueda es lo que permite encontrar documentos por palabras clave, metadatos o contenido completo (full-text search). Sin un buen índice, el SGD es solo una carpeta con esteroides.

### Hardware

El soporte físico donde se almacenan los documentos digitales: servidores locales (on-premise), unidades de red (NAS), discos externos o, cada vez más, infraestructura en la nube.

La elección del hardware depende de:
- Volumen de documentos.
- Requisitos de seguridad.
- Presupuesto.
- Necesidad de acceso remoto.

### Software

El programa que da la cara ante el usuario. Ejemplos:

- **Documentum (OpenText):** solución empresarial potente y cara. Usada por grandes corporaciones.
- **Alfresco:** código abierto, muy usado en administración pública. Flexible pero requiere conocimientos técnicos.
- **SharePoint:** el más extendido en entornos Microsoft. Se integra con Office, Teams y Outlook.
- **DocuWare:** especializado en digitalización de facturas y procesos administrativos.
- **LogicalDOC:** enfocado en pymes, con versión gratuita limitada.
- **OnlyOffice:** suite ofimática con gestión documental integrada.

### Roles

Un SGD necesita que alguien lo gestione. Los roles típicos son:

| Rol | Responsabilidad | Lo hace... |
|---|---|---|
| Administrador del SGD | Configura el sistema, gestiona permisos, realiza copias de seguridad | Una vez al mes o cuando hay cambios |
| Gestor documental | Define taxonomías, metadatos y políticas de archivo | De forma continua |
| Usuario final | Crea, modifica y consulta documentos | A diario |
| Auditor | Verifica que se cumplen las políticas y la normativa | Trimestral o anualmente |

<aside type="caution">

El error más común es instalar un SGD y pensar que el trabajo está hecho. El software es la parte fácil. Lo difícil es definir los procesos, formar a los usuarios y mantener la disciplina documental en el día a día.

</aside>

## Digitalización: escaneo, OCR, captura de documentos

La digitalización es el proceso de convertir documentos físicos (papel) en archivos digitales. Parece sencillo, pero hay todo un arte detrás.

### Escaneo

No es lo mismo escanear un documento para leerlo en pantalla que escanearlo para archivarlo a largo plazo. Parámetros clave:

- **Resolución:** 300 ppp (puntos por pulgada) es el estándar para documentos de texto. Para imágenes o planos, mejor 600 ppp. Para documentos de archivo histórico, incluso 600 ppp en color.
- **Color vs. blanco y negro:** un contrato en blanco y negro ocupa menos espacio (y se lee igual). Un folleto comercial a color conserva la imagen de marca. Un documento con sellos o firmas de color debe escanearse en color.
- **Formato de salida:** PDF es el rey indiscutible. PDF/A es la variante para archivo a largo plazo (ISO 19005), que garantiza que el documento se visualizará igual dentro de 50 años.
- **Dúplex:** si el documento tiene anverso y reverso, escanéalo por ambas caras automáticamente.

### OCR (Reconocimiento Óptico de Caracteres)

El OCR es la magia que convierte una imagen escaneada en texto seleccionable y buscable. Sin OCR, un PDF escaneado es como una foto: puedes verla, pero no buscar palabras dentro.

<aside type="tip">

Siempre que digitalices un documento, aplícale OCR. Es como ponerle etiqueta a una caja: después te ahorrará horas de búsqueda. Herramientas como Adobe Acrobat, Tesseract (gratuito, código abierto) o el OCR integrado de SharePoint lo hacen posible.

</aside>

El OCR tiene limitaciones:
- Funciona mejor con textos impresos que con escritura manual.
- La precisión depende de la calidad del escaneo y del idioma.
- Los caracteres especiales (tildes, eñes, símbolos) pueden fallar si no está configurado el idioma correcto.
- Para escritura manual existen herramientas de HTR (Handwritten Text Recognition), pero son menos precisas y más caras.

### Captura de documentos

La captura va más allá del escaneo. Incluye la importación automática de documentos desde distintas fuentes:

- Correos electrónicos adjuntos.
- Formularios web.
- Aplicaciones de facturación electrónica.
- Escáneres de red con envío directo al SGD.
- Aplicaciones móviles con cámara (escaneo desde el móvil).

Un buen sistema de captura clasifica automáticamente los documentos según reglas predefinidas. Por ejemplo: "Si el asunto del correo contiene 'factura', guarda el adjunto en la biblioteca de Facturas y asígnale el metadato 'Pendiente de pago'."

## Metadatos y taxonomías documentales

Aquí entramos en el terreno donde el Knowledge Manager marca la diferencia. No es exagerado decir que una buena clasificación vale más que cualquier software.

### Metadatos

Los metadatos son "datos sobre los datos". Son campos que describen el documento para facilitar su clasificación y búsqueda. Ejemplos típicos:

| Metadato | Pregunta que responde | Ejemplo |
|---|---|---|
| Autor | ¿Quién creó el documento? | María García |
| Fecha de creación | ¿Cuándo se creó? | 15/03/2026 |
| Tipo de documento | ¿Qué tipo es? | Factura, Contrato, Informe |
| Estado | ¿En qué fase está? | Borrador, Pendiente, Aprobado |
| Departamento | ¿A qué área pertenece? | Ventas, RRHH, Producción |
| Palabras clave | ¿Qué términos describen el contenido? | Presupuesto 2026, proyecto Alpha |
| Cliente | ¿A qué cliente se refiere? | Cliente XYZ, S.L. |
| Versión | ¿Qué versión es? | 1.0, 2.1, 3.0 |

<aside>

Cuantos más metadatos, más fácil será encontrar documentos... pero también más trabajo dará rellenarlos. El arte está en encontrar el equilibrio. Un buen truco: haz obligatorios solo los metadatos imprescindibles y el resto que sean opcionales. Con 5 metadatos bien elegidos puedes filtrar lo que necesites.

</aside>

### Taxonomías documentales

Una taxonomía es una clasificación jerárquica de categorías. Es como el árbol de carpetas de tu ordenador, pero con un diseño pensado y consensuado por toda la organización, no el resultado de "voy a crear una carpeta aquí porque me apetece".

Por ejemplo, una taxonomía para una empresa de consultoría podría ser:

```
Proyectos
├── Clientes
│   ├── Cliente A
│   │   ├── Propuestas
│   │   ├── Informes
│   │   ├── Facturación
│   │   └── Correspondencia
│   └── Cliente B
│       ├── Propuestas
│       └── Informes
├── Internos
│   ├── Formación
│   ├── Recursos Humanos
│   └── Finanzas
├── Plantillas
│   ├── Propuestas
│   ├── Informes
│   └── Contratos
└── Archivados
    └── Proyectos cerrados 2024
```

<aside type="caution">

No dejes que cada usuario cree sus propias carpetas. La taxonomía debe ser única, acordada por todos y mantenida por el gestor documental. Si cada uno organiza sus documentos como quiere, el sistema colapsa y la búsqueda se vuelve imposible.

</aside>

## Sistemas de clasificación: jerárquica, facetada, mixta

No todas las taxonomías son iguales. Existen distintos enfoques para clasificar documentos, y cada uno tiene sus ventajas e inconvenientes.

### Clasificación jerárquica

Es la clásica estructura de árbol: categorías y subcategorías. Es intuitiva y fácil de entender porque funciona como las carpetas del ordenador. El problema es que obliga a elegir una única ruta para cada documento, y no todos los documentos encajan limpiamente en una sola categoría.

> Ejemplo: ¿Dónde guardo un informe comercial de un proyecto de consultoría para el sector sanitario? ¿En "Comercial", en "Proyectos" o en "Sector Sanitario"? Con la jerarquía tienes que elegir una.

**Ventajas:** simple, familiar para los usuarios, fácil de implementar.
**Desventajas:** rígida, un documento solo puede estar en un sitio, decisiones difíciles cuando un documento es multidisciplinar.

### Clasificación facetada

Aquí se asignan etiquetas o facetas al documento, sin estructura jerárquica. Luego se puede filtrar combinando facetas. Es el sistema que usan las tiendas online: puedes filtrar por talla, color, precio y marca a la vez.

Aplicado a documentos: puedes filtrar por departamento + tipo de documento + año + cliente.

**Ventajas:** un documento puede tener múltiples facetas y aparece en varios filtros. Muy flexible.
**Desventajas:** puede resultar abrumador si hay demasiadas facetas. Requiere más disciplina al etiquetar. Los usuarios pueden sentirse perdidos sin una estructura visual clara.

### Clasificación mixta

Combina jerarquía y facetas. Es el enfoque más realista: tienes una estructura jerárquica base (carpetas), pero los documentos también llevan etiquetas (metadatos) que permiten búsquedas transversales.

<aside type="tip">

En entornos reales, la clasificación mixta suele ser la mejor opción. La jerarquía da orden y las facetas dan flexibilidad. Como Knowledge Manager, tu trabajo es diseñar esa combinación. Por ejemplo: una estructura de carpetas por departamentos, y dentro de cada carpeta los documentos se etiquetan con metadatos que permiten filtrar por tipo, fecha, cliente, etc.

</aside>

### ¿Cómo elegir el sistema adecuado?

No hay una respuesta universal. Depende del volumen documental, la diversidad de tipos de documento y la cultura de la empresa. Como orientación:

- **Menos de 500 documentos al año:** jerárquica simple.
- **Entre 500 y 5.000 documentos al año:** mixta con jerarquía por departamentos y metadatos básicos.
- **Más de 5.000 documentos al año:** mixta con taxonomía bien definida y metadatos obligatorios.

## Almacenamiento: local, red, nube

Los documentos digitales necesitan vivir en algún sitio. Las opciones principales son:

### Almacenamiento local

El documento está en el disco duro del ordenador o en un dispositivo externo (USB, disco externo). Es rápido y barato, pero peligroso: si se estropea el ordenador, se pierde todo. Además, no se puede compartir fácilmente.

**Cuándo usarlo:** Solo para trabajo temporal o documentos personales sin valor corporativo. Nunca para documentos críticos de la empresa.

### Almacenamiento en red (NAS / servidor de archivos)

Los documentos están en un servidor interno de la empresa, accesible desde cualquier ordenador de la oficina a través de la red local. Es más seguro que el almacenamiento local y permite compartir archivos.

**Ventajas:** control total sobre los datos, sin dependencia de internet, alta velocidad en red local.
**Desventajas:** requiere mantenimiento, inversión inicial en hardware, acceso limitado a la oficina (a menos que configures VPN).

**Cuándo usarlo:** Empresas que quieren control total sobre sus datos y tienen presupuesto para mantener servidores.

### Almacenamiento en la nube

Los documentos se guardan en servidores externos gestionados por proveedores como Google, Microsoft o Dropbox. El acceso es desde cualquier lugar con internet.

| Proveedor | Capacidad base | Precio aprox. | Integraciones |
|---|---|---|---|
| Google Drive | 15 GB gratis | Desde 2 €/mes 100 GB | Google Workspace |
| OneDrive | 5 GB gratis | Desde 2 €/mes 100 GB | Microsoft 365 |
| Dropbox | 2 GB gratis | Desde 10 €/mes 2 TB | Muchas apps |
| iCloud | 5 GB gratis | Desde 1 €/mes 50 GB | Apple |

**Ventajas:** accesible desde cualquier sitio, no requiere mantenimiento de hardware, escalable, copias de seguridad incluidas.
**Inconvenientes:** dependencia de internet, posibles problemas de privacidad según dónde estén los servidores, coste recurrente.

<aside>

Cada vez más empresas optan por el modelo híbrido: documentos activos en la nube (acceso rápido y compartido) y documentos archivados en local o en almacenamiento en frío (más barato pero menos accesible). Lo importante es que la decisión sea consciente, no fruto de la improvisación.

</aside>

## Copias de seguridad y plan de recuperación

Un sistema de gestión documental sin copias de seguridad no es un sistema: es una ruleta rusa. Tarde o temprano, algo fallará: un error humano, un ciberataque, un incendio, una actualización que sale mal, un disco duro que se muere.

### Regla 3-2-1

Es la regla de oro de las copias de seguridad:

- **3 copias** de los datos (la original + 2 copias).
- **2 soportes diferentes** (ej: nube + disco local, o disco externo + cinta).
- **1 copia fuera de la ubicación principal** (off-site, en otra oficina o en la nube).

### Tipos de copia

| Tipo | Qué hace | Velocidad | Espacio | Frecuencia recomendada |
|---|---|---|---|---|
| Completa | Copia todo | Lenta | Máximo | Semanal |
| Incremental | Solo lo nuevo desde la última copia | Rápida | Mínimo | Diaria |
| Diferencial | Solo lo nuevo desde la última completa | Media | Medio | Cada 2-3 días |

<aside type="tip">

Usa copias completas semanales + incrementales diarias. Y pruébalas. Una copia de seguridad que no se ha probado nunca no es una copia de seguridad: es una esperanza.

</aside>

### Plan de recuperación

No basta con hacer copias. Hay que tener un plan para cuando toque restaurar:

1. ¿Quién autoriza la restauración? (no puede decidirlo cualquiera).
2. ¿Qué se restaura primero? (prioridades: facturación, contratos, correo...).
3. ¿Cuánto tiempo se tarda en recuperar el sistema completo? (RPO y RTO).
4. ¿Dónde se prueba la restauración antes de volcar los datos en producción?
5. ¿Qué se hace si la copia de seguridad está corrupta?

**RPO (Recovery Point Objective):** cuántos datos puedes permitirte perder como máximo (ej: 24 horas).
**RTO (Recovery Time Objective):** cuánto tiempo puedes estar sin el sistema (ej: 4 horas).

<aside type="caution">

El mayor error es descubrir que la copia de seguridad no funciona cuando ya has perdido los datos. Programa restauraciones de prueba al menos una vez al trimestre. Y documenta el resultado.

</aside>

## Normativas y estándares de gestión documental

La gestión documental no es un territorio sin ley. Existen normas y estándares que conviene conocer (y aplicar):

- **ISO 15489:** norma internacional para la gestión documental. Define los principios y requisitos.
- **ISO 30301:** sistema de gestión para documentos. Complementa a la 15489.
- **ISO 19005 (PDF/A):** formato de archivo a largo plazo para documentos electrónicos.
- **Ley 39/2015:** procedimiento administrativo común (para administraciones y empresas que trabajan con ellas).
- **Código de Comercio:** obligación de conservar documentos mercantiles durante 6 años.
- **RGPD:** protección de datos personales en los documentos.

### Errores comunes en gestión documental (y cómo evitarlos)

La experiencia demuestra que hay errores que se repiten en casi todas las empresas al implantar un SGD. Conocerlos te ayudará a evitarlos:

**Error 1: Poner el carro delante del caballo (primero la herramienta, luego la estrategia)**
Se compra un SGD potente y caro sin haber definido antes la taxonomía, los metadatos ni los procesos.
✅ **Solución:** primero diseña, luego compra. La herramienta debe adaptarse a tu estrategia, no al revés.

**Error 2: La taxonomía del "yo creo una carpeta aquí"**
Cada usuario crea carpetas donde quiere, con el nombre que le parece. Al cabo de seis meses, el sistema es un laberinto.
✅ **Solución:** define una taxonomía única y obligatoria. No des permisos de creación de carpetas a todos los usuarios.

**Error 3: Metadatos obligatorios hasta el infinito**
Se definen 25 metadatos obligatorios para cada documento. Los usuarios se rebelan y dejan de usar el sistema.
✅ **Solución:** sé realista. 5-6 metadatos obligatorios como máximo. El resto, opcionales. La perfección es enemiga de lo práctico.

**Error 4: El SGD como cementerio de documentos**
Se suben documentos pero nadie los consulta. El sistema se convierte en un "archivo muerto".
✅ **Solución:** promueve activamente el uso: forma a los usuarios, comparte casos de éxito, mide y publica estadísticas de consulta.

**Error 5: Sin copias de seguridad (o con copias que no se prueban)**
Se configuran copias de seguridad pero nunca se comprueba si funcionan. Hasta que un día hacen falta y... sorpresa.
✅ **Solución:** programa restauraciones de prueba trimestrales. Y documenta los resultados.

**Error 6: Formación insuficiente**
Se entrega un manual de 50 páginas y se da por formado al personal.
✅ **Solución:** formación práctica, en grupo, con casos reales de su día a día. Sesiones de 30-45 minutos, no de 3 horas.

**Error 7: No hay responsable claro**
Todo el mundo puede subir, modificar y borrar documentos. Nadie es responsable de la integridad del sistema.
✅ **Solución:** asigna roles claros: administrador, gestor documental, usuarios. Y comunícalos.

<aside type="caution">

El error más grave de todos es pensar que la gestión documental es un proyecto con fecha de inicio y fin. No lo es: es un proceso continuo que requiere mantenimiento, revisión y mejora constantes. Si no le dedicas tiempo de forma regular, el sistema degenera.

</aside>

### El futuro de la gestión documental: inteligencia artificial y automatización

La gestión documental está viviendo una transformación gracias a la inteligencia artificial. Como Knowledge Manager, estas son las tendencias que te conviene conocer:

**Clasificación automática de documentos:** la IA puede analizar el contenido de un documento y sugerir (o asignar automáticamente) los metadatos y la categoría adecuada. Esto reduce drásticamente el trabajo manual de clasificación y los errores humanos.

**Extracción inteligente de datos:** sistemas como el reconocimiento inteligente de documentos (IDR) pueden extraer automáticamente campos clave de facturas, contratos o formularios: número, fecha, importe, proveedor, etc. Sin necesidad de introducirlos a mano.

**Búsqueda semántica:** en lugar de buscar por palabras clave exactas, los sistemas empiezan a entender la intención de la búsqueda. "Dame las facturas del proveedor de material de oficina del año pasado" no requiere que escribas exactamente "facturas material oficina 2025".

**Automatización de procesos robóticos (RPA):** los robots de software pueden realizar tareas repetitivas como mover documentos entre carpetas, renombrar archivos según reglas, o enviar notificaciones cuando un documento cumple ciertas condiciones.

**Asistentes virtuales:** integrados en el SGD, permiten a los usuarios preguntar en lenguaje natural: "¿Dónde está el contrato de Pérez firmado en 2024?" y obtener la respuesta sin navegar por carpetas.

<aside>

La IA en gestión documental no va a sustituir al Knowledge Manager. Al contrario: va a liberarte de tareas repetitivas para que puedas dedicarte a lo que realmente aporta valor: diseñar estrategias, formar usuarios y mejorar los procesos.

</aside>

### Cómo implantar un SGD en una empresa paso a paso

Si te enfrentas a la implantación de un sistema de gestión documental desde cero, este plan de acción te será útil:

1. **Análisis de necesidades:** ¿qué documentos se manejan? ¿qué volumen? ¿quién los usa? ¿qué problemas hay ahora?
2. **Definición de requisitos:** ¿qué debe hacer el SGD? ¿qué integraciones necesita?
3. **Selección del software:** evalúa opciones (SharePoint, Alfresco, DocuWare, LogicalDOC...) según presupuesto y necesidades.
4. **Diseño de la taxonomía:** define la estructura de carpetas y los metadatos. Este paso es crítico y debe hacerse con cuidado.
5. **Configuración del sistema:** instala, parametriza y configura permisos y flujos básicos.
6. **Migración de datos:** traslada los documentos existentes al nuevo sistema. Aprovecha para limpiar y actualizar.
7. **Formación:** forma a los usuarios en el uso del SGD y en las nuevas políticas documentales.
8. **Lanzamiento:** pon el sistema en producción con un equipo piloto primero, luego al resto.
9. **Seguimiento:** las primeras semanas, resuelve dudas y ajusta lo que no funcione.
10. **Mejora continua:** revisa periódicamente la taxonomía, los metadatos y los flujos. La gestión documental no es estática.

<aside type="caution">

El paso 4 (diseño de la taxonomía) es el que más tiempo requiere y el que más se suele subestimar. Una taxonomía mal diseñada es una condena al fracaso del SGD. Dedica al menos una semana a hacerla bien, con participación de los futuros usuarios.

</aside>

## ⭐ Ponte en la piel del Knowledge Manager

**Caso 1: El desastre de las carpetas compartidas**

Llegas a una empresa donde la gestión documental es... inexistente. Cada empleado guarda los documentos en su ordenador. Cuando alguien necesita algo de un compañero, se lo pide por email y el otro se lo adjunta. Hay cinco versiones distintas del mismo informe circulando por correo y nadie sabe cuál es la definitiva. En los últimos tres meses, se han perdido documentos importantes porque un empleado formateó su ordenador sin hacer copia.

**Preguntas para reflexionar:**
- ¿Cuál sería tu primera acción para poner orden? ¿Con quién hablarías primero?
- ¿Cómo convencerías a tus compañeros de que cambien su forma de trabajar sin que se sientan fiscalizados?
- ¿Qué sistema de clasificación propondrías para empezar? ¿Por qué ese y no otro?
- ¿Qué métricas usarías para demostrar a la dirección que el cambio está funcionando?

**Orientación para la reflexión:** La primera acción debe ser ganar el apoyo de la dirección. Sin respaldo directivo, cualquier cambio en los hábitos documentales está condenado al fracaso. Luego, nombra un responsable por departamento que lidere el cambio. Empieza con un sistema de clasificación mixta: estructura jerárquica simple (por departamentos o proyectos) y un conjunto reducido de metadatos obligatorios (autor, fecha, tipo de documento). No intentes abarcar demasiado al principio. Para medir el éxito: cuenta el número de documentos almacenados en el SGD frente a los que circulan por correo, el tiempo medio de búsqueda (con cronómetro), y el número de versiones conflictivas detectadas.

**Caso 2: Digitalización de un archivo histórico**

La empresa tiene un archivo físico con más de 20.000 documentos en papel acumulados durante 15 años: contratos, facturas, actas, informes, correspondencia. Te piden que digitalices todo el archivo y lo integres en un SGD.

**Preguntas para reflexionar:**
- ¿Priorizarías todos los documentos por igual o establecerías criterios de prioridad? ¿Cuáles?
- ¿Qué metadatos mínimos asignarías a cada tipo de documento? ¿Son distintos según el tipo?
- ¿Cómo organizarías el proyecto para no colapsar el día a día de la empresa? ¿Externalizarías parte del trabajo?
- ¿Qué formato de archivo y resolución de escaneo elegirías para cada tipo de documento?

**Orientación para la reflexión:** No digitalices todo de golpe. Prioriza por criterios: (1) documentos de mayor valor legal o económico (contratos, facturas, escrituras), (2) documentos más consultados, (3) documentos en peor estado de conservación. Metadatos mínimos: para facturas (número, fecha, proveedor, importe, estado), para contratos (cliente, fecha, tipo, duración, estado), para actas (fecha, reunión, asistentes, acuerdos). El proyecto debe hacerse por fases,externaliza el escaneo masivo a una empresa especializada si el volumen es alto, y reserva el trabajo interno para la clasificación y control de calidad. Formato PDF/A para todos, resolución 300 ppp (texto) o 600 ppp (documentos con sellos, firmas o imágenes).

**Caso 3: El ransomware que lo borró todo**

Un lunes por la mañana, el servidor de la empresa ha sido infectado por un ransomware. Todos los archivos están cifrados y los atacantes piden un rescate en criptomonedas. Las últimas copias de seguridad completas son de hace tres meses. Los empleados no pueden trabajar porque todos los documentos del día a día están en el servidor.

**Preguntas para reflexionar:**
- ¿Qué harías inmediatamente después del ataque? Enumera los pasos en orden.
- ¿Qué fallos en la política de copias de seguridad identificas? ¿Cómo los solucionarías?
- ¿Cómo evitarías que vuelva a ocurrir? ¿Qué medidas técnicas y organizativas propondrías?
- ¿Cómo gestionarías la comunicación con los empleados y con los clientes afectados?

**Orientación para la reflexión:** El orden de actuación debe ser: (1) aislar el servidor infectado de la red para evitar que el ransomware se propague, (2) notificar a la dirección y al responsable de seguridad, (3) contactar con un especialista en ciberseguridad, (4) evaluar el alcance del daño, (5) restaurar desde la copia de seguridad más reciente no infectada. Los fallos principales: copias de seguridad demasiado antiguas (3 meses), probablemente almacenadas en el mismo servidor o red. Solución: aplicar la regla 3-2-1, almacenar una copia off-site (nube o ubicación física distinta). Para prevenir: formación en ciberseguridad a los empleados (el ransomware suele entrar por correos phishing), segmentación de red, antivirus actualizado, políticas de acceso mínimo. La comunicación debe ser honesta pero tranquilizadora: informar del incidente sin alarmar, explicar las medidas tomadas y el plazo estimado de recuperación.

### Indicadores clave para medir la gestión documental

¿Cómo sabes si tu sistema de gestión documental funciona? No puedes gestionar lo que no mides. Estos son los indicadores (KPI) que te ayudarán a evaluar el rendimiento de tu SGD:

**De uso:**
- Documentos almacenados vs. documentos creados (tasa de captura).
- Documentos consultados al día/semana/mes.
- Usuarios activos en el SGD vs. usuarios totales.
- Búsquedas realizadas y tasa de éxito (¿encuentran lo que buscan?).

**De calidad:**
- Porcentaje de documentos con metadatos completos.
- Porcentaje de documentos obsoletos o sin actualizar.
- Tiempo medio desde la creación hasta el archivo definitivo.
- Número de versiones por documento (un número muy alto puede indicar falta de control).

**De impacto:**
- Tiempo medio de búsqueda de un documento (antes vs. después del SGD).
- Reducción de documentos perdidos o duplicados.
- Ahorro en papel y almacenamiento físico.
- Satisfacción de los usuarios con el SGD (encuesta trimestral).

<aside>

No hace falta medir todos los indicadores desde el primer día. Empieza con 3-4 indicadores clave y ve añadiendo según madure el sistema. Lo importante es que los datos te sirvan para tomar decisiones, no solo para tener un cuadro de mando bonito.

</aside>

### Cómo auditar tu sistema de gestión documental

Una auditoría documental es una revisión sistemática del SGD para verificar que cumple con los objetivos, las políticas y la normativa. Como Knowledge Manager, deberías realizar auditorías periódicas (anuales o semestrales).

**Pasos para una auditoría documental:**

1. **Planificación:** define el alcance (qué departamentos, qué tipos de documento, qué periodo).
2. **Revisión de la documentación:** políticas, procedimientos, registros, taxonomía.
3. **Muestreo:** selecciona una muestra representativa de documentos y verifica: ¿tienen metadatos correctos? ¿están en la ubicación correcta? ¿los permisos son adecuados?
4. **Entrevistas:** habla con usuarios de distintos perfiles para identificar problemas no documentados.
5. **Análisis de accesos:** revisa los registros de acceso para detectar anomalías (accesos no autorizados, patrones sospechosos).
6. **Verificación de copias de seguridad:** comprueba que las copias se realizan según lo programado y que las restauraciones funcionan.
7. **Informe de resultados:** documenta los hallazgos, las no conformidades y las recomendaciones de mejora.
8. **Plan de acción:** define acciones correctivas con responsables y plazos.

<aside type="caution">

Una auditoría no es para "pillar" a nadie. Es para mejorar el sistema. Comunícalo así a los empleados: "Vamos a revisar cómo funciona la gestión documental para identificar áreas de mejora y facilitaros el trabajo." La transparencia genera colaboración; la sospecha genera resistencia.

</aside>

## ❓ Dudas frecuentes

**P: ¿Es obligatorio tener un SGD o vale con carpetas en la nube?**
R: Para una empresa pequeña (menos de 10 empleados), las carpetas en la nube pueden ser suficientes. A partir de 10-15 empleados o cuando empiezan a generarse volúmenes importantes de documentos, un SGD se vuelve necesario. No es solo guardar: es buscar, controlar versiones, gestionar permisos, cumplir con la ley y mantener la integridad de los documentos.

**P: ¿Qué metadatos son obligatorios y cuáles opcionales?**
R: Depende del tipo de documento y del sector. Como mínimo: autor, fecha, tipo de documento y estado. Opcionales: departamento, cliente, proyecto, palabras clave. La norma ISO 15489 sobre gestión documental puede servirte de guía. Para documentos con implicaciones legales (contratos, facturas), añade metadatos de validez y caducidad.

**P: ¿El OCR funciona con cualquier idioma y con escritura manual?**
R: El OCR funciona bien con textos impresos en idiomas latinos (español, inglés, francés, etc.) y con buena calidad de escaneo. Con escritura manual, la precisión baja mucho. Para idiomas con alfabetos no latinos (árabe, chino, ruso), hay soluciones específicas pero menos precisas. Si necesitas reconocer escritura manual, busca herramientas de HTR (Handwritten Text Recognition), que son más especializadas pero menos fiables que el OCR estándar.

**P: ¿Qué hago con los documentos que ya no necesito?**
R: Los documentos tienen un ciclo de vida. No los tires sin más. Define una política de conservación: algunos documentos deben guardarse X años por ley (facturas: 4-6 años, contratos: 5 años desde su extinción, historiales laborales: 4 años, documentos contables: 6 años). Pasado ese plazo, puedes destruirlos de forma segura. La destrucción debe dejar constancia (certificado de destrucción) y, en el caso de documentos con datos personales, debe ser irreversible.

**P: ¿Nube pública o nube privada para los documentos?**
R: La nube pública (Google Drive, OneDrive, Dropbox) es más barata y accesible. La nube privada o el almacenamiento local dan más control. La decisión depende del nivel de confidencialidad de los documentos y de los requisitos legales del sector. Muchas empresas optan por un modelo híbrido: documentos confidenciales en local, documentos de trabajo en la nube.

**P: ¿Cada cuánto debo hacer copias de seguridad?**
R: Depende de la frecuencia con la que se generen o modifiquen documentos. En una empresa activa, lo recomendable es: copia incremental a diario, copia completa semanal. Y recuerda probar las restauraciones al menos una vez al trimestre. Si trabajas con documentos muy críticos (facturación diaria, contratos), considera copias cada pocas horas.

<div class="faq-item">
</div>
<div class="faq-item">
### Checklist del Knowledge Manager para la gestión documental

**Implantación del SGD:**
- [ ] Necesidades analizadas (volumen, tipos de documento, usuarios).
- [ ] Taxonomía diseñada con participación de los usuarios.
- [ ] Metadatos obligatorios definidos (máximo 5-6 campos).
- [ ] Roles asignados (administrador, gestor documental, usuarios).
- [ ] Formación impartida a todos los usuarios.
- [ ] Copias de seguridad configuradas (regla 3-2-1).

**Operativa diaria:**
- [ ] Los documentos se suben con metadatos completos.
- [ ] Se respeta la taxonomía definida (sin carpetas "personalizadas").
- [ ] Las versiones se gestionan mediante el sistema, no con nombres de archivo.
- [ ] Los documentos obsoletos se archivan o eliminan.

**Revisión periódica (trimestral):**
- [ ] Copias de seguridad probadas con restauración real.
- [ ] Permisos de acceso auditados.
- [ ] Metadatos revisados y ajustados si es necesario.
- [ ] Encuesta de satisfacción a usuarios del SGD.
- [ ] Documentos sin metadatos identificados y corregidos.

<aside type="tip">

No esperes a tenerlo todo perfecto para empezar. Un SGD que funciona al 80% pero se usa es mejor que un SGD perfecto que nadie toca. Mejora de forma iterativa.

</aside>

<div class="resumen-card">
## 📌 Resumen (lo que importa de verdad)

- La gestión documental controla el ciclo de vida completo de los documentos, desde su creación hasta su destrucción. No es "tener carpetas ordenadas", es una disciplina con políticas, roles y herramientas.
- Un SGD combina base de datos, hardware, software y roles definidos. El software es la parte más fácil; lo difícil son los procesos y la cultura.
- Digitalizar no es solo escanear: hay que aplicar OCR, elegir formato y resolución adecuados, y definir metadatos. Un PDF sin OCR no es un documento digital, es una foto.
- Los metadatos y las taxonomías son la clave para que los documentos sean encontrables. Encuentra el equilibrio entre riqueza de metadatos y facilidad de uso.
- La clasificación mixta (jerarquía + facetas) es el enfoque más equilibrado y práctico para la mayoría de las empresas.
- El almacenamiento debe elegirse según las necesidades de acceso, seguridad, presupuesto y requisitos legales. El modelo híbrido (nube + local) gana terreno.
- Las copias de seguridad no son opcionales: aplica la regla 3-2-1, define RPO y RTO, y prueba las restauraciones periódicamente.

**P: ¿Puedo usar el mismo SGD para documentos internos y para compartir documentos con clientes?**
R: Sí, pero con cuidado. Muchos SGD permiten crear espacios externos (extranet) con permisos limitados. En SharePoint, por ejemplo, puedes invitar a usuarios externos a sitios concretos sin que tengan acceso al resto de la intranet. Lo importante es auditar periódicamente quién tiene acceso externo y revocarlo cuando ya no sea necesario.

**P: ¿Qué hago si un documento tiene información personal de varias personas y solo una de ellas solicita la eliminación?**
R: En este caso, no puedes eliminar todo el documento porque afectaría a los datos de otras personas. Lo correcto es bloquear el acceso a los datos de la persona solicitante (por ejemplo, anonimizando su información) manteniendo el resto del documento intacto. Si no es posible separar los datos, deberás bloquear el documento completo y evaluar si es necesario conservarlo.

## ✍️ Ejercicios propuestos

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
1. Diseña una taxonomía documental para una pequeña empresa de 15 empleados dedicada a la organización de eventos. Debe incluir al menos 5 categorías principales con sus subcategorías y una breve explicación de por qué has elegido esa estructura. ¿Qué problemas resolvería tu taxonomía?
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
2. Define los metadatos mínimos (6-8 campos) para cada uno de los siguientes tipos de documento: factura, contrato laboral, acta de reunión e informe de proyecto. Justifica cada campo y di si debería ser obligatorio u opcional. ¿Cambiarían los metadatos si la empresa fuera una administración pública?
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
3. Simula el proceso de digitalización de un lote de 100 facturas en papel. Describe paso a paso el proceso completo: preparación de los documentos, escaneo (parámetros), aplicación de OCR, control de calidad, asignación de metadatos e ingesta en el SGD. Calcula el tiempo estimado para cada fase y el tiempo total.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
4. Investiga tres proveedores de almacenamiento en la nube (Google Drive, OneDrive, Dropbox, iCloud, etc.) y compara sus prestaciones en una tabla con al menos 6 criterios: precio, capacidad, seguridad (cifrado, 2FA), integraciones con otras herramientas, facilidad de uso y opciones de colaboración. ¿Cuál recomendarías para una pyme de 20 empleados? Justifica tu respuesta.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
5. Elabora un plan de copias de seguridad para una empresa con 10 empleados que genera unos 5 GB de documentos nuevos al mes. Especifica: tipo de copia (completa, incremental, diferencial), frecuencia, soporte (disco externo, nube, cinta), ubicación de las copias (local y off-site), responsable y procedimiento de prueba de restauración. Calcula el espacio de almacenamiento necesario para mantener 3 meses de copias.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
6. Redacta una política de gestión documental básica para una empresa. Debe incluir: objetivo de la política, alcance (a quién aplica), roles y responsabilidades, criterios de clasificación y metadatos obligatorios, política de conservación (plazos por tipo de documento), procedimiento de destrucción segura, frecuencia de copias de seguridad, y consecuencias del incumplimiento. Extensión recomendada: 1-2 páginas.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
7. Realiza una auditoría simulada de un SGD. Elige un sistema real (el de tu centro de estudios, tu lugar de trabajo o uno que conozcas) y evalúa los siguientes aspectos: taxonomía, metadatos, permisos, copias de seguridad, uso por parte de los empleados. Escribe un informe de auditoría con hallazgos y recomendaciones.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
8. Diseña un plan de migración de documentos para una empresa que pasa de almacenar archivos en carpetas de red a usar un SGD. El plan debe incluir: inventario de documentos, criterios de prioridad, limpieza de documentos obsoletos, asignación de metadatos, cronograma, responsables y plan de contingencia.
</div>

---

<span class="ra-badge-footer">🎯 RA trabajados: - **RA5** - Implementa sistemas de archivo digital y gestión documental, aplicando técnicas de digitalización, clasificación, almacenamiento seguro y recuperación de la información.
</span>

---

<div align="center"><a href="https://creativecommons.org/licenses/by-sa/4.0/deed.es" target="_blank"><img src="/ApuntesGestionAvanzadaInformacion/cc-by-sa.png" alt="CC BY-SA 4.0" width="88" height="31"></a><br><strong>Sergi Garcia Barea</strong> — CC BY-SA 4.0</div>

</div>