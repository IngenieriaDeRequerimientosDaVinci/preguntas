function Get-DirectoryTree {
    param (
        [string]$rootPath,
        [string]$indent = ""
    )

    # Obtener las carpetas en el directorio actual
    $folders = Get-ChildItem -Path $rootPath -Directory

    foreach ($folder in $folders) {
        # Imprimir el nombre de la carpeta con la indentación
        Write-Host "$indent+ $($folder.Name)"

        # Llamada recursiva para listar subcarpetas
        Get-DirectoryTree -rootPath $folder.FullName -indent ("    " + $indent)
    }
}

# Especificar la ruta de la carpeta raíz
$rootFolderPath = "." # Cambia esto por tu ruta

# Llamar a la función con la carpeta raíz
Get-DirectoryTree -rootPath $rootFolderPath
