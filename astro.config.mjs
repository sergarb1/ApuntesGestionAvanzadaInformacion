import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

export default defineConfig({
  site: 'https://sergarb1.github.io',
  base: '/ApuntesGestionAvanzadaInformacion',
  integrations: [
    starlight({
      title: 'Apuntes Gestión Avanzada de la Información',
      description: 'Curso completo de Gestión Avanzada de la Información para CFGS Asistencia a la Dirección. Knowledge Management. CC BY-SA 4.0 — Sergi Garcia Barea',
      customCss: [
        './src/styles/custom.css',
        '@fontsource/geist-sans',
      ],
      locales: {
        root: { label: 'Español', lang: 'es' },
      },
      defaultLocale: 'root',
      social: [
        { icon: 'github', label: 'GitHub', href: 'https://github.com/sergarb1/ApuntesGestionAvanzadaInformacion' },
      ],
      head: [
        { tag: 'script', content: "document.documentElement.dataset.theme='light'" },
        { tag: 'meta', attrs: { name: 'theme-color', content: '#1a5276' } },
        { tag: 'link', attrs: { rel: 'icon', type: 'image/svg+xml', href: '/ApuntesGestionAvanzadaInformacion/favicon.svg' } },
        { tag: 'link', attrs: { rel: 'alternate icon', type: 'image/png', href: '/ApuntesGestionAvanzadaInformacion/favicon.png' } },
      ],
      sidebar: [
        {
          slug: 'index',
          label: 'Inicio',
        },
        {
          label: '📚 Unidades',
          items: [
            { slug: '01-gestion-proyectos-knowledge-management', label: '📋 1. Gestión de proyectos empresariales. El valor del conocimiento' },
            { slug: '02-planificacion-seguimiento-proyectos', label: '📊 2. Planificación y seguimiento de proyectos con herramientas digitales' },
            { slug: '03-documentos-profesionales-ofimatica', label: '📝 3. Documentos profesionales con Word, Excel y PowerPoint' },
            { slug: '04-informes-empresariales-datos-graficos', label: '📈 4. Informes empresariales: datos, gráficos y comunicaciones' },
            { slug: '05-videos-corporativos-audiovisual', label: '🎬 5. Creación de vídeos corporativos y contenido audiovisual' },
            { slug: '06-comunicacion-trabajo-equipo-web', label: '🌐 6. Comunicación y trabajo en equipo con herramientas web' },
            { slug: '07-oficina-virtual-pagina-web', label: '🏢 7. Oficina virtual y página web de la empresa' },
            { slug: '08-archivo-digital-gestion-documental', label: '🗂️ 8. Archivo digital: cómo organizar los documentos de la empresa' },
            { slug: '09-flujos-trabajo-custodia-legal', label: '🔐 9. Flujos de trabajo, custodia de documentos y normativa legal' },
            { slug: '10-proyecto-knowledge-management-i', label: '🧩 10. Proyecto Knowledge Management (I)' },
            { slug: '11-proyecto-knowledge-management-ii', label: '🏁 11. Proyecto Knowledge Management (II)' },
          ],
        },
        {
          label: '📝 Boletines',
          items: ['📋','📊','📝','📈','🎬','🌐','🏢','🗂️','🔐','🧩'].flatMap((emoji, i) => {
            const n = i + 1, nn = String(n).padStart(2,'0');
            return [{
              label: `${emoji} Boletín Unidad ${nn}`,
              items: [
                { slug: `boletin-${nn}-facil-resuelto`, label: '✅ Fácil resuelto' },
                { slug: `boletin-${nn}-facil`, label: '🟢 Fácil por resolver' },
                { slug: `boletin-${nn}-avanzado-resuelto`, label: '💪 Avanzado resuelto' },
                { slug: `boletin-${nn}-avanzado`, label: '📝 Avanzado por resolver' },
              ],
            }];
          }),
        },
        {
          label: '📁 Proyectos',
          items: ['📋','📊','📝','📈','🎬','🌐','🏢','🗂️','🔐','🧩'].map((emoji, i) => {
            const n = i + 1, nn = String(n).padStart(2,'0');
            return { slug: `proyecto-${nn}`, label: `${emoji} Proyecto Unidad ${nn}` };
          }),
        },
      ],
    }),
  ],
});
