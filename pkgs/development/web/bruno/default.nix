{ lib, buildNpmPackage, fetchFromGitHub, ... }:
buildNpmPackage rec {
  pname = "bruno";
  version = "0.21.1";

  src = fetchFromGitHub {
    owner = "usebruno";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-63jfgDyU/dzQ2WbB6oPXBRhDij4PLEyOdjM2Ad7hifQ=";
  };

  npmDepsHash = "sha256-aEG1cEGpTXOdBN03/VVdmyarlX3ZJ37x5MTGRdrU5t8=";

  meta = with lib; {
    description = "A modern web UI for various torrent clients with a Node.js backend and React frontend";
    homepage = "https://flood.js.org";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ winter ];
  };
}

