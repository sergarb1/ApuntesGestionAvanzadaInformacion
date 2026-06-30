---
title: "Boletín 07 - Nivel Fácil (Resuelto): Oficina virtual y página web de la empresa"
---

1. **Crear una página básica en WordPress**
   Accede a un sitio WordPress (puede ser local con XAMPP o en un hosting de pruebas). Crea una página llamada "Quiénes somos" que incluya un texto de presentación de la empresa y una imagen corporativa. Publica la página y asegúrate de que aparezca en el menú principal.

   **Solución:**
   ```text
   1. Acceder al panel de administración de WordPress (/wp-admin).
   2. Ir a "Páginas" → "Añadir nueva".
   3. Título: "Quiénes somos".
   4. En el editor, redactar:
      "En [Nombre de la empresa] llevamos más de 15 años ofreciendo soluciones de asesoría administrativa a pymes. Nuestro equipo está formado por profesionales con amplia experiencia en gestión documental, facturación y recursos humanos."
   5. Insertar imagen: botón "Añadir medio" → "Subir archivos" → seleccionar logotipo corporativo.
   6. Publicar la página.
   7. Ir a "Apariencia" → "Menús" → marcar la página "Quiénes somos" → "Añadir al menú" → guardar.
   ```
   **Salida esperada:**
   ```
   Página "Quiénes somos" visible en el sitio web y accesible desde el menú principal.
   ```
   > **💡 Explicación:** Una página corporativa básica permite a los clientes conocer la empresa. Integrarla en el menú facilita la navegación y mejora la experiencia de usuario.

2. **Configurar un formulario de contacto**
   Instala el plugin "Contact Form 7" en WordPress y crea un formulario con los campos: Nombre, Email, Teléfono y Mensaje. Configúralo para que los envíos lleguen a la dirección administracion@empresa.com. Inserta el formulario en la página "Contacto".

   **Solución:**
   ```text
   1. En el panel de WordPress: "Plugins" → "Añadir nuevo" → buscar "Contact Form 7" → "Instalar ahora" → "Activar".
   2. Ir a "Contacto" → "Añadir nuevo formulario".
   3. Título: "Formulario de contacto principal".
   4. Plantilla del formulario:
      <label for="nombre">Nombre (obligatorio)</label>
      [text* nombre]
      <label for="email">Email (obligatorio)</label>
      [email* email]
      <label for="telefono">Teléfono</label>
      [tel telefono]
      <label for="mensaje">Mensaje</label>
      [textarea mensaje]
      [submit "Enviar"]
   5. En "Configuración del correo":
      - Para: administracion@empresa.com
      - De: [your-email]
      - Asunto: "Nuevo mensaje desde la web - [your-subject]"
   6. Guardar el formulario.
   7. Copiar el shortcode [contact-form-7 id="XXX"] e insertarlo en la página "Contacto".
   ```
   **Salida esperada:**
   ```
   Formulario funcional en la página de contacto. Los envíos llegan a la bandeja de administracion@empresa.com.
   ```
   > **💡 Explicación:** Un formulario de contacto es la vía principal de comunicación con los clientes desde la web. Configurar correctamente el correo destino evita que las consultas se pierdan.

3. **Crear una intranet básica con Google Sites**
   Crea un sitio en Google Sites (nueva Google Workspace) para uso interno de la empresa. Incluye una página de inicio con el nombre de la empresa, un enlace al calendario compartido y un documento con las políticas internas. Publica el sitio con acceso restringido a los empleados.

   **Solución:**
   ```text
   1. Ir a sites.google.com → "Crear" → "En blanco".
   2. Nombre del sitio: "Intranet [Nombre Empresa]".
   3. Página de inicio:
      - Título: "Bienvenidos a la intranet"
      - Texto: "Accede a los recursos internos de la empresa desde un único lugar."
      - Insertar enlace al calendario compartido de Google Calendar.
      - Insertar enlace al documento de Google Docs "Políticas internas".
   4. Añadir página: "Recursos" con enlaces a documentos útiles.
   5. Añadir página: "Directorio" con lista de empleados y sus cargos.
   6. Publicar: botón "Publicar" → en "Configuración de publicación", seleccionar "Restringido – Solo usuarios de [dominio]" → "Publicar".
   ```
   **Salida esperada:**
   ```
   Intranet publicada y accesible solo para empleados con cuenta en el dominio corporativo.
   ```
   > **💡 Explicación:** Google Sites permite crear intranets sin conocimientos técnicos. Restringir el acceso al dominio corporativo garantiza que solo empleados autorizados vean la información interna.

4. **Añadir y configurar un plugin de seguridad**
   Instala y activa el plugin "Wordfence Security" en WordPress. Realiza un escaneo básico de seguridad. Explica qué acciones recomienda el plugin tras el análisis y cómo programar escaneos periódicos.

   **Solución:**
   ```text
   1. "Plugins" → "Añadir nuevo" → buscar "Wordfence Security" → "Instalar ahora" → "Activar".
   2. Al activar, aparece el asistente de configuración → seguir los pasos predeterminados.
   3. Ir a "Wordfence" → "Scan" → "Iniciar escaneo".
   4. Esperar a que finalice. Wordfence muestra un informe con:
      - Archivos modificados respecto a la instalación original
      - Posibles malware o código sospechoso
      - Plugins/temas desactualizados
      - Contraseñas débiles de usuarios
   5. Programar escaneos: "Wordfence" → "Opciones de escaneo" → marcar "Ejecutar escaneo cada:" → seleccionar "Diariamente" a las 02:00 h.
   6. Configurar alertas por correo electrónico para resultados críticos.
   ```
   **Salida esperada:**
   ```
   Escaneo completado. Aparecen recomendaciones concretas. Escaneo automático programado diariamente.
   ```
   > **💡 Explicación:** Un plugin de seguridad es esencial para proteger la web ante vulnerabilidades. Los escaneos periódicos permiten detectar amenazas antes de que afecten a los visitantes.
