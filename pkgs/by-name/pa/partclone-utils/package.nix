{
  autoreconfHook,
  fetchurl,
  lib,
  stdenv,
  ...
}:
let
  pname = "partclone-utils";
  version = "0.4.3";
in
stdenv.mkDerivation {
  inherit pname version;
  src = fetchurl {
    url = "mirror://sourceforge/partclone-utils/${pname}-${version}.tar.gz";
    sha256 = "sha256-HcmLT48mz9FmdO31Ti4uOT78tLEml4ezYWyp5fltkDA=";
  };

  nativeBuildInputs = [ autoreconfHook ];

  meta = {
    license = lib.licenses.gpl2;
    maintainers = [ lib.maintainers.johnrichardrinehart ];
    mainProgram = "imagemount";
  };
}
