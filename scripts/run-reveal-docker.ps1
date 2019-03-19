
param(
    [string]$image_id,
    [string]$cmd
  )

  IF ([string]::IsNullOrWhitespace($image_id)){
    Write-Host "Usage:  $image_id    <image name>    [optional command]"
    Write-Host "Missing Docker image id.  exiting"
    exit -1
  }

  $Command = "docker run -it --shm-size=1gb -p 2000:2000 -p 35729:35729 -v $(Get-Location):/home/ubuntu/work  $image_id  $cmd"

  Invoke-Expression  $Command.Replace("\", "/")
  
