# Función para contar cuántas instancias de un proceso están activas

function Compara {
    param (
        [string]$nombre
    )

    $contador = 0
    $p = Get-Process
    $l = $p.Length

    for ($i = 0; $i -lt $l; $i++) {
        $n = $p[$i].ProcessName
        if ($n -eq $nombre) {
            $contador++
        }
    }

    return $contador
}

# Solicita al usuario el nombre del proceso
$nombre = Read-Host -Prompt "Nombre del proceso"

# Llama a la función
$contador = Compara -nombre $nombre

# Muestra el resultado
Write-Host "Hay $contador instancia(s) de '$nombre'"
