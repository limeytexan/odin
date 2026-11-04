# odin

Mock package repository reproducing part of a customer build graph for
FloxHub Factory demonstrations. Each package sleeps for a fixed number of
seconds and writes its name and the store paths of its catalog inputs.

| package | build time | catalog inputs |
|---|---|---|
| `perlPackages.Flox-Systems-Odin` | 8 s |  |
| `python3Packages.flox-odin` | 9 s | `flox`, `python3Packages.flox-common`, `python3Packages.flox-hostinfo`, `python3Packages.flox-storage`, `python3Packages.flox-zookeeper`, `python3Packages.metis-client`, `python3Packages.mimir-client`, `python3Packages.srv-lookup`, `python3Packages.svcdirector` |
