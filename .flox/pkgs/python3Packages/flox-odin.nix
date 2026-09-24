{ runCommand, catalogs }:
let
  dep_python3Packages_flox_common = catalogs.brantley.python3Packages.flox-common;
  dep_python3Packages_flox_storage = catalogs.brantley.python3Packages.flox-storage;
  dep_python3Packages_flox_zookeeper = catalogs.brantley.python3Packages.flox-zookeeper;
  dep_python3Packages_metis_client = catalogs.brantley.python3Packages.metis-client;
  dep_python3Packages_mimir_client = catalogs.brantley.python3Packages.mimir-client;
  dep_python3Packages_svcdirector = catalogs.brantley.python3Packages.svcdirector;
in
runCommand "flox-odin-1" { pname = "flox-odin"; version = "1"; inputs = [ dep_python3Packages_flox_common dep_python3Packages_flox_storage dep_python3Packages_flox_zookeeper dep_python3Packages_metis_client dep_python3Packages_mimir_client dep_python3Packages_svcdirector ]; } ''
  sleep 9
  mkdir -p "$out/share"
  printf '%s\n' "python3Packages.flox-odin" > "$out/share/name"
  for i in $inputs; do printf '%s\n' "$i"; done > "$out/share/inputs"
''
