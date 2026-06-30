---
title: "Boletín 07 - Nivel Avanzado: Oficina virtual y página web de la empresa"
---

1. ⭐ **Configurar una política de cookies y aviso legal**
   Una empresa debe cumplir con el RGPD en su página web. Instala el plugin "CookieYes" o "Complianz" en WordPress. Configúralo para que muestre un banner de cookies con las opciones "Rechazar", "Personalizar" y "Aceptar". Crea una página "Aviso Legal" con los textos obligatorios (identificación del titular, datos fiscales, condiciones de uso). Explica qué categorías de cookies debes declarar.

   > 💡 **Pista:** Después de instalar el plugin de cookies, sigue el asistente de configuración seleccionando España como país. El banner se personaliza en "Diseño". La página de aviso legal debe incluir datos fiscales, registro mercantil y condiciones de uso.

2. ⭐⭐ **Crear un certificado SSL autofirmado y configurarlo en un sitio local**
   Usando OpenSSL (o una herramienta gráfica como XAMPP), genera un certificado SSL autofirmado para un sitio WordPress local. Configura Apache para que sirva el sitio por HTTPS. Explica las diferencias entre un certificado autofirmado y uno emitido por una CA (Let's Encrypt, por ejemplo) y cuándo usar cada uno.

   > 💡 **Pista:** El comando openssl req -new -x509 genera el certificado y la clave. Luego edita el archivo httpd-ssl.conf para apuntar a esos archivos. Recuerda que los navegadores mostrarán advertencia de seguridad al ser autofirmado.

3. ⭐⭐ **Configurar un subdominio y redirigir a una subcarpeta**
   Una empresa tiene el dominio principal empresa.com y quiere crear el subdominio intranet.empresa.com que apunte a una subcarpeta del alojamiento. Configura el registro DNS correspondiente (tipo CNAME) y la redirección en el panel de control del hosting (cPanel o similar). Explica cómo verificar que la redirección funciona correctamente.

   > 💡 **Pista:** El registro CNAME en la zona DNS apunta el subdominio al dominio principal. En cPanel, crea el subdominio y especifica la carpeta de destino. Usa nslookup para verificar la resolución DNS.

4. ⭐⭐⭐ **Automatizar copias de seguridad del sitio web con envío a la nube**
   Diseña un plan de copias de seguridad para un WordPress corporativo. Configura el plugin "UpdraftPlus" para que realice copias de seguridad completas (archivos + base de datos) cada noche a las 3:00 AM y las almacene en Google Drive. Configura también la retención de las últimas 10 copias. Describe qué hacer en caso de tener que restaurar el sitio desde una copia.

   > 💡 **Pista:** En UpdraftPlus, programa los respaldos en la pestaña "Ajustes de respaldo". Para Google Drive, necesitarás autenticar la cuenta. La retención se configura en el mismo panel. No olvides probar la restauración — la copia solo sirve si puedes recuperar los datos.
