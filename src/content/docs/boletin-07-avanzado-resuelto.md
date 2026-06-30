---
title: "Boletín 07 - Nivel Avanzado (Resuelto): Oficina virtual y página web de la empresa"
---

1. ⭐ **Configurar una política de cookies y aviso legal**
   Una empresa debe cumplir con el RGPD en su página web. Instala el plugin "CookieYes" o "Complianz" en WordPress. Configúralo para que muestre un banner de cookies con las opciones "Rechazar", "Personalizar" y "Aceptar". Crea una página "Aviso Legal" con los textos obligatorios (identificación del titular, datos fiscales, condiciones de uso). Explica qué categorías de cookies debes declarar.

   **Solución:**
   ```text
   1. Instalar plugin "Complianz" → "Plugins" → "Añadir nuevo" → "Complianz | GDPR/CCPA Cookie Consent".
   2. Activar y seguir el asistente de configuración:
      - País: España
      - Tipo de consentimiento: "Opt-in" (consentimiento activo)
      - Registrar consentimiento: Sí
   3. Categorías de cookies a declarar:
      - Técnicas (necesarias): sesión, carrito, preferencias de idioma.
      - Analíticas: Google Analytics, estadísticas de visitas.
      - Marketing: cookies de terceros (redes sociales, anuncios).
   4. Diseño del banner: "Aceptar", "Rechazar", "Personalizar".
   5. Crear página "Aviso Legal":
      - Titular: [Nombre o Razón Social]
      - NIF/CIF: [Número]
      - Domicilio: [Dirección completa]
      - Correo electrónico: [email de contacto]
      - Datos registrales: [Registro Mercantil si procede]
      - Condiciones de uso: texto describiendo responsabilidades del usuario.
      - Política de privacidad y enlace a la política de cookies generada por el plugin.
   6. Vincular la página desde el banner de cookies en la configuración del plugin.
   ```
   **Salida esperada:**
   ```
   Banner de cookies visible con tres opciones. Página "Aviso Legal" creada y enlazada. Sitio conforme al RGPD.
   ```
   > **💡 Explicación:** El RGPD exige informar y obtener consentimiento antes de cargar cookies no técnicas. Declarar correctamente las categorías y ofrecer opciones de rechazo es obligatorio para evitar sanciones.

2. ⭐⭐ **Crear un certificado SSL autofirmado y configurarlo en un sitio local**
   Usando OpenSSL (o una herramienta gráfica como XAMPP), genera un certificado SSL autofirmado para un sitio WordPress local. Configura Apache para que sirva el sitio por HTTPS. Explica las diferencias entre un certificado autofirmado y uno emitido por una CA (Let's Encrypt, por ejemplo) y cuándo usar cada uno.

   **Solución:**
   ```text
   Generar certificado autofirmado con OpenSSL:
   1. Abrir terminal como administrador.
   2. Ejecutar:
      openssl req -new -x509 -days 365 -nodes -out server.crt -keyout server.key
      - Common Name: localhost (o la IP del servidor)
   3. Mover server.crt y server.key a C:\xampp\apache\conf\ssl\
   
   Configurar Apache (httpd-ssl.conf o vhost):
   4. <VirtualHost _default_:443>
      DocumentRoot "C:/xampp/htdocs/misitio"
      ServerName localhost
      SSLEngine on
      SSLCertificateFile "conf/ssl/server.crt"
      SSLCertificateKeyFile "conf/ssl/server.key"
      </VirtualHost>
   5. Reiniciar Apache desde el panel de XAMPP.
   6. Acceder a https://localhost (aparecerá advertencia de seguridad porque es autofirmado).
   
   Diferencias:
   - Autofirmado: gratuito, válido para pruebas internas, los navegadores muestran advertencia.
   - Let's Encrypt: gratuito, reconocido por navegadores, válido 90 días, renovación automática.
   - CA comercial: de pago, garantía jurídica, válido 1-2 años, soporte técnico.
   
   Recomendación: autofirmado para intranet local, Let's Encrypt para sitios públicos.
   ```
   **Salida esperada:**
   ```
   Sitio accesible por https://localhost con certificado autofirmado.
   ```
   > **💡 Explicación:** El SSL cifra la comunicación entre el navegador y el servidor. Aunque un certificado autofirmado no es válido para producción, es útil para entornos de pruebas internos donde no se requiere validación externa.

3. ⭐⭐ **Configurar un subdominio y redirigir a una subcarpeta**
   Una empresa tiene el dominio principal empresa.com y quiere crear el subdominio intranet.empresa.com que apunte a una subcarpeta del alojamiento. Configura el registro DNS correspondiente (tipo CNAME) y la redirección en el panel de control del hosting (cPanel o similar). Explica cómo verificar que la redirección funciona correctamente.

   **Solución:**
   ```text
   Configuración DNS:
   1. Acceder al panel de gestión de dominios (donde está registrado empresa.com).
   2. Ir a "Zona DNS" o "Gestión de DNS".
   3. Añadir registro:
      - Tipo: CNAME
      - Nombre: intranet
      - Destino: empresa.com (o la IP del servidor)
      - TTL: 3600 (1 hora)
   
   Configuración en el hosting (cPanel):
   4. Acceder a cPanel → "Subdominios".
   5. Crear subdominio: intranet.empresa.com
   6. Documento raíz: public_html/intranet (se crea la carpeta automáticamente).
   7. Subir los archivos de la intranet a la carpeta /public_html/intranet/.
   
   Redirección (opcional):
   8. Si se quiere redirigir intranet.empresa.com a una ruta concreta: cPanel → "Redirecciones" → tipo "Permanente (301)" → intranet.empresa.com → destino: empresa.com/intranet/
   
   Verificación:
   9. Usar el comando nslookup intranet.empresa.com para confirmar que resuelve a la IP correcta.
   10. Acceder a https://intranet.empresa.com y comprobar que carga el contenido de la subcarpeta.
   ```
   **Salida esperada:**
   ```
   Subdominio intranet.empresa.com resuelve y carga el contenido de la subcarpeta correctamente.
   ```
   > **💡 Explicación:** Los subdominios permiten organizar secciones del sitio web sin necesidad de dominios adicionales. El registro CNAME apunta el subdominio al dominio principal, y el panel de hosting asigna la carpeta correspondiente.

4. ⭐⭐⭐ **Automatizar copias de seguridad del sitio web con envío a la nube**
   Diseña un plan de copias de seguridad para un WordPress corporativo. Configura el plugin "UpdraftPlus" para que realice copias de seguridad completas (archivos + base de datos) cada noche a las 3:00 AM y las almacene en Google Drive. Configura también la retención de las últimas 10 copias. Describe qué hacer en caso de tener que restaurar el sitio desde una copia.

   **Solución:**
   ```text
   Configuración de UpdraftPlus:
   1. Instalar y activar "UpdraftPlus".
   2. Ir a "Ajustes" → "UpdraftPlus" → pestaña "Ajustes de respaldo".
   3. Programación de respaldo:
      - Archivos: "Cada 1 día" a las 03:00.
      - Base de datos: "Cada 1 día" a las 03:00.
   4. Destino de almacenamiento remoto: "Google Drive".
      - Autenticar con la cuenta corporativa de Google.
      - Seleccionar carpeta (o crearla: "Backups WordPress").
   5. Retención: "Mantener las últimas 10 copias de seguridad".
      - UpdraftPlus eliminará automáticamente las copias más antiguas al superar ese límite.
   6. Guardar cambios y ejecutar un respaldo manual de prueba ("Hacer copia de seguridad ahora").
   
   Plan de restauración:
   7. Acceder a "UpdraftPlus" → "Restaurar".
   8. Elegir la copia de seguridad deseada (por fecha).
   9. Marcar qué restaurar: "Archivos", "Base de datos" y "Plugins/Temas".
   10. Confirmar. UpdraftPlus descargará los archivos y los restaurará automáticamente.
   
   Buenas prácticas adicionales:
   - Probar la restauración en un entorno de pruebas al menos una vez al mes.
   - Mantener una copia local adicional en un disco externo.
   - Documentar el procedimiento de restauración para que cualquier administrador pueda ejecutarlo.
   ```
   **Salida esperada:**
   ```
   Copia de seguridad diaria automatizada en Google Drive con las últimas 10 versiones conservadas.
   ```
   > **💡 Explicación:** Las copias de seguridad automatizadas son la última barrera ante un ataque, fallo del servidor o error humano. Almacenarlas en la nube garantiza que estén disponibles incluso si el servidor principal queda inaccesible.

```

## 🧠 Tu turno como Knowledge Manager

### Escenario: La web que muestra información incorrecta

Un empleado de GesDoc Consulting te escribe: "Oye, en el portal del conocimiento pone que el procedimiento para solicitar vacaciones es enviar un correo a RRHH, pero eso cambió el mes pasado. Ahora se hace a través de una herramienta nueva. Varios compañeros han enviado correos a la antigua dirección y se han perdido solicitudes." Revisas el portal y efectivamente, hay 3 páginas con información desactualizada, una con un enlace roto y otra que muestra el organigrama de hace 2 años.

**Tu misión:** ¿Cómo solucionas la situación actual (corregir el contenido erróneo) y cómo evitas que vuelva a pasar? Propón un proceso de revisión y actualización de contenidos que funcione sin que te lleve todo tu tiempo.

> **Pistas para la reflexión:**
> - Un portal sin dueño es un portal muerto. Cada sección debe tener un responsable de contenido
> - Programa revisiones trimestrales con los responsables de cada área
> - Añade un aviso de "Última actualización: [fecha]" en cada página para que los usuarios sepan si el contenido está fresco
```
