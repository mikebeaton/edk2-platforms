## @file
# platform build option configuration file.
#
# Copyright (c) 2017 - 2019, Intel Corporation. All rights reserved.<BR>
#
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

[BuildOptions]
# Define Build Options both for EDK and EDKII drivers.


  DEFINE DSC_S3_BUILD_OPTIONS =

  DEFINE DSC_CSM_BUILD_OPTIONS =

!if gSiPkgTokenSpaceGuid.PcdAcpiEnable == TRUE
  DEFINE DSC_ACPI_BUILD_OPTIONS = -DACPI_SUPPORT=1
!else
  DEFINE DSC_ACPI_BUILD_OPTIONS =
!endif

  DEFINE BIOS_GUARD_BUILD_OPTIONS =

  DEFINE OVERCLOCKING_BUILD_OPTION =

  DEFINE FSP_BINARY_BUILD_OPTIONS =

  DEFINE FSP_WRAPPER_BUILD_OPTIONS = -DFSP_WRAPPER_FLAG

  DEFINE SKIP_FSP_TEMPRAM_INIT_AND_EXIT_OPTIONS =

  DEFINE RESTRICTED_OPTION =


  DEFINE SV_BUILD_OPTIONS =

  DEFINE TEST_MENU_BUILD_OPTION =

!if gSiPkgTokenSpaceGuid.PcdOptimizeCompilerEnable == FALSE
  DEFINE OPTIMIZE_DISABLE_OPTIONS = -Od -GL-
!else
  DEFINE OPTIMIZE_DISABLE_OPTIONS =
!endif

  DEFINE UP_SERVER_SUPPORT_BUILD_OPTIONS =


  DEFINE TPM_BUILD_OPTION =

  DEFINE TPM2_BUILD_OPTION =

  DEFINE DSC_TBT_BUILD_OPTIONS =

  DEFINE DSC_DCTT_BUILD_OPTIONS =

  DEFINE EMB_BUILD_OPTIONS =

  DEFINE DSC_MEMORY_DOWN_BUILD_OPTIONS = -DMEM_DOWN_FLAG=1

  DEFINE DSC_KBCEMUL_BUILD_OPTIONS =

  DEFINE BOOT_GUARD_BUILD_OPTIONS =

  DEFINE SECURE_BOOT_BUILD_OPTIONS =

  DEFINE USBTYPEC_BUILD_OPTION =

  DEFINE CAPSULE_BUILD_OPTIONS =

  DEFINE PERFORMANCE_BUILD_OPTION =

  DEFINE DEBUGUSEUSB_BUILD_OPTION =

  DEFINE DISABLE_NEW_DEPRECATED_INTERFACES_BUILD_OPTION = -DDISABLE_NEW_DEPRECATED_INTERFACES=1

  DEFINE SINITBIN_BUILD_OPTION =

  DEFINE MINTREE_FLAG_BUILD_OPTION = -DMINTREE_FLAG=1

DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_SIPKG_FEATURE_BUILD_OPTIONS)  $(OVERCLOCKING_BUILD_OPTION) $(PERFORMANCE_BUILD_OPTION) $(EMB_BUILD_OPTIONS) $(BIOS_GUARD_BUILD_OPTIONS) $(DSC_TBT_BUILD_OPTIONS)
DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(BOOT_GUARD_BUILD_OPTIONS) $(DSC_MEMORY_DOWN_BUILD_OPTIONS) $(DEBUGUSEUSB_BUILD_OPTION) $(DSC_S3_BUILD_OPTIONS)
DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(FSP_BINARY_BUILD_OPTIONS) $(FSP_WRAPPER_BUILD_OPTIONS) $(SKIP_FSP_TEMPRAM_INIT_AND_EXIT_OPTIONS)
DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(DSC_KBCEMUL_BUILD_OPTIONS) $(CAPSULE_BUILD_OPTIONS) $(SECURE_BOOT_BUILD_OPTIONS) $(DSC_CSM_BUILD_OPTIONS) $(DISABLE_NEW_DEPRECATED_INTERFACES_BUILD_OPTION)
DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(TPM2_BUILD_OPTION) $(TPM_BUILD_OPTION) $(DSC_DCTT_BUILD_OPTIONS)
DEFINE DSC_PLTPKG_FEATURE_BUILD_OPTIONS = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(DSC_ACPI_BUILD_OPTIONS) $(UP_SERVER_SUPPORT_BUILD_OPTIONS) $(USBTYPEC_BUILD_OPTION) $(SINITBIN_BUILD_OPTION) $(MINTREE_FLAG_BUILD_OPTION)

[BuildOptions.Common.EDKII]

#
# For IA32 Global Build Flag
#
       *_*_IA32_CC_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015 -DASF_PEI
       *_*_IA32_VFRPP_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_IA32_APP_FLAGS     = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_IA32_ASLPP_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_IA32_ASLCC_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_IA32_NASM_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)

#
# For IA32 Specific Build Flag
#
GCC:   *_*_IA32_PP_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
GCC:   *_*_IA32_CC_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015 -DASF_PEI -Wno-unused -Wl,--allow-multiple-definition
MSFT:  *_*_IA32_ASM_FLAGS     = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
MSFT:  *_*_IA32_CC_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015 -DASF_PEI
MSFT:  *_*_IA32_VFRPP_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)
MSFT:  *_*_IA32_APP_FLAGS     = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)
MSFT:  *_*_IA32_ASLPP_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)
MSFT:  *_*_IA32_ASLCC_FLAGS   = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)

#
# For X64 Global Build Flag
#
       *_*_X64_CC_FLAGS       = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015
       *_*_X64_VFRPP_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_X64_APP_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_X64_ASLPP_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_X64_ASLCC_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
       *_*_X64_NASM_FLAGS     = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)


#
# For X64 Specific Build Flag
#
GCC:   *_*_X64_PP_FLAGS       = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
GCC:   *_*_X64_CC_FLAGS       = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015 -Wno-unused -Wl,--allow-multiple-definition
MSFT:  *_*_X64_ASM_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
MSFT:  *_*_X64_CC_FLAGS       = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS) -D PI_SPECIFICATION_VERSION_MAJOR_REVISION=0x0001 -D PI_SPECIFICATION_VERSION_MINOR_REVISION=0x0015
MSFT:  *_*_X64_VFRPP_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)
MSFT:  *_*_X64_APP_FLAGS      = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS) $(OPTIMIZE_DISABLE_OPTIONS)
MSFT:  *_*_X64_ASLPP_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)
MSFT:  *_*_X64_ASLCC_FLAGS    = $(DSC_PLTPKG_FEATURE_BUILD_OPTIONS)


# Force PE/COFF sections to be aligned at 4KB boundaries to support page level protection
[BuildOptions.common.EDKII.DXE_SMM_DRIVER, BuildOptions.common.EDKII.SMM_CORE]
  MSFT:*_*_*_DLINK_FLAGS = /ALIGN:4096
  GCC:*_*_*_DLINK_FLAGS = -z common-page-size=0x1000
  
# Force PE/COFF sections to be aligned at 4KB boundaries to support MemoryAttribute table
[BuildOptions.common.EDKII.DXE_RUNTIME_DRIVER]
  MSFT:*_*_*_DLINK_FLAGS = /ALIGN:4096
  GCC:*_*_*_DLINK_FLAGS = -z common-page-size=0x1000

# Force PE/COFF sections to be aligned at 4KB boundaries to support NX protection
[BuildOptions.common.EDKII.DXE_DRIVER, BuildOptions.common.EDKII.DXE_CORE, BuildOptions.common.EDKII.UEFI_DRIVER, BuildOptions.common.EDKII.UEFI_APPLICATION]
  #MSFT:*_*_*_DLINK_FLAGS = /ALIGN:4096
  #GCC:*_*_*_DLINK_FLAGS = -z common-page-size=0x1000

