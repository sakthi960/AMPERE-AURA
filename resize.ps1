Add-Type -AssemblyName System.Drawing

try {
    $img = [System.Drawing.Image]::FromFile('c:/mywebpage/image/college-name.png')
    Write-Host "Original Width: $($img.Width), Height: $($img.Height)"
    $newWidth = [math]::Round($img.Width * 2)
    $newHeight = [math]::Round($img.Height * 2)
    Write-Host "New Width: $newWidth, Height: $newHeight"
    $bitmap = New-Object System.Drawing.Bitmap $img, $newWidth, $newHeight
    $bitmap.Save('c:/mywebpage/image/college-name_resized.png', [System.Drawing.Imaging.ImageFormat]::Png)
    Write-Host "Image resized and saved as college-name_resized.png"
} catch {
    Write-Host "Error: $($_.Exception.Message)"
} finally {
    if ($img) { $img.Dispose() }
    if ($bitmap) { $bitmap.Dispose() }
}
