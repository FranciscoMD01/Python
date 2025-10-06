# Solicita mensaje para el commit
$m = Read-Host -Prompt "Introduce un mensaje para el commit"

# Verifica si hay cambios
git status

# Añade todos los cambios
git add .

# Hace commit con el mensaje dado
git commit -m "$m"

# Intenta hacer pull por si hay cambios en GitHub
git pull origin main --allow-unrelated-histories

# Sube los cambios forzadamente a main
git push --force origin main

# Mensaje final
Write-Host "`n✅ Repositorio sincronizado con GitHub."
