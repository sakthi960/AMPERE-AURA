Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Image]::FromFile('c:/mywebpage/image/sypra logo.png.png')
$newWidth = [math]::Round($img.Width * 1.5)
$newHeight = [math]::Round($img.Height * 1.5)
$bitmap = New-Object System.Drawing.Bitmap $newWidth, $newHeight
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$graphics.DrawImage($img, 0, 0, $newWidth, $newHeight)
$bitmap.Save('c:/mywebpage/image/sypra logo.png.png')
$img.Dispose()
$bitmap.Dispose()
$graphics.Dispose()
