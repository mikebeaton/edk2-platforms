BoardMtOlympus - 'FvLateSilicon.Fv is not found in packages path at end of build'
BoardX58Ich10 - Gets to '/usr/bin/ld: cannot find /FILEALIGN:4096: No such file or directory' if we disable PcdNetworkFeatureEnable and PcdSmbiosFeatureEnable in OpenBoardPkgPcd.dsc
BoardX58Ich10X64 - Same file to modify, gives same error as above
AspireVn7Dash572G - If we disable PcdS3FeatureEnable and PcdSmbiosFeatureEnable in OpenBoardPkgPcd.dsc we get to another error
GalagoPro3 - Builds fully
KabylakeRvp3 - Warns lots of PCDs missing at start; builds fully
UpXtreme - Builds fully
WhiskeylakeURvp - Builds fully
CometlakeURvp - Builds fully
TigerlakeURvp - Builds fully
CooperCityRvp - Builds fully
WilsonCityRvp - Builds fully
BoardTiogaPass - Gets to late message 'FvLateSilicon.Fv is not found in packages path' if we disable PcdIpmiFeatureEnable, PcdSmbiosFeatureEnable, PcdNetworkFeatureEnable in PlatformPkgPcd.dsc
JunctionCity - Builds fully if we disable PcdIpmiFeatureEnable and PcdNetworkFeatureEnable in PlatformPkg.dsc
Aowanda - Builds fully if we disable PcdIpmiFeatureEnable and PcdNetworkFeatureEnable in PlatformPkg.dsc
AlderlakePRvp - Builds fully