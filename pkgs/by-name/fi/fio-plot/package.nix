{ lib
, buildPythonApplication
, fetchFromGitHub
, tornado
, python-daemon
, hatchling
, python
}:

python.pkgs.buildPythonApplication rec {
  pname = "fio-plot";
  version = "1.1.16";
  format = "setuptools";

#  pyproject = true;

  src = fetchFromGitHub {
    owner = "louwrentius";
    repo = "fio-plot";
    tag = "v${version}";
    #hash = "sha256-fLfAGDKn6AWHJKsgQ0fBYdN6mGfZNrVs9n6Zo9VRgIY=";
    hash = lib.fakeHash;
  };

  dependencies = [
    distutils
  ];

#  meta = with lib; {
#    ...
#  };
}
