################################################################################
# Package: SimG4Components
################################################################################
gaudi_subdir(SimG4Components v1r0)

# this declaration will not be needed in the future
gaudi_depends_on_subdirs(GaudiAlg FWCore Sim/SimG4Common DetectorDescription/DetDesInterfaces Sim/SimG4Interface)

find_package(Geant4)
include(${Geant4_USE_FILE})
find_package(DD4hep COMPONENTS DDG4)
find_package(ROOT COMPONENTS MathCore GenVector Geom REQUIRED)

gaudi_install_headers(SimG4Components)

gaudi_add_module(SimG4Components
                 src/*.cpp
                 INCLUDE_DIRS Geant4 FWCore SimG4Common SimG4Interface DD4hep ROOT
                 LINK_LIBRARIES GaudiAlgLib Geant4 FWCore SimG4Common DD4hep ROOT)


include(CTest)
gaudi_add_test(GeantFullSimHCal
                WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK tests/geant_fullsim_hcal.py)
gaudi_add_test(GeantFullSimECal
                WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK tests/geant_fullsim_ecal.py)
gaudi_add_test(GeantFullSimGdmlDetector
                 WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK tests/geant_fullsim_gdml.py)
gaudi_add_test(GeantFullSimMoreEvents
                 WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK tests/geant_fullsim_moreEvents.py)
