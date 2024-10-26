BoardMtOlympus - Builds fully
  - Was 'FvLateSilicon.Fv is not found in packages path' at end of build
    o Passing args to python late in build is stuffed
BoardX58Ich10 - Gets to '/usr/bin/ld: cannot find /FILEALIGN:4096: No such file or directory' if we disable PcdNetworkFeatureEnable and PcdSmbiosFeatureEnable in OpenBoardPkgPcd.dsc
BoardX58Ich10X64 - Same file to modify, gives same error as above
AspireVn7Dash572G - If we disable PcdS3FeatureEnable and PcdSmbiosFeatureEnable in OpenBoardPkgPcd.dsc we get to another error
GalagoPro3 - Builds fully
KabylakeRvp3 - Builds fully, but warns lots of PCDs missing at start
UpXtreme - Builds fully
WhiskeylakeURvp - Builds fully
CometlakeURvp - Builds fully
TigerlakeURvp - Builds fully
CooperCityRvp - Builds fully
WilsonCityRvp - Builds fully
BoardTiogaPass - Builds fully if we disable PcdIpmiFeatureEnable, PcdSmbiosFeatureEnable, PcdNetworkFeatureEnable in PlatformPkgPcd.dsc
  - Was 'FvLateSilicon.Fv is not found in packages path' at end of build
    o Passing args to python late in build is stuffed
JunctionCity - Builds fully if we disable PcdIpmiFeatureEnable and PcdNetworkFeatureEnable in PlatformPkg.dsc
Aowanda - Builds fully if we disable PcdIpmiFeatureEnable and PcdNetworkFeatureEnable in PlatformPkg.dsc
AlderlakePRvp - Builds fully