from Gaudi.Configuration import *

from Configurables import ApplicationMgr, FCCDataSvc

albersevent   = FCCDataSvc("EventDataSvc")
# reads HepMC text file and write the HepMC::GenEvent to the data service
from Configurables import HepMCReader, HepMCDumper, PoissonPileUp, HepMCFileReader, FlatSmearVertex

# assuming mm
smeartool = FlatSmearVertex(
    xVertexMin = -0.5,
    xVertexMax = 0.5,
    yVertexMin = -0.5,
    yVertexMax = 0.5,
    zVertexMin = -35,
    zVertexMax = 35 )

genpileup = PoissonPileUp(name="Pileup", 
    Filename="/afs/cern.ch/exp/fcc/sw/0.6/testsamples/example_MyPythia.dat",
    numPileUpEvents=2)
reader = HepMCReader("Reader", 
    Filename="/afs/cern.ch/exp/fcc/sw/0.6/testsamples/example_MyPythia.dat",
    PileUpTool=genpileup,
    VertexSmearingTool = smeartool)
reader.DataOutputs.hepmc.Path = "hepmc"

# printout of the hepmc stuff
dumper = HepMCDumper()
dumper.DataInputs.hepmc.Path="hepmc"

ApplicationMgr(
    TopAlg = [reader, dumper],
    EvtSel = 'NONE',
    EvtMax   = 1,
    ExtSvc = [albersevent],
 )

