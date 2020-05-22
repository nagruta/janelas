if ($args.Count -lt 1) {
  exit
}
if (-not (Test-Path $args[0])) {
  mkdir -p $args[0]
}