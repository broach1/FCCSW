################################################################################
# Package: Generation
################################################################################
gaudi_subdir(Generation v1r0)

# this declaration will not be needed in the future
gaudi_depends_on_subdirs(GaudiAlg FWCore)

find_package(HepMC)
find_package(Pythia8 COMPONENTS pythia8 pythia8tohepmc)
find_package(FCCEDM)
find_package(PODIO)

gaudi_install_headers(Generation)

gaudi_add_module(Generation
                 src/components/*.cpp
                 INCLUDE_DIRS Generation HepMC Pythia8 FWCore FCCEDM PODIO
                 LINK_LIBRARIES HepMC GaudiAlgLib Pythia8 FCCEDM PODIO)

include(CTest)

gaudi_add_test(particleGun
               FRAMEWORK options/particleGun.py
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})

gaudi_add_test(PileUpReader
               FRAMEWORK options/pileup_hepmcreader.py)
