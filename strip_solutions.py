import re, os

docs_dir = "src/content/docs"

# Nuevo formato con badge HTML: <span class="solucion-label">✅ Solución:</span>\n\n```[lang]\n...\n```
pat_sol = re.compile(
    r'<span class="solucion-label">✅ Solución:</span>\s*\n\n```[a-z]*\n.*?\n```\s*\n?',
    re.DOTALL
)
# Viejo formato por si queda algún residual: **Solución:**\n```\n...\n```
pat_sol_old = re.compile(r'\*\*Solución:\*\*\s*\n```[a-z]*\n.*?\n```\s*\n?', re.DOTALL)
# Badge Salida esperada + texto hasta el siguiente aside o ejercicio
pat_salida = re.compile(
    r'<span class="salida-label">📋 Salida esperada:</span>.*?(?=\n<aside|\n## )',
    re.DOTALL
)
pat_details = re.compile(r'<details>.*?</details>\s*\n?', re.DOTALL)

total = 0
for root, dirs, files in os.walk(docs_dir):
    for fname in files:
        if fname.endswith("-resuelto.md") and not fname.endswith("-facil-resuelto.md"):
            path = os.path.join(root, fname)
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
            new = pat_sol.sub('', content)
            new = pat_sol_old.sub('', new)
            new = pat_salida.sub('', new)
            new = pat_details.sub('', new)
            if new != content:
                with open(path, 'w', encoding='utf-8') as f:
                    f.write(new)
                rel = os.path.relpath(path, docs_dir)
                print(f"OK {rel}")
                total += 1
            else:
                rel = os.path.relpath(path, docs_dir)
                print(f".. {rel}")

print(f"\nModificados: {total} archivos")
