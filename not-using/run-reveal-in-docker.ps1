
param(
    [string]$image_id,
    [string]$ES_HOME,
    [string]$cmd
  )

  IF ([string]::IsNullOrWhitespace($image_id)){
    Write-Host "Usage:  $image_id    <image name>    [optional command]"
    Write-Host "Missing Docker image id.  Exiting."
    exit -1
  }

  IF ([string]::IsNullOrWhitespace($ES_HOME)){
    Write-Host "ES_HOME is not defined.  Exiting."
    exit -1
  }

  $Command = "docker run -it --shm-size=1gb -p 2000:2000 -p 35729:35729 -v $(Get-Location):/home/ubuntu/work -v $ES_HOME/utils:/home/ubuntu/utils  $image_id  $cmd"
  Write-Host $Command.Replace("\", "/")
  Invoke-Expression  $Command.Replace("\", "/")
  
