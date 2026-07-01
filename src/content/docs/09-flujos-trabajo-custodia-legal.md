---
title: "🔐 Unidad 9: Flujos de trabajo, custodia de documentos y normativa legal"
---

🎯 **Objetivos de aprendizaje**

<div class="objetivos-box">
- Comprender qué es un flujo de trabajo documental y cómo se diseña.
- Identificar las herramientas y prácticas para la colaboración en documentos compartidos.
- Conocer el ciclo de vida del documento y las responsabilidades de custodia.
- Diferenciar entre firma electrónica, certificado digital y sello de tiempo.
- Reconocer las obligaciones legales en materia de protección de datos y archivo.
- Valorar el impacto ambiental de la gestión documental y la transición al papel cero.
- Aplicar estándares de autenticación documental ante instancias públicas y privadas.
</div>
## Diseño de flujos de trabajo documentales (workflow)

Un **flujo de trabajo** o workflow es una secuencia de pasos automatizados o semiautomatizados por los que pasa un documento desde que se inicia hasta que se completa. Piensa en él como una receta de cocina: cada paso tiene un responsable, una acción y un criterio para pasar al siguiente.

<aside>

Los flujos de trabajo no son solo cosa de informáticos. Como Knowledge Manager, vas a diseñar flujos que afectan a personas de toda la organización. Tu misión es que sean claros, eficientes y que nadie se quede bloqueado esperando a que otro haga su parte.

</aside>

### Elementos de un workflow documental

- **Inicio (trigger):** ¿qué dispara el flujo? Puede ser la recepción de un correo, la subida de un documento, una fecha programada, la cumplimentación de un formulario...
- **Tareas:** cada paso del proceso (revisar, aprobar, archivar, publicar, rechazar, informar...).
- **Actores:** las personas o roles responsables de cada tarea (pueden ser personas, grupos o sistemas automatizados).
- **Condiciones:** reglas que determinan el camino (si es mayor de X euros, aprueba el jefe; si no, el encargado; si es de tipo Y, va al departamento Z).
- **Notificaciones:** avisos cuando una tarea está pendiente, se ha completado o se ha rechazado.
- **Trazabilidad:** registro de cada acción para poder auditar el proceso después.
- **Fin:** el estado final del documento (archivado, enviado, rechazado, pendiente de revisión...).

### Ejemplo práctico: flujo de aprobación de una factura

1. El departamento de compras sube la factura al SGD (inicio).
2. El sistema asigna la tarea "Validar datos fiscales" al departamento de administración (tarea 1).
3. Si los datos son correctos, pasa a "Aprobar pago" al responsable financiero (tarea 2, condición: datos OK).
4. Si el importe supera los 5.000 €, también necesita la aprobación de la dirección (tarea 3, condición: importe > 5.000 €).
5. Aprobada la factura, se registra el pago y se archiva (fin).
6. Si en cualquier paso se rechaza, la factura vuelve al inicio con una nota del motivo y una notificación al remitente.

<aside type="tip">

Cuando diseñes un workflow, ponte en la piel de la persona que ejecuta cada tarea. Si un paso es confuso o requiere información que no está disponible, el flujo se atascará. Los mejores workflows son los que parecen tan sencillos que nadie nota que existen.

</aside>

### Herramientas para diseñar workflows

- **Microsoft Power Automate:** integrado con Microsoft 365, permite crear flujos sin programar. Ideal si tu empresa usa SharePoint y Teams.
- **SharePoint Designer:** clásico para flujos dentro de SharePoint. Aunque está en desuso, muchos entornos todavía lo usan.
- **Zapier / Make:** para conectar herramientas que no son de Microsoft.
- **BPMN (Business Process Model and Notation):** estándar para dibujar diagramas de procesos. Herramientas como Bizagi Modeler o Draw.io permiten crear diagramas BPMN y luego exportarlos a sistemas.
- **Trello / Asana con automatizaciones:** para flujos simples, las automatizaciones integradas (Butler en Trello, reglas en Asana) pueden ser suficientes.

## Colaboración en la creación de documentos compartidos

Ya quedaron atrás los tiempos en los que un documento viajaba por correo electrónico con nombres como "Informe_v3_FINAL_REVISADO_DEFINITIVO_2.docx". La colaboración moderna se hace en tiempo real y en un mismo archivo.

### Herramientas de edición colaborativa

- **Microsoft 365 (Word, Excel, PowerPoint online):** varios usuarios pueden editar simultáneamente, ver los cambios en tiempo real y chatear mientras trabajan. Control de versiones automático.
- **Google Docs / Sheets / Slides:** la alternativa de Google, con control de versiones impecable y comentarios en línea. Muy intuitivo.
- **OnlyOffice / LibreOffice Online:** opciones de código abierto. Menos conocidas, pero funcionales.
- **SharePoint + Coautoría:** la integración Microsoft permite que los documentos alojados en SharePoint se editen de forma colaborativa desde Word sin tener que usar la versión web.
- **Notion / Coda:** herramientas que combinan documentos, bases de datos y wikis. Muy flexibles, pero con menos potencia ofimática que Office.

<aside type="caution">

La edición colaborativa es maravillosa, pero tiene sus reglas. Si dos personas modifican la misma celda de una hoja de cálculo a la vez, una de las dos perderá su cambio. Establece protocolos: ¿quién edita qué? ¿cuándo se considera que un documento está "cerrado" para ediciones? ¿cómo se resuelven los conflictos?

</aside>

### Buenas prácticas para la colaboración documental

- **Nombrado de archivos coherente:** usa un estándar (Ej: AAAAMMDD_TipoDocumento_Cliente_Version).
- **Control de versiones:** no guardes versiones con nombres distintos. Usa el control de versiones del sistema. Si necesitas una versión específica, usa etiquetas, no archivos duplicados.
- **Comentarios y sugerencias:** usa las herramientas de revisión (control de cambios, comentarios) en lugar de escribir en el propio texto. Así queda claro qué es contenido y qué es opinión.
- **Notificaciones:** configura alertas para saber cuándo un documento que te interesa ha sido modificado.
- **Propietario del documento:** cada documento debe tener un responsable claro que decida cuándo se cierra una versión y se pasa a la siguiente.

<aside>

Como Knowledge Manager, una de tus tareas es definir y comunicar las normas de colaboración. Si no se establecen, cada uno hará lo que le parezca, y el caos informativo estará servido.

</aside>

## Custodia y ciclo de vida del documento

Cada documento tiene una vida: nace, vive y muere. O al menos, debería. La **custodia documental** es la responsabilidad de garantizar que un documento se conserva, protege y gestiona adecuadamente durante todo su ciclo de vida.

### Las fases del ciclo de vida documental

| Fase | Qué ocurre | Quién interviene | Duración típica |
|---|---|---|---|
| **Creación** | Se genera el documento (redacción, escaneo, captura) | Cualquier empleado | Minutos a horas |
| **Revisión** | Se verifica el contenido y la forma | Supervisor, editor | Horas a días |
| **Aprobación** | Se da el visto bueno oficial | Responsable autorizado | Horas a días |
| **Distribución** | Se envía o publica a los destinatarios | Knowledge Manager, administrativo | Minutos a horas |
| **Uso activo** | El documento se consulta y modifica frecuentemente | Usuarios autorizados | Semanas a meses |
| **Archivo** | El documento deja de estar activo pero se conserva | Gestor documental | Años |
| **Destrucción** | Se elimina de forma segura cuando ya no es necesario | Gestor documental + auditor | Puntual |

### Responsabilidades del custodio

El Knowledge Manager suele actuar como custodio documental o coordina a los custodios. Sus responsabilidades incluyen:

- Velar por la integridad de los documentos (que no se alteren sin autorización).
- Controlar los accesos y permisos (quién puede ver, editar, borrar).
- Aplicar las políticas de conservación (cuánto tiempo se guarda cada tipo).
- Certificar la autenticidad de los documentos cuando sea necesario.
- Coordinar la destrucción segura de documentos obsoletos.
- Mantener un registro actualizado de los documentos bajo custodia.

<aside type="caution">

Ser custodio documental no es un cargo honorífico. Si un documento importante desaparece o se filtra, el custodio es responsable. Asegúrate de tener registros de acceso, trazabilidad de cambios y copias de seguridad actualizadas.

</aside>

## Autenticación: firma electrónica, certificados digitales, sellos de tiempo

En el mundo digital, ¿cómo demuestras que un documento es auténtico y que no ha sido modificado desde que se firmó? Aquí entran las tecnologías de autenticación.

### Firma electrónica

No confundas "firma electrónica" con "firma escaneada". Una firma escaneada (una imagen de tu rúbrica pegada en un PDF) no tiene validez legal. Una **firma electrónica** es un conjunto de datos asociados a un documento que garantizan la identidad del firmante y la integridad del contenido.

Tipos de firma electrónica según el Reglamento eIDAS (Reglamento Europeo de Identificación Electrónica y Servicios de Confianza):

| Tipo | Validez legal | Requisitos | Cuándo usarla |
|---|---|---|---|
| **Simple** | Limitada | Cualquier dato electrónico que identifique al firmante | Correos internos, documentos informales |
| **Avanzada** | Alta | Vinculada al firmante de forma única, permite detectar cambios | Contratos comerciales, facturas, informes |
| **Cualificada** | Equivalente a firma manuscrita | Certificado cualificado + dispositivo seguro | Trámites administrativos, escrituras, contratos de alto valor |

<aside type="tip">

Para el día a día empresarial, la firma electrónica avanzada suele ser suficiente. Para contratos de alto valor o documentos con implicaciones legales graves, usa la firma cualificada.

</aside>

### Certificados digitales

Un **certificado digital** es como el DNI electrónico de una persona o empresa en internet. Lo emiten entidades de confianza (Fábrica Nacional de Moneda y Timbre, ACCV, FNMT, etc.) y vincula una identidad con una clave pública.

Usos habituales:
- Firmar documentos electrónicamente.
- Autenticarse en sedes electrónicas de la administración pública.
- Cifrar comunicaciones.
- Presentar declaraciones y trámites oficiales.

Para obtener un certificado digital, la empresa (o su representante) debe solicitarlo a una autoridad de certificación reconocida. El proceso incluye verificación de identidad, presencial o por videollamada.

### Sellos de tiempo

Un **sello de tiempo** (timestamp) es un certificado que acredita que un documento existía en un momento concreto y no ha sido modificado desde entonces. Es como un "notario digital".

Es especialmente útil cuando necesitas demostrar que un documento se presentó antes de una fecha límite (una oferta, una declaración, un recurso administrativo). Una vez aplicado el sello de tiempo, no se puede modificar el documento sin que se detecte.

<aside>

El sello de tiempo no verifica el contenido del documento, solo certifica que existía en ese momento. Es como un sobre cerrado fechado: no sabes lo que hay dentro, pero sabes cuándo se cerró.

</aside>

## Aspectos legales: RGPD, LOPDGDD, normativa de archivos

Aquí toca ponerse serios. La gestión documental no es solo cuestión de orden: es cuestión de ley.

### RGPD y LOPDGDD

El **Reglamento General de Protección de Datos** (RGPD) europeo y su transposición española, la **LOPDGDD**, afectan directamente a cómo gestionamos los documentos que contienen datos personales.

Puntos clave:

- **Minimización de datos:** no guardes más datos personales de los necesarios. Si un documento contiene datos que no necesitas, anonimízalos o elimínalos.
- **Consentimiento:** si un documento contiene datos de terceros, asegúrate de tener base legal para tratarlos (consentimiento, contrato, obligación legal, interés legítimo).
- **Plazos de conservación:** los datos personales no pueden conservarse indefinidamente. Deben eliminarse cuando dejen de ser necesarios para la finalidad que motivó su recogida.
- **Derechos ARSULIPO:** acceso, rectificación, supresión, limitación, portabilidad, oposición. Los ciudadanos pueden exigir que elimines sus datos, y debes poder responder en un plazo máximo de 30 días.
- **Registro de actividades de tratamiento:** las empresas deben documentar qué datos tratan, para qué, durante cuánto tiempo y con qué medidas de seguridad.

<aside type="caution">

El RGPD no es un brindis al sol. Las multas pueden alcanzar los 20 millones de euros o el 4% de la facturación anual. Como custodio documental, tienes la responsabilidad de que los documentos cumplan la normativa.

</aside>

### Normativa de archivos

Además de la protección de datos, existe normativa específica sobre conservación de documentos:

- **Ley 39/2015** del Procedimiento Administrativo Común (para administraciones públicas y empresas que contratan con ellas).
- **Ley 16/1985** del Patrimonio Histórico Español (documentos con valor histórico).
- **Código de Comercio:** obliga a conservar la documentación mercantil durante 6 años (libros contables, facturas, correspondencia comercial).
- **Normativa laboral:** los documentos relacionados con la relación laboral (contratos, nóminas, finiquitos) deben conservarse al menos 4 años.
- **Ley 10/2010** de prevención del blanqueo de capitales: obliga a conservar documentación durante 10 años (para ciertos sectores).

<aside>

Como Knowledge Manager, no necesitas ser abogado, pero sí conocer las obligaciones básicas de tu sector. Ante la duda, consulta con el departamento jurídico o con un asesor en protección de datos.

</aside>

### El delegado de protección de datos (DPO)

El Delegado de Protección de Datos (DPO) es la persona encargada de supervisar el cumplimiento del RGPD en la organización. Como Knowledge Manager, trabajarás codo con codo con el DPO para:

- Identificar qué documentos contienen datos personales.
- Aplicar las medidas de seguridad adecuadas.
- Gestionar las solicitudes de derechos ARSULIPO.
- Documentar los tratamientos de datos.

## Valoración de la contribución ambiental de la gestión documental (papel cero)

La gestión documental no solo afecta a la eficiencia y al cumplimiento legal: también tiene un impacto ambiental. Y aquí el Knowledge Manager puede marcar la diferencia.

### El coste ambiental del papel

Producir una tonelada de papel requiere:
- 24 árboles.
- 100.000 litros de agua.
- 5.000 kWh de energía.
- Y genera 2,5 toneladas de CO2.

Y eso sin contar el transporte, la impresión y la gestión de residuos. Una empresa media consume entre 50.000 y 100.000 hojas de papel al año. Eso son aproximadamente 500 kg de papel, que a su vez representan 12 árboles, 50.000 litros de agua y 1,25 toneladas de CO2.

### Estrategias para reducir el papel

- **Digitalización de procesos:** factura electrónica, nómina digital, contratos electrónicos, informes en PDF firmados digitalmente.
- **Impresión responsable:** configura las impresoras para que impriman a doble cara y en blanco y negro por defecto. Desactiva la impresión a color salvo que sea necesaria.
- **Política de "papel cero":** establece objetivos concretos (reducir el consumo de papel un 20% anual) y mide los resultados trimestralmente.
- **Campañas de concienciación:** muchos empleados imprimen por inercia. Un cartel junto a la impresora recordando el coste ambiental puede ayudar. Datos concretos impactan más que frases genéricas.
- **Firma electrónica en lugar de impresión y escaneo:** rompe el círculo vicioso de imprimir-firmar-escanear-enviar.

<aside type="tip">

La transición al papel cero no se hace de un día para otro. Empieza por los procesos más papel-intensivos (facturación, RRHH, informes periódicos) y ve extendiendo. Celebra cada hito: la primera semana sin facturas en papel, el primer mes sin nóminas impresas...

</aside>

## Estándares de autenticación ante instancias públicas y privadas

Cuando una empresa necesita presentar documentos ante la administración pública o ante entidades privadas (bancos, aseguradoras, notarías), debe hacerlo siguiendo unos estándares.

### Documentos electrónicos con validez legal

No cualquier PDF vale. Para que un documento electrónico tenga validez legal, debe cumplir:

- **Formato PDF/A** (formato de archivo a largo plazo, ISO 19005): garantiza que el documento se visualizará igual dentro de décadas.
- **Firma electrónica cualificada** del emisor: acredita quién firma.
- **Sello de tiempo** de una autoridad de sellado de tiempo cualificada: acredita cuándo se firmó.
- **Trazabilidad:** registro de todas las operaciones realizadas sobre el documento (creación, modificación, firma, archivo).
- **Integridad:** el documento no debe poder modificarse sin que se detecte.

### Sede electrónica y registro electrónico

Las administraciones públicas disponen de sedes electrónicas donde las empresas pueden presentar documentos de forma telemática. Para ello, el representante legal necesita:

- Certificado digital de empresa o de representante (FNMT, ACCV, etc.).
- Acceso a la sede electrónica correspondiente (cada administración tiene la suya).
- Conocimiento de los trámites y formatos aceptados (cada administración puede tener requisitos específicos).

Las sedes electrónicas más utilizadas por las empresas en España: Agencia Tributaria, Seguridad Social, Registro Mercantil, sedes autonómicas y locales.

<aside type="caution">

No todos los documentos electrónicos valen para todo. Un documento firmado con firma simple puede ser válido internamente, pero no para presentar una oferta en un concurso público. Conoce los requisitos de cada trámite antes de enviar nada.

</aside>

### Normativas sectoriales específicas

Además de las normas generales (RGPD, LOPDGDD, Código de Comercio), existen normativas específicas para ciertos sectores que afectan a la gestión documental:

**Sector sanitario:** la Ley 41/2002 de autonomía del paciente y la normativa autonómica sobre historia clínica obligan a conservar los documentos clínicos durante un mínimo de 5 años (en algunas comunidades, hasta 20 años). La historia clínica electrónica debe cumplir requisitos específicos de acceso, integridad y confidencialidad.

**Sector financiero:** el Banco de España y la CNMV exigen la conservación de documentación financiera durante períodos que pueden llegar a los 10 años. Las entidades financieras deben tener sistemas de archivo que garanticen la integridad y el acceso rápido a los documentos.

**Sector educativo:** los expedientes académicos deben conservarse durante períodos que varían según la comunidad autónoma, generalmente entre 5 y 10 años. Los títulos oficiales tienen conservación permanente.

**Sector asegurador:** la Ley de Contrato de Seguro y la normativa de la Dirección General de Seguros establecen plazos de conservación para pólizas, siniestros y reclamaciones que pueden llegar a los 15 años.

**Administración pública:** la Ley 39/2015 y la Ley 40/2015 establecen la obligación de conservar los documentos electrónicos en formatos que garanticen su integridad y accesibilidad a largo plazo. Los documentos con valor histórico tienen conservación permanente.

<aside>

Como Knowledge Manager, tu obligación no es conocer todas las normativas sectoriales de memoria, pero sí saber que existen y consultarlas cuando sea necesario. Una buena práctica es tener un documento actualizado con los plazos de conservación aplicables a tu sector, y revisarlo anualmente.

</aside>

### Interoperabilidad

La administración electrónica se basa en la interoperabilidad: que los sistemas de distintas administraciones y empresas puedan intercambiar documentos y datos de forma segura. Estándares como **Facturae** (factura electrónica), **SEDI** (sello electrónico) o **DOCe** (documento electrónico) facilitan esta comunicación.

La interoperabilidad evita que tengas que presentar el mismo documento en seis sitios distintos. Una vez presentado en una sede, el documento puede ser consultado por otra administración si está autorizada.

### Cómo documentar un workflow correctamente

Diseñar el flujo es solo la mitad del trabajo. La otra mitad es documentarlo para que cualquier persona de la organización pueda entenderlo y ejecutarlo. Un workflow bien documentado incluye:

**Diagrama del proceso:** una representación visual con los pasos, actores y condiciones. Puedes usar BPMN, diagramas de flujo simples o incluso dibujarlo a mano.

**Descripción textual:** para cada paso, indica claramente:
- ¿Qué hay que hacer?
- ¿Quién lo hace?
- ¿En qué plazo?
- ¿Qué información necesita?
- ¿Qué ocurre si se rechaza o hay un error?

**Políticas asociadas:** si el workflow implica aprobaciones con umbrales económicos, criterios de aceptación o requisitos legales, deben estar documentados y accesibles.

**Registro de cambios:** cuando modifiques un workflow, documenta qué cambió, por qué y cuándo. Esto es especialmente importante si el workflow tiene implicaciones legales o financieras.

**Plan de contingencia:** ¿qué pasa si el sistema falla? ¿hay un proceso manual alternativo? ¿quién tiene autoridad para aprobar fuera del sistema?

<aside type="tip">

No documentes el workflow en un PDF que nadie va a leer. Incrusta la documentación en el propio sistema (enlaces a políticas, descripciones en cada tarea) o crea una página en la intranet. La documentación debe estar donde se necesita, no en un cajón virtual.

</aside>

### La gestión del cambio en la implantación de flujos documentales

Implantar flujos de trabajo documentales no es solo un reto técnico: es un reto de gestión del cambio. Las personas están acostumbradas a hacer las cosas de una determinada manera, y cambiarla genera resistencia. Como Knowledge Manager, vas a encontrarte con estas reacciones típicas:

**"Siempre lo hemos hecho así"**
La resistencia más común. La gente se siente cómoda con sus procesos manuales, aunque sean ineficientes.
- **Cómo manejarlo:** no desprecies el proceso anterior. Reconoce su valor y explica qué gana la persona con el cambio (menos trabajo repetitivo, menos errores, más tiempo para lo importante).

**"Esto es más lento que hacerlo a mi manera"**
Al principio, cualquier cambio es más lento porque hay curva de aprendizaje.
- **Cómo manejarlo:** sé paciente. Establece un periodo de adaptación (30-60 días) durante el cual se permite ir más lento. Pasado ese plazo, el workflow debería ser más rápido que el método anterior.

**"¿Y si el sistema falla?"**
Miedo a que la tecnología falle y no poder hacer el trabajo.
- **Cómo manejarlo:** ten un plan B. Define procedimientos manuales alternativos para cuando el sistema no esté disponible. Y comunícalos.

**"Esto es para controlarme"**
Algunos empleados ven los flujos documentales como una herramienta de vigilancia.
- **Cómo manejarlo:** sé transparente. Explica que la trazabilidad no es para fiscalizar, sino para mejorar procesos y proteger al empleado (si hay un problema, se puede demostrar quién hizo qué y cuándo).

<aside type="tip">

El cambio cultural es la parte más difícil de cualquier implantación de flujos documentales. No subestimes el factor humano. Invierte al menos tanto tiempo en la gestión del cambio como en la configuración técnica. Los flujos perfectos no sirven de nada si nadie los sigue.

</aside>

### El delegado de protección de datos (DPO) y su relación con el Knowledge Manager

El Delegado de Protección de Datos (DPO) es una figura obligatoria en muchas organizaciones según el RGPD. Como Knowledge Manager, trabajarás estrechamente con esta persona. Estas son las áreas de colaboración:

| Área | Rol del DPO | Rol del Knowledge Manager |
|---|---|---|
| Identificación de datos personales | Determina qué es dato personal | Localiza dónde están esos datos en los documentos |
| Políticas de conservación | Define plazos legales | Implementa los plazos en el SGD |
| Gestión de derechos ARSULIPO | Recibe y gestiona las solicitudes | Localiza y recupera los documentos afectados |
| Seguridad documental | Define medidas de seguridad | Configura permisos y accesos |
| Formación | Asesora sobre normativa | Forma a los usuarios en procedimientos |
| Auditoría | Realiza auditorías de cumplimiento | Proporciona registros de acceso y trazabilidad |

<aside>

Si tu empresa no tiene un DPO (no todas están obligadas a tenerlo), las responsabilidades recaen en la dirección. Como Knowledge Manager, puedes convertirte en el referente interno en gestión documental y protección de datos, aunque el DPO formal sea externo.

</aside>

## ⭐ Ponte en la piel del Knowledge Manager

**Caso 1: El contrato que lleva tres semanas en revisión**

El departamento comercial se queja de que los contratos tardan una eternidad en aprobarse. Actualmente, cuando un comercial prepara un contrato, se lo envía por correo a su jefe, este lo imprime, lo firma a mano, lo escanea y lo reenvía. Si hay que cambiar algo, el proceso vuelve a empezar. A veces se pierden versiones y se firma un contrato desactualizado.

**Preguntas para reflexionar:**
- ¿Cómo diseñarías un workflow digital para agilizar este proceso? Dibuja los pasos.
- ¿Qué herramientas utilizarías para la firma y la aprobación? ¿Por qué?
- ¿Cómo medirías si el nuevo flujo es más eficiente que el anterior? ¿Qué indicadores usarías?
- ¿Qué riesgos legales identificas en el proceso actual? ¿Cómo los mitigarías?

**Orientación para la reflexión:** El workflow debería empezar con una plantilla de contrato estandarizada (almacenada en el SGD). El comercial rellena los campos variables, y el sistema notifica automáticamente al validador. La aprobación se hace mediante firma electrónica avanzada (DocuSign, Signaturit o Adobe Sign), sin imprimir ni escanear. Si el contrato requiere modificaciones, se rechaza con comentarios y vuelve al comercial para ajuste. Indicadores de eficiencia: tiempo medio de aprobación (de semanas a horas), número de versiones generadas por contrato, tasa de errores detectados antes de la firma. Riesgos legales del proceso actual: pérdida de versiones, firma en documento equivocado, imposibilidad de demostrar cuándo se firmó exactamente (falta de sello de tiempo).

**Caso 2: Un cliente solicita la eliminación de sus datos**

Un cliente ejerce su derecho de supresión (derecho al olvido) y pide que elimines todos sus datos personales de los sistemas de la empresa. Sin embargo, algunas facturas con sus datos deben conservarse por obligación legal durante 6 años según el Código de Comercio. Hay además correos electrónicos, notas internas y un contrato vigente.

**Preguntas para reflexionar:**
- ¿Cómo gestionas esta contradicción entre el derecho del cliente y la obligación legal?
- ¿Qué documentos eliminarías y cuáles conservarías? ¿Con qué criterio?
- ¿Cómo documentarías tu decisión para demostrar que has actuado correctamente ante una posible inspección?
- ¿Qué comunicarías al cliente y cómo?

**Orientación para la reflexión:** La clave está en el principio de "bloqueo" del RGPD: los datos que deben conservarse por obligación legal no se eliminan, pero se bloquean (no se tratan para ninguna otra finalidad). Separa los documentos en dos grupos: (a) los que contienen datos del cliente y ya no son necesarios (elimínalos), (b) los que deben conservarse por ley (facturas, contratos vigentes, documentación fiscal). Estos últimos se bloquean: solo pueden consultarse para cumplir con la obligación legal, no para ningún otro uso. Documenta todo el proceso: qué documentos se eliminaron, cuáles se bloquearon, con qué base legal. Comunica al cliente de forma clara: "Hemos eliminado sus datos personales de todos los sistemas, excepto aquellos que estamos obligados a conservar por ley durante X años. Durante ese periodo, esos datos estarán bloqueados y solo se usarán para cumplir con dicha obligación."

**Caso 3: La auditoría ambiental del papel**

La dirección te pide que elabores un informe sobre el consumo de papel de la empresa y propongas medidas para reducirlo. Actualmente se consumen 50.000 hojas al año, y la impresora está en medio de la oficina sin ningún control. No hay política de impresión, ni datos por departamento, ni criterios para imprimir en color.

**Preguntas para reflexionar:**
- ¿Qué datos necesitas recopilar para hacer el informe? ¿Cómo los obtendrías?
- ¿Qué medidas propondrías a corto, medio y largo plazo? Sé específico.
- ¿Cómo calcularías el ahorro económico y ambiental de tus propuestas?
- ¿Cómo implicarías a los empleados en la reducción sin que lo vivan como una imposición?

**Orientación para la reflexión:** Datos necesarios: consumo total de papel (facturas de la papelera o contador de impresiones), consumo por departamento, coste del papel y tóner, número de impresiones en color vs. blanco y negro. Puedes obtenerlos del proveedor de material de oficina, del departamento de administración o del software de gestión de impresión. Medidas a corto plazo: configura todas las impresoras para que impriman a doble cara y en blanco y negro por defecto. Medidas a medio plazo: implanta la factura electrónica y la nómina digital. Medidas a largo plazo: digitaliza todos los procesos que aún estén en papel, objetivo papel cero en 2-3 años. El ahorro económico se calcula: coste del papel + tóner + mantenimiento de impresoras - coste de las alternativas digitales. El ahorro ambiental se calcula con los factores de conversión: 1 hoja = 0,5 g de CO2 aproximadamente. Implica a los empleados con retos por departamentos, datos visibles de consumo y celebración de logros.

### Costes y recursos para la implantación de flujos documentales

Implantar flujos de trabajo documentales y sistemas de custodia requiere inversión. Como Knowledge Manager, necesitarás saber qué recursos solicitar y cómo justificarlos.

**Costes de software:**
| Herramienta | Coste estimado | Notas |
|---|---|---|
| Plataforma de workflow (Power Automate) | Incluido en Microsoft 365 | Si usas Microsoft, no hay coste adicional |
| Firma electrónica (DocuSign, Signaturit) | 10-30 €/usuario/mes | Según volumen de firmas |
| Sistema de gestión documental | 5-15 €/usuario/mes | Según funcionalidades |
| Certificado digital (FNMT) | Gratuito (persona física) o 20-50 € | Renovación periódica |
| Sello de tiempo | 0,10-0,50 € por sello | Según volumen |

**Costes de personal:**
- Knowledge Manager (tú): jornada completa o parcial según tamaño de la empresa.
- Formación a empleados: horas de trabajo dedicadas a aprender los nuevos sistemas.
- Consultoría externa (opcional): para implantaciones complejas o asesoría legal.

**Recursos necesarios:**
- Tiempo de los empleados para formarse (estima 2-4 horas por persona en la implantación inicial).
- Apoyo de IT para integraciones técnicas.
- Apoyo de asesoría jurídica para definir políticas de conservación.
- Voluntad de la dirección para respaldar los cambios.

<aside type="caution">

El error más común es infravalorar el tiempo de formación y cambio cultural. No es raro que una implantación de flujos documentales lleve 3-6 meses en consolidarse. No esperes resultados en semanas. Presupuesta el tiempo realista y comunícalo a la dirección desde el principio.

</aside>

### Responsabilidades legales del Knowledge Manager en la gestión documental

Llega un momento en el que conviene poner negro sobre blanco las responsabilidades legales que asumes como Knowledge Manager en materia de gestión documental. No es para asustarte, sino para que sepas dónde estás y qué puedes exigir a tu vez.

**Responsabilidades directas:**
- Garantizar la integridad y autenticidad de los documentos bajo custodia.
- Aplicar las políticas de conservación definidas por la organización.
- Controlar los accesos y permisos a los documentos.
- Asegurar la trazabilidad de las operaciones sobre los documentos.
- Coordinar la destrucción segura cuando corresponda.

**Responsabilidades compartidas (con otros departamentos):**
- Con el DPO: protección de datos personales contenidos en los documentos.
- Con IT: seguridad técnica del SGD y copias de seguridad.
- Con Recursos Humanos: gestión de documentos laborales y confidencialidad.
- Con Asesoría Jurídica: cumplimiento normativo sectorial.

**Lo que NO es responsabilidad del Knowledge Manager (aunque a veces se lo quieran colgar):**
- Definir la estrategia legal de la empresa (eso es cosa de abogados).
- Decidir los plazos de conservación (deben definirse con asesoría legal).
- Responder ante una inspección de protección de datos (es competencia del DPO o la dirección).
- Pagar las multas si algo sale mal (la responsabilidad última es de la dirección).

<aside type="tip">

Documenta todas tus actuaciones. Si tienes un registro de cuándo se hizo cada copia de seguridad, qué permisos se asignaron y quién autorizó cada destrucción de documentos, podrás demostrar en cualquier momento que has actuado diligentemente. El papel (nunca mejor dicho) lo aguanta todo.

</aside>

### Casos prácticos de aplicación de normativa

Para entender cómo se aplica la normativa en el día a día, aquí tienes tres casos prácticos:

**Caso práctico 1: Una inspección de trabajo solicita documentos**
La Inspección de Trabajo se presenta en la empresa y solicita ver los contratos laborales de los últimos 4 años y las nóminas del último año. Tienes 10 días hábiles para entregarlos.
- ¿Qué haces? Accedes al SGD, buscas por tipo de documento "contrato laboral" y "nómina", con filtro por fecha. Exportas los documentos en PDF/A.
- ¿Y si algún documento no está digitalizado? Lo digitalizas aplicando OCR y lo incorporas al SGD antes de entregarlo.
- ¿Y si falta algún documento? Lo comunicas por escrito a la inspección indicando el motivo.

**Caso práctico 2: Un juzgado solicita una factura de hace 7 años**
Un juzgado requiere una factura concreta de un cliente de hace 7 años para un procedimiento judicial.
- ¿Qué haces? Verificas si la factura está dentro del plazo de conservación (6 años según el Código de Comercio). Si han pasado 7 años, legalmente podría haberse destruido.
- ¿La conservasteis más tiempo por política interna? Si sí, la localizas y entregas. Si no, informas al juzgado de que la factura fue destruida según la política de conservación aplicable (acredítalo con el certificado de destrucción).

**Caso práctico 3: Un empleado reclama que no recibió una comunicación**
Un empleado dice que no fue informado de un cambio en sus condiciones laborales porque "nunca recibió el correo". La empresa sostiene que sí se lo comunicó.
- ¿Qué haces? Revisas la trazabilidad del envío: ¿hay registro del correo enviado? ¿el SGD registra cuándo se subió el documento de comunicación? ¿hay acuse de recibo?
- Si el workflow incluye una tarea de "notificar al empleado" y el sistema registra que se ejecutó, puedes demostrar que la comunicación se realizó.
- Si no hay trazabilidad, es la palabra del empleado contra la de la empresa. Lección aprendida: los flujos documentales deben incluir notificaciones con acuse de recibo o registro de entrega.

<aside>

La trazabilidad no es burocracia: es protección. Un workflow bien diseñado y documentado te protege a ti como Knowledge Manager, protege a la empresa y protege los derechos de los empleados y clientes.

</aside>

## ❓ Dudas frecuentes

**P: ¿Cuál es la diferencia entre firma electrónica y certificado digital?**
R: El certificado digital es la identidad (el "DNI electrónico"). La firma electrónica es la acción de usar ese certificado para firmar un documento. Sin certificado no hay firma electrónica cualificada. Es como tener un carnet de identidad (certificado) y usarlo para identificarte al firmar un papel (firma).

**P: ¿Puedo destruir documentos físicos después de digitalizarlos?**
R: Legalmente, si la digitalización cumple ciertos requisitos (calidad, integridad, autenticidad), el documento digital tiene la misma validez que el físico. Pero hay matices: algunos documentos (escrituras notariales, ciertos contratos, testamentos) pueden requerir conservar el original físico. La mejor práctica: espera al plazo de prescripción legal antes de destruir. Y consulta con un asesor legal antes de destruir documentos con valor jurídico.

**P: ¿Es obligatorio tener un registro de actividades de tratamiento de datos?**
R: Sí, según el RGPD. Las empresas de más de 250 empleados o que traten datos sensibles deben llevar un registro de todas las actividades de tratamiento de datos personales. Pero incluso las empresas más pequeñas deberían tenerlo como buena práctica. Es tu mapa de qué datos tienes, por qué los tienes, dónde están y quién puede acceder.

**P: ¿Qué hago con los documentos de un empleado que ha causado baja?**
R: Los datos del empleado deben conservarse durante el plazo de prescripción de posibles reclamaciones (4 años en materia laboral, 5 años para contratos, etc.). Pasado ese plazo, deben suprimirse. No puedes conservar sus datos indefinidamente solo por si acaso. El currículum, los informes de evaluación y los datos médicos tienen plazos específicos.

**P: ¿El papel cero es realista en cualquier empresa?**
R: Depende del sector. Una empresa tecnológica puede acercarse al 100% de papel cero. Un bufete de abogados o una administración pública lo tienen más difícil por la naturaleza de su trabajo (documentos legales que requieren firma manuscrita, expedientes físicos). El objetivo no es cero absoluto, sino reducir al mínimo necesario. Cada hoja que no se imprime es un acierto.

**P: ¿Necesito un certificado digital para firmar documentos internos?**
R: No, para documentos internos puede ser suficiente con la firma electrónica simple (un nombre al final de un correo) o avanzada (plataformas como DocuSign, Signaturit, FirmaDigital). El certificado digital es necesario cuando el documento tiene efectos legales externos (contratos con clientes, trámites administrativos, ofertas a concursos públicos).

<div class="faq-item">
</div>
<div class="faq-item">
### Checklist del Knowledge Manager para flujos y custodia legal

**Diseño de workflows:**
- [ ] Inicio (trigger) claramente definido.
- [ ] Tareas asignadas a roles concretos.
- [ ] Condiciones documentadas (umbrales económicos, tipos de documento).
- [ ] Notificaciones configuradas para cada actor.
- [ ] Plan de contingencia para fallos del sistema.

**Custodia documental:**
- [ ] Ciclo de vida del documento definido por tipo.
- [ ] Responsables de custodia asignados y formados.
- [ ] Registros de acceso activados y auditables.
- [ ] Política de conservación documentada y accesible.

**Cumplimiento normativo:**
- [ ] Documentos con datos personales identificados.
- [ ] Plazos de conservación aplicados según normativa.
- [ ] Procedimiento para derechos ARSULIPO definido.
- [ ] Certificados digitales y firmas electrónicas disponibles y operativos.
- [ ] Registro de actividades de tratamiento actualizado.

**Papel cero:**
- [ ] Objetivos de reducción de papel definidos.
- [ ] Impresoras configuradas por defecto a doble cara y B/N.
- [ ] Factura electrónica y nómina digital implantados.
- [ ] Consumo de papel medido trimestralmente.

<aside type="tip">

La normativa cambia. El RGPD se actualiza, aparecen nuevas leyes sectoriales, los plazos de conservación se modifican. Programa una revisión normativa anual con tu asesoría jurídica para mantener actualizada tu checklist.

</aside>

<div class="resumen-card">
## 📌 Resumen (lo que importa de verdad)

- Los flujos de trabajo documentales automatizan procesos, reducen errores, evitan cuellos de botella y dejan trazabilidad de cada paso. Diseñarlos bien es clave para la eficiencia.
- La edición colaborativa en tiempo real evita el caos de versiones y acelera la creación de documentos, pero requiere normas claras de uso.
- El ciclo de vida del documento tiene fases claras (creación, revisión, aprobación, distribución, uso, archivo, destrucción), y el custodio es responsable de su correcta gestión en cada fase.
- La firma electrónica avanzada o cualificada da validez legal a los documentos digitales. El certificado digital es la identidad, y el sello de tiempo acredita el momento de la firma.
- El RGPD y la LOPDGDD imponen obligaciones estrictas sobre cómo gestionar documentos con datos personales: minimización, consentimiento, plazos de conservación y derechos ARSULIPO.
- La transición al papel cero reduce costes, impacto ambiental y mejora la eficiencia. Cada hoja que no se imprime es un acierto económico y ecológico.
- Los estándares de autenticación (PDF/A, firma cualificada, sello de tiempo) son obligatorios para trámites oficiales. La interoperabilidad entre administraciones evita duplicidades.

**P: ¿Qué diferencia hay entre RGPD y LOPDGDD? ¿Tengo que cumplir ambos?**
R: El RGPD es el reglamento europeo, que aplica directamente en todos los países de la UE. La LOPDGDD es la ley orgánica española que adapta y complementa el RGPD en España. Sí, debes cumplir ambos. El RGPD establece el marco general, y la LOPDGDD concreta algunos aspectos (como las edades de consentimiento de menores o las infracciones y sanciones específicas).

**P: ¿Es legal escanear y destruir documentos originales con valor legal (como contratos firmados)?**
R: Depende del tipo de documento y de la legislación aplicable. El Reglamento eIDAS y la Ley 39/2015 reconocen la validez de los documentos electrónicos siempre que cumplan requisitos de autenticidad, integridad y conservación. Sin embargo, algunos documentos notariales, registrales o con firma manuscrita pueden requerir la conservación del original físico. La recomendación general: no destruyas ningún documento original hasta que hayas confirmado con asesoría legal que el documento digitalizado tiene plena validez sustitutoria. En caso de duda, conserva el original.

**P: ¿Qué pasa si no cumplo con el RGPD en la gestión documental?**
R: Las consecuencias pueden ser graves: multas de hasta 20 millones de euros o el 4% de la facturación anual. Además del daño económico, está el daño reputacional. Pero ojo: la mayoría de las sanciones no son por el incumplimiento en sí, sino por no haber hecho nada para prevenirlo. Si puedes demostrar que has implementado medidas técnicas y organizativas adecuadas (políticas, formación, procedimientos), las sanciones se reducen significativamente. La buena fe y la diligencia cuentan.

**P: ¿Cuánto tiempo tengo para responder a una solicitud de derechos ARSULIPO?**
R: El RGPD establece un plazo máximo de un mes desde la recepción de la solicitud. En casos complejos o con un gran volumen de solicitudes, puede ampliarse hasta dos meses, informando al solicitante del motivo de la ampliación. Como Knowledge Manager, tu papel es localizar los documentos afectados en el menor tiempo posible para que el DPO o el responsable pueda responder dentro del plazo.

## ✍️ Ejercicios propuestos

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
1. Diseña un flujo de trabajo documental para el proceso de solicitud de vacaciones en una empresa de 20 empleados. Define: inicio (trigger), tareas, actores (roles), condiciones (días de antelación, solapamiento con otros empleados, período de prueba), notificaciones y estado final. Representa el flujo como un diagrama (puedes dibujarlo a mano y describirlo). ¿Qué mejoras aporta respecto a un proceso manual en papel?
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
2. Compara tres herramientas de firma electrónica (DocuSign, Signaturit, Firma de la FNMT) y elabora una tabla comparativa con: precio, tipos de firma que ofrece, validez legal, integraciones con otras herramientas, facilidad de uso, y requisitos técnicos. ¿Cuál recomendarías para una pyme que necesita firmar contratos con clientes? ¿Y para una empresa que trabaja con la administración pública?
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
3. Redacta una política de conservación documental para una empresa de consultoría. Debe especificar los plazos de conservación para: facturas, contratos con clientes, informes de proyectos, datos de empleados (nóminas, contratos, evaluaciones), correos electrónicos y documentación de formación. Para cada tipo, indica qué hacer al final del plazo (destrucción segura, archivo histórico o revisión).
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
4. Calcula el impacto ambiental del consumo de papel de tu centro de estudios o de tu lugar de trabajo. Averigua cuántas hojas se consumen al año (pregunta en administración o haz una estimación), multiplica por los factores ambientales (árboles, agua, CO2) y propón tres medidas concretas de reducción con objetivos cuantificables (ej: reducir un 15% en el primer año mediante impresión a doble cara).
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
5. Simula un caso práctico de derecho de supresión (RGPD). Un cliente (persona física) solicita la eliminación de todos sus datos personales de los sistemas de tu empresa. Identifica al menos 5 tipos de documentos de la empresa que podrían contener sus datos personales y decide, para cada tipo, si procede eliminar o conservar (indicando la base legal que lo justifica: RGPD, Código de Comercio, normativa laboral, etc.).
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
6. Elabora una guía básica para empleados sobre "Cómo firmar un documento electrónico correctamente". Debe incluir: qué es una firma electrónica y por qué es importante, qué tipos existen y cuándo usar cada uno, qué herramientas tiene la empresa disponibles, un paso a paso para firmar un PDF, y una lista de errores comunes a evitar (firmar sin leer, usar firma simple para documentos legales, compartir el certificado digital).
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
7. Diseña un plan de formación para implantar un sistema de firma electrónica en una empresa de 40 empleados. El plan debe incluir: perfiles de usuarios (directivos, mandos intermedios, administrativos), contenidos de la formación, formato (presencial, vídeo, manual), duración, cronograma, y criterios de evaluación del aprendizaje.
</div>

<div class="ejercicio-card">
<span class="ej-num">Ejercicio</span>
8. Redacta un procedimiento de actuación ante una solicitud de derecho de supresión (RGPD). El procedimiento debe incluir: quién recibe la solicitud, cómo se registra, qué pasos se siguen para localizar los datos, cómo se decide qué conservar y qué eliminar, cómo se documenta la decisión, y cómo se comunica la respuesta al solicitante.
</div>

---

<span class="ra-badge-footer">🎯 RA trabajados: - **RA5** - Implementa sistemas de archivo digital y gestión documental, aplicando técnicas de digitalización, clasificación, almacenamiento seguro y recuperación de la información.
</span>

---

<div align="center"><a href="https://creativecommons.org/licenses/by-sa/4.0/deed.es" target="_blank"><img src="/ApuntesGestionAvanzadaInformacion/cc-by-sa.png" alt="CC BY-SA 4.0" width="88" height="31"></a><br><strong>Sergi Garcia Barea</strong> — CC BY-SA 4.0</div>

</div>