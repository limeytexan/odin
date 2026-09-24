{ runCommand }:
runCommand "Flox-Systems-Odin-1" { pname = "Flox-Systems-Odin"; version = "1"; } ''
  sleep 8
  mkdir -p "$out/share"
  printf '%s\n' "perlPackages.Flox-Systems-Odin" > "$out/share/name"
''
