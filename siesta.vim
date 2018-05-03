" Vim syntax file
" Language: 		Siesta FDF script file
" Author: 		Arthur France-Lanord <arthur.flanord@gmail.com>
" Updates: 		
" Latest Revision: 	2016-04-14

func! CP(word) 			" fdf labels do not care about . _ or -
    let l:s = a:word[0]
    for i in range(1,len(a:word))
        let l:s .= '[\._-]*' . a:word[i]
    endfor
    return l:s
endf

syn clear
syn case	ignore 		" fdf isn't case sensitive


syn match 	siestaBoolean 	"\.\(true\|false\)\."
syn match 	siestaBoolean 	"\(\s\|^\)[tf]\($\|\s\)"
syn keyword 	siestaBoolean 	true false yes no

syn keyword 	siestaUnits 	erg hartee mhartree hz thz
syn keyword 	siestaUnits 	kg amu nm fs ps ns
syn keyword 	siestaUnits 	pa mpa gpa atm bar mbar debye
syn keyword 	siestaUnits 	mins hours days ps

syn keyword 	siestaUnits 	ScaledCartesian
syn keyword 	siestaUnits 	Fractional
syn keyword 	siestaUnits 	ScaledByLatticeVectors

syn match 	siestaUnits 	"\<NotScaledCartesian\(Bohr\|Ang\)\>"

syn match 	siestaUnits 	"\(\s\|^\)[jkgmsnced]\($\|\s\)"

syn match 	siestaUnits 	"\(\s\|^\)\(ev\|ry\|bohr\|mev\|deg\|rad\|cm\|ang\)\($\|\s\)"

syn match 	siestaUnits 	"\(kcal\|kj\)\/mol"
syn match 	siestaUnits 	"ev\/ang\|ry\/bohr"
syn match 	siestaUnits 	"v\/\(m\|nm\|ang\|bohr\)"
syn match 	siestaUnits 	"\(ry\/bohr\|har\/bohr\)\/e"
syn match 	siestaUnits 	"\(\(ev\|ry\|mev\|mry\)\/\(deg\|rad\)\)"
syn match 	siestaUnits 	"c\*m"
syn match 	siestaUnits 	"e\*\(bohr\|ang\)"
syn match 	siestaUnits 	"cm\(-\|\^-\|\*\*-\)1"
syn match 	siestaUnits 	"\(ry\/bohr\|ev\/ang\)\*\*3"
syn match 	siestaUnits 	"\(kg\*m\|ry\*fs\)\*\*2"
syn match 	siestaUnits 	"pi\/a"

" std int
syn match 	siestaInt 	"-\=\<\d\+\>"
" float finishing with a dot
syn match 	siestaFloat 	"-\=\<\d\+\(\.$\|\.\s\)"
" more std floats
syn match	siestaFloat	"-\=\<\d\+\.\d*\([ed][-+]\=\d\+\)\=\>"
syn match 	siestaFloat 	"\(\s\|^\)\.\d\+\([ed][-+]\=\d\+\)\=\>"
syn match 	siestaFloat 	"\<\d\+[ed][-+]\=\d\+\>"

syn match 	siestaComment 	"#\(.*&\s*\n\)*.*$"
syn match 	siestaDirective	"%\w*"

"
" input/output keywords
"

exe 'syn match	siestaOutput	/\<'.CP('WriteCoorXmol').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteCoorCerius').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteMDXmol').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('MDUseSaveXV').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('MDUseSaveZM').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteKpoints').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('DMUseSaveDM').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('DMFormattedFiles').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('DMFormattedInput').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('DMFormattedOutput').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('SCFReadChargeNetCDF').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SCFReadDeformationChargeNetCDF').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteDM').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteDMNetCDF').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteDMHSNetCDF').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteDMHistoryNetCDF').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteDMHSHistoryNetCDF').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('SaveHS').'\>/'


exe 'syn match	siestaOutput	/\<'.CP('WriteEigenvalues').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('LongOutput').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('OMMWriteCoeffs').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('OMMReadCoeffs').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('OMMLongOutput').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('ONUseSaveLWF').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteKbands').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteBands').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WFSWriteForBands').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WFSBandMin').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WFSBandMax').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WaveFuncKPointsScale').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WaveFuncKPoints').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteWaveFunctions').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteMullikenPop').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('MullikenInSCF').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteHirshfeldPop').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteVoronoiPop').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('COOPWrite').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WFSEnergyMin').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WFSEnergyMax').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90WriteMmn').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90WriteAmn').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90WriteEig').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90WriteUnk').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90UnkGrid1').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90UnkGrid2').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90UnkGrid3').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90UnkGridBinary').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90NumberOfBands').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90NumberOfBandsUp').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('Siesta2Wannier90NumberOfBandsDown').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('SaveRho').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveDeltaRho').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveRhoXC').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveElectrostaticPotential').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveNeutralAtomPotential').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveTotalPotential').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveIonicCharge').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveTotalCharge').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveBaderCharge').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('SaveInitialChargeDensity').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('AllocReportLevel').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('AllocReportThreshold').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TimerReportThreshold').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('UseSaveData').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteDenchar').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteIonPlotFiles').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('MDUseSaveCG').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('WriteCoorInitial').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteCoorStep').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteForces').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('WriteMDhistory').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('TSSaveHS').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSReUseGF').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSHSFileLeft').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSHSFileRight').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSGFFileLeft').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSGFFileRight').'\>/'

exe 'syn match	siestaOutput	/\<'.CP('TSTBTCOOP').'\>/'
exe 'syn match	siestaOutput	/\<'.CP('TSTBTAtomPDOS').'\>/'

"
" general fdf keywords
"
exe 'syn match 	siestaKeys 	/\<'.CP('atom').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('SystemName').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SystemLabel').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NumberOfSpecies').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NumberOfAtoms').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ChemicalSpeciesLabel').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('AtomicMass').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('DiagAllInOne').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagDivideAndConquer').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagNoExpert').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagPreRotate').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagUse2D').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagParallelOverK').'\>/'
exe 'syn match	siestaKeys	/\<'.CP('DiagUseNewDiagk').'\>/'

" Diagonalization keys introduced in 4.1
exe 'syn match 	siestaKeys 	/\<'.CP('DiagAlgorithm').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagProcessorY').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagBlockSize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagAbsTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagOrFac').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagUpperLower').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('PAOBasis').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOBasisType').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOBasisSize').'[\._-]*s\=\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOBasisType').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOEnergyShift').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOSplitNorm').'[\._-]*H\=\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAONewSplitCode').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOFixSplitTable').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOSplitTailNorm').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOEnergyCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOEnergyPolCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOContractionCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOSoftDefault').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOSoftInnerRadius').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOSoftPotential').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PAOOldStylePolOrbs').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('PSlmax').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PSKBprojectors').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('KBNewReferenceOrbitals').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('FilterCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('FilterTol').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('UserBasis').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('UserBasisNetCDF').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('BasisPressure').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('ReparametrizePseudos').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NewAParameter').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NewBParameter').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('RmaxRadialGrid').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('RestrictedRadialGrid').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('LatticeConstant').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LatticeParameters').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LatticeVectors').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SuperCell').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('AtomicCoordinatesFormat').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('AtomCoorFormatOut').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('AtomicCoordinatesOrigin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('AtomicCoordinatesAndAtomicSpecies').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('Zmatrix').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMUnitsLength').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMUnitsAngle').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('WarningMinimumAtomicDistance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MaxBondDistance').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('KgridCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('KgridMonkhorstPack').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ChangeKgridInMD').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TimeReversalSymmetryForKpoints').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ForceAuxCell').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('XCfunctional').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('XCauthors').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('XChybrid').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('Spin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SpinPolarized').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NonCollinearSpin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('FixSpin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TotalSpin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SingleExcitation').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('Harrisfunctional').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MinSCFIterations').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MaxSCFIterations').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMustConverge').'\>/'

"
" Mixing parameters
"
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMix').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixFirst').'\>/'
" old-style keys
" >
exe 'syn match 	siestaKeys 	/\<'.CP('MixHamiltonian').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MixCharge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DM.MixSCF1').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DM.MixingWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DM.KickMixingWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMNumberPulay').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayDamping').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayMinimumHistory').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayDmaxRegion').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMNumberKick').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMKickMixingWeight').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MixerDebug').'\>/'

" <
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixSpin').'\>/'
" The mixing methods
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerVariant').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerHistory').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerKick').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerKickWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerRestart').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerRestartSave').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerLinearAfter').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixerLinearAfterSave').'\>/'

" Convergence parameters
exe 'syn match 	siestaKeys 	/\<'.CP('SCFHConverge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFHTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFDMConverge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFDMTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFHarrisConverge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFHarrisTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFEDMConverge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFEDMTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFFreeEConverge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFFreeETolerance').'\>/'


exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixAfterConvergence').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFRecomputeHAfterScf').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('CompatPreV4DmH').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMPulayAvoidFirstAfterKick').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFLinearMixingAfterPulay').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixingWeightAfterPulay').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayUseSVD').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayDebugSVD').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFPulayRcondSVD').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMPulayOnFile').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMNumberBroyden').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMBroydenCycleOnMaxit').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMBroydenVariableWeight').'\>/'

" This is related to MixCharge
exe 'syn match 	siestaKeys 	/\<'.CP('SCFKerkerq0sq').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFRhoGMixingCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFRhoGDIISDepth').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFRhoGMetricPreconditionerCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFDebugRhogMixing').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DebugDIIS').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixChargeSCF1').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('DMInitSpinAF').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMInitSpin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMAllowReuse').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMAllowExtrapolation').'\>/'

" The below 5 keywords are superseeded by the above flags
" However, they are still read
exe 'syn match 	siestaKeys 	/\<'.CP('DMTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMRequireEnergyConvergence').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMEnergyTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMRequireHarrisConvergence').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMHarrisTolerance').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MeshCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MeshSubDivisions').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('GridCellSampling').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('EggboxRemove').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('EggboxScale').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('LDAUProjectorGenerationMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUEnergyShift').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUCutoffNorm').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUThresholdTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUPopTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUFirstIteration').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUPotentialShift').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LDAUProj').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('NeglNonOverlapInt').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('FixAuxiliaryCell').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('NaiveAuxiliaryCell').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('SolutionMethod').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('NumberOfEigenStates').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('UseNewDiagk').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagDivideAndConquer').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagAllInOne').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagNoExpert').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagPreRotate').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagUse2D').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('OccupationFunction').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OccupationMPOrder').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ElectronicTemperature').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('OMMUseCholesky').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMUse2D').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMUseSparse').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMPrecon').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMPreconFirstStep').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMDiagon').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMDiagonFirstStep').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMBlockSize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMTPreconScale').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMRelTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMEigenvalues').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OMMWriteCoeffs').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('ONFunctional').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONMaxNumIter').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONetol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONeta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONetaalpha').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONetabeta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONRcLWF').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONChemicalPotential').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONChemicalPotentialUse').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONChemicalPotentialRc').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONChemicalPotentialTemperature').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONChemicalPotentialOrder').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ONLowerMemory').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('BandLinesScale').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('BandLines').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('BandPoints').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('ProjectedDensityOfStates').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PDOSkgridcutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PDOSkgridMonkhorstPack').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LocalDensityOfStates').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('PartialChargesAtEveryGeometry').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('PartialChargesAtEveryScfStep').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('OpticalCalculation').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalEnergyMinimum').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalEnergyMaximum').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalBroaden').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalScissor').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalNumberOfBands').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalMesh').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalOffsetMesh').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalPolarizationType').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('OpticalVector').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('PolarizationGrids').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('BornCharge').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('NetCharge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SimulateDoping').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ExternalElectricField').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SlabDipoleCorrection').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MMPotentials').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MMCutoff').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MMUnitsEnergy').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MMUnitsDistance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MMGrimmeD').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MMGrimmeS6').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('BlockSize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ProcessorY').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DiagMemory').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('UseDomainDecomposition').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('UseSpatialDecomposition').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('RcSpatial').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('DirectPhi').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('UseTreeTimer').'\>/'

" Lua options
exe 'syn match 	siestaKeys 	/\<'.CP('LuaScript').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LuaInteractive').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LuaDebug').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('LuaDebugMPI').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDTypeOfRun').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDVariableCell').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDConstantVolume').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDRelaxCellOnly').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDMaxForceTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDMaxStressTol').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDNumCGsteps').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDMaxCGDispl').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDPreconditionVariableCell').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMForceTolLength').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMForceTolAngle').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMMaxDisplLength').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('ZMMaxDisplAngle').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDBroydenHistorySteps').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDBroydenCycleOnMaxit').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDBroydenInitialInverseJacobian').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDFIRETimeStep').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDQuench').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDFireQuench').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDTargetPressure').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDTargetStress').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDRemoveIntramolecularPressure').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDInitialTimeStep').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDFinalTimeStep').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDLengthTimeStep').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDInitialTemperature').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDTargetTemperature').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDNoseMass').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDParrinelloRahmanMass').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDAnnealOption').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDTauRelax').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDBulkModulus').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('GeometryConstraints').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('MDFCDispl').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDFCfirst').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('MDFClast').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSReplicateA').'[12]\('.CP('Left').'\|'.CP('Right').'\)\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSVoltage').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSMixH').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTriDiag').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSNumUsedAtomsLeft').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSNumUsedAtomsRight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBufferAtomsLeft').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBufferAtomsRight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSCalcElectrodeValenceBandBottom').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSComplexContourEmin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSComplexContourNumCircle').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSComplexContourNumLine').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSComplexContourNumPoles').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSBiasContourEta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBiasContourMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBiasContourNumPoints').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTBTEmin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTBTEmax').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTBTNPoints').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTBTCalcElectrodeValenceBandBottom').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTBTNEigen').'\>/'

"
" dev version siesta keywords
"

"
" i/o
"

exe 'syn match 	siestaOutput 	/\<'.CP('CDFSave').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('CDFMPI').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('CDFCompress').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('CDFGridPrecision').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('SCFMixDebug').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('SCFMixDebugMPI').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('GF').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('GFReUse').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TSElecsGFReUse').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TSElecsOutofcore').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TSHSSave').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TSDESave').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TSSSave').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTVerbosity').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDirectory').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFPrecision').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFTPrecision').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFCurrentPrecision').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTProgress').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTGFReuse').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTElecsOutofcore').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTElecsGFOnly').'\>/'
exe 'syn match 	siestaKeys      /\<'.CP('TBTElecsBulk').'\>/'
exe 'syn match 	siestaKeys      /\<'.CP('TBTElecsEta').'\>/'
exe 'syn match 	siestaKeys      /\<'.CP('TBTElecsAccuracy').'\>/'
exe 'syn match 	siestaKeys      /\<'.CP('TBTElecsNeglectPrincipal').'\>/'
exe 'syn match 	siestaKeys      /\<'.CP('TBTElecsCoordEPS').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDOSElecs').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDOSGF').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDOSA').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDOSAAll').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDMGF').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTDMA').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCOOPGF').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCOOPA').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCOHPGF').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCOHPA').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTTBulk').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTTEig').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTTAll').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTTOut').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCurrentOrb').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTdH').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTdHParallel').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTdSE').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTHS').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTHSFiles').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTkFile').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFMPI').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFCompress').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFSelfEnergySave').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFSelfEnergyPrecision').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFSelfEnergyCompress').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTSelfEnergyOnly').'\>/'

exe 'syn match 	siestaOutput 	/\<'.CP('TBTCDFProjCompress').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTProjsInit').'\>/'
exe 'syn match 	siestaOutput 	/\<'.CP('TBTProjsDebug').'\>/'

"
" general keywords
"

exe 'syn match 	siestaKeys 	/\<'.CP('SCFMix').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixVariant').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixHistory').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixRestart').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixRestartSave').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixPulayWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixPulayHistory').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixPulayDamping').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixBroydenHistory').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixBroydenWeight').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('SCFMixBroydenWeightP').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('SlabDipoleCorrectionVacuum').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('GeometryCharge').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('GeometryHartree').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('DMInitBulk').'\([\._-]*\w\+\([\._-]*[OI]Rep[\._-]*[123]\>\)\=\)\=\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMInitBulk').'\([\._-]*\w\+[\._-]*'.CP('InsertAt').'\)\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMInitBulk').'\([\._-]*\w\+[\._-]*'.CP('AtomStart').'\)\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMInitBulk').'\([\._-]*\w\+[\._-]*'.CP('AtomCount').'\)\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('DMInitBulk').'\([\._-]*\w\+[\._-]*'.CP('DM').'\)\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSElecs').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElec').'[\._-]*\w\+\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSTSfile').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTElecs').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTElec').'[\._-]*\w\+\>/'

" These keys are existing in the Elec block and are parsed 'as is'
syn match 	siestaKeys 	"\(chemical-potential\|chem-pot\|mu\)"
syn match 	siestaKeys 	"\(semi-inf-direction\|semi-inf-dir\|semi-inf\)"
syn match 	siestaKeys 	"\(electrode-position\|elec-pos\)"
syn match 	siestaKeys 	"DM-update"
syn match 	siestaKeys 	"used-atoms"
syn match 	siestaKeys 	"Eta"
syn match 	siestaKeys 	"bloch-\(A[1-3]\|[a-c]\)"
syn match 	siestaKeys 	"pre-expand"
syn match 	siestaKeys 	"bulk"
syn match 	siestaKeys 	"\(DE-file\|DE\)"
syn match 	siestaKeys 	"out-of-core"
syn match 	siestaKeys 	"Ef-fraction"
syn match 	siestaKeys 	"check-kgrid"

exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsDMInit').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsDMUpdate').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsEta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsBulk').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsCoordEPS').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsAccuracy').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElecsNeglectPrincipal').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTElecsEta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTElecsBulk').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTElecsCoordEPS').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSChemPots').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSChemPot').'[\._-]*\w\+\>/'

" These keys are existing in the Chem block
syn match 	siestaKeys 	"\(chemical-shift\|mu\)"
syn match 	siestaKeys 	"contour.eq"
syn match 	siestaKeys 	"\(ElectronicTemperature\|temp\|kT\)"
syn match 	siestaKeys 	"contour.eq.pole[N]?"

exe 'syn match 	siestaKeys 	/\<'.CP('TSContoursEqPole').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSContoursEqPoleN').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSContour').'[\._-]*\S\+\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSVoltage').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSContoursnEqEta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSContoursnEq').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TScontournEq').'[\._-]*\w\+\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSkgridMonkhorstPack').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSForces').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSIESTAOnly').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSCFMix').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSCFDMTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSCFHTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSAtomsBuffer').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSCFInitialize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSFermiInitial').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSChargeCorrection').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSChargeCorrectionFactor').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSChargeCorrectionFermiTolerance').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSChargeCorrectionFermiMax').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TSWeightMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSWeightkMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSPoisson').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSPoissonPosition').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSHartreeFix').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSElec').'[\._-]*\w\+[\._-]*\(Hartree\|Extend\)\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSSolutionMethod').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBTDBlockMax').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBTDOptimize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBTDSpectral').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSBTDPivot').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSAnalyze').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSMUMPSOrdering').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSMUMPSMem').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TSMUMPSBlockingFactor').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTBTDPivotDevice').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTBTDOptimize').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTBTDBlockMax').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTBTDSpectral').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTEta').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTAtomsBuffer').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTAtomsDevice').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTAtomsDeviceConnect').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTAtomsDeviceSort').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTElecsCoordEPS').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTSymmetryTimeReversal').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTTGF').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTBulk').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTSpin').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTDivideAndConquer').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTNormalize').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTVoltage').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTHS').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTk').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTkgrid_Monkhorst_Pack').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTContours').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTContour').'[\._-]*\w\+\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTContoursEta').'\>/'

exe 'syn match 	siestaKeys 	/\<'.CP('TBTProjs').'\>/'
exe 'syn match 	siestaKeys 	/\<'.CP('TBTProj').'[\._-]*\S\+\>/'

" These keys are existing in the Proj block
syn match 	siestaKeys 	"Gamma"
syn match 	siestaKeys 	"position"
syn match 	siestaKeys 	"proj"

"
" args - release and dev
"

syn keyword	siestaArgs 	diagon OMM OrderN Transiesta FD MP Cold Kim files
syn keyword 	siestaArgs 	LDA LSD GGA VDW CA PZ PW92 PW91 PBE revPBE RPBE WC AM05
syn keyword 	siestaArgs 	PBEsol PBEJsJrLO PBEGcGxLO PBEGcGxHEG BLYP DRSLL LMKLL KBM
syn keyword 	siestaArgs 	C09 BH VV split splitgauss nodes nonodes filteret SZ DZ DZP 
syn keyword 	siestaArgs 	SZP STANDARD MINIMAL polycrystal yes 
syn keyword 	siestaArgs 	no C6 C8 C10 harm Grimme CG Broyden FIRE Verlet Nose FC
syn keyword 	siestaArgs 	ParrinelloRahman NoseParrinelloRahman Anneal Forces
syn keyword 	siestaArgs 	Temperature Pressure TemperatureandPressure cellside
syn keyword 	siestaArgs 	cellangle stress position center rigid routine clear
syn keyword 	siestaArgs 	constr molecule Z 
syn keyword 	siestaArgs 	single double float Original GR
syn keyword 	siestaArgs 	plane delta gauss exp square box coords sphere
syn keyword 	siestaArgs 	none all part circle line tail points method
syn keyword 	siestaArgs 	buffer fermi ramp central cell BTD MUMPS full speed
syn keyword 	siestaArgs 	memory propagation column auto AMD AMF SCOTCH PORD METIS
syn keyword 	siestaArgs 	QAMD sparse block path diagonal displacement disp size
syn keyword 	siestaArgs 	list Sommerfeld GaussFermi charge

" Currently disabled arguments as they interfere with other vim recognitions
" Green MUMPS Lua bulk

"
" Spin arguments
"
syn keyword   siestaArgs unpolarized polarized collinear non-collinear noncollinear
syn keyword   siestaArgs spin-orbit spin-orbit-on spin-orbit-off

syn match 	siestaArgs 	"\(\s\|^\)atom\($\|\s\)"
syn match 	siestaArgs 	'\<Ordejon-Mauri\>'
syn match 	siestaArgs 	'\<\(molecule\|rigid\)-max\>'
syn match 	siestaArgs 	'\<species-i\>'
syn match 	siestaArgs 	'\<clear-prev[ious]\=\>'
syn match 	siestaArgs 	'\<g[auss]\=-\(legendre\|fermi\)\>'
syn match 	siestaArgs 	'\<\(simpson\|boole\)-mix\>'
syn match 	siestaArgs 	'\<monkhorst-pack\>'
syn match 	siestaArgs 	'\<orb-orb\>'
syn match 	siestaArgs 	'\<\(un\)\=correlated\(+\(tr\|sum\)-atom-\(atom\|orb\)\)\=\>'
syn match 	siestaArgs 	'\<cross-terms\>'
syn match 	siestaArgs 	'\<elec-box\>'
syn match 	siestaArgs 	'\<NetCDF-file\>'
syn match 	siestaArgs 	'\<\(atom\|orb\)+\w\+\(\(+fan\|+nofan\)\|+rev-\(CM\|GPS\|PCG\|GGPS\)\)\=\(+priority\)\=\>'
syn match 	siestaArgs 	'\<even-path\>'
syn match 	siestaArgs 	'\<path-even\>'
syn match 	siestaArgs 	'\<diag\(\(-A[1-3]\)\|\(-[a-c]\)\)\=\>'
syn match 	siestaArgs 	'\<mid-rule\>'
syn match 	siestaArgs 	'\<TSHS-file\>'
syn match 	siestaArgs 	'\(\s\|^\)TSHS\($\|\s\)'
syn match 	siestaArgs 	'\(\s\|^\)HS\($\|\s\)'

syn keyword 	siestaVars 	a b alpha beta gamma A3 A2 A1 inf prev next
syn match 	siestaVars 	'\(\s\|^\)[+-][a-c][1-3]\($\|\s\)'

syn keyword 	siestaOperats 	from to step begin start end plus minus
syn match 	siestaOperats 	'[\{\}><]'

if !exists("did_siesta_syntax_inits")
  let did_siesta_syntax_inits = 1
  hi link siestaBoolean 	Boolean
  hi link siestaInt		Special
  hi link siestaFloat		Float
  hi link siestaComment		Comment
  hi link siestaUnits 		Label
  hi link siestaOutput 		Function
  hi link siestaArgs 		Special
  hi link siestaOperats 	Character
  hi link siestaVars 		Label
  hi link siestaDirective	Define
  hi link siestaKeys 		Typedef
endif

let b:current_syntax = "siesta"
