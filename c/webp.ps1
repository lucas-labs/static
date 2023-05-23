# tip: on windows explorer shift + right-click a directory and copy its path
$source = "raw/"
$dest = "bg"

# get all files in the directory
$images = Get-ChildItem $dir -include *.png,*.jpg -recurse

foreach ($img in $images) {
  # output file will be written in the same directory 
  # but with .webp extension instead of old extension
  $outputName = $dest + "\" + $img.BaseName + ".webp"

  cwebp $img.FullName -o $outputName
}
