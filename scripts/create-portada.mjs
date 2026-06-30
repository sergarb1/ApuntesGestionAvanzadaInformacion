import sharp from 'sharp';
import { readFileSync, writeFileSync } from 'fs';

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
  <defs>
    <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#0a1628"/>
      <stop offset="50%" stop-color="#1a3a5c"/>
      <stop offset="100%" stop-color="#0d2137"/>
    </linearGradient>
    <linearGradient id="accent" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="#2e86c1"/>
      <stop offset="100%" stop-color="#85c1e9"/>
    </linearGradient>
  </defs>
  <rect width="1200" height="630" fill="url(#bg)"/>
  <!-- Patrón de puntos decorativo -->
  <g opacity="0.03">
    ${Array.from({length: 50}, (_, i) => {
      const x = (i % 10) * 130 + 65;
      const y = Math.floor(i / 10) * 140 + 70;
      return `<circle cx="${x}" cy="${y}" r="3" fill="#ffffff"/>`;
    }).join('')}
  </g>
  <!-- Círculo decorativo grande -->
  <circle cx="950" cy="315" r="280" fill="none" stroke="rgba(46,134,193,0.06)" stroke-width="60"/>
  <circle cx="900" cy="300" r="180" fill="none" stroke="rgba(46,134,193,0.04)" stroke-width="40"/>
  <!-- Icono Knowledge Manager -->
  <rect x="80" y="220" width="100" height="100" rx="16" fill="rgba(46,134,193,0.15)"/>
  <text x="130" y="265" font-family="Calibri, Arial, sans-serif" font-size="12" font-weight="600" fill="#85c1e9" text-anchor="middle">KNOWLEDGE</text>
  <text x="130" y="295" font-family="Calibri, Arial, sans-serif" font-size="14" font-weight="700" fill="#ffffff" text-anchor="middle">MANAGER</text>
  <!-- Título -->
  <text x="230" y="270" font-family="Calibri, Arial, sans-serif" font-size="52" font-weight="700" fill="#ffffff">Gestión Avanzada</text>
  <text x="230" y="330" font-family="Calibri, Arial, sans-serif" font-size="52" font-weight="700" fill="#ffffff">de la Información</text>
  <!-- Subtítulo -->
  <rect x="230" y="360" width="80" height="3" rx="1.5" fill="#2e86c1"/>
  <text x="230" y="390" font-family="Calibri, Arial, sans-serif" font-size="18" fill="#85c1e9" letter-spacing="3">CFGS ASISTENCIA A LA DIRECCIÓN · MÓDULO 0663</text>
  <!-- Knowledge Manager label -->
  <rect x="230" y="410" width="220" height="32" rx="16" fill="rgba(46,134,193,0.12)"/>
  <text x="340" y="431" font-family="Calibri, Arial, sans-serif" font-size="15" fill="#85c1e9" text-anchor="middle" font-weight="600">Knowledge Manager</text>
  <!-- Autor -->
  <text x="80" y="560" font-family="Calibri, Arial, sans-serif" font-size="14" fill="rgba(255,255,255,0.3)">CC BY-SA 4.0 — Sergi Garcia Barea</text>
</svg>`;

writeFileSync('portada.svg', svg);

await sharp('portada.svg')
  .resize(1200, 630)
  .png()
  .toFile('portada.png');

console.log('✓ portada.png created');
