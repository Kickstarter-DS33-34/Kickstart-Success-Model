??"
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
n

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name659766*
value_dtype0	
?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_649274*
value_dtype0	
p
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name670291*
value_dtype0	
?
MutableHashTable_1MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_659799*
value_dtype0	
p
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name680816*
value_dtype0	
?
MutableHashTable_2MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_670324*
value_dtype0	
p
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name691341*
value_dtype0	
?
MutableHashTable_3MutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_680849*
value_dtype0	
p
hash_table_4HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name701866*
value_dtype0	
?
MutableHashTable_4MutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_nametable_691374*
value_dtype0	
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
d
mean_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_1
]
mean_1/Read/ReadVariableOpReadVariableOpmean_1*
_output_shapes
:*
dtype0
l

variance_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_1
e
variance_1/Read/ReadVariableOpReadVariableOp
variance_1*
_output_shapes
:*
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0	
d
mean_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_2
]
mean_2/Read/ReadVariableOpReadVariableOpmean_2*
_output_shapes
:*
dtype0
l

variance_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_2
e
variance_2/Read/ReadVariableOpReadVariableOp
variance_2*
_output_shapes
:*
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0	
d
mean_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean_3
]
mean_3/Read/ReadVariableOpReadVariableOpmean_3*
_output_shapes
:*
dtype0
l

variance_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance_3
e
variance_3/Read/ReadVariableOpReadVariableOp
variance_3*
_output_shapes
:*
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0	
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?P2*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	?P2*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:2*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:2*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?P2*&
shared_nameAdam/dense_6/kernel/m
?
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	?P2*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?P2*&
shared_nameAdam/dense_6/kernel/v
?
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	?P2*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
\
Const_5Const*
_output_shapes

:*
dtype0*
valueB*?Y@G
\
Const_6Const*
_output_shapes

:*
dtype0*
valueB*?Q?S
\
Const_7Const*
_output_shapes

:*
dtype0*
valueB*XB
\
Const_8Const*
_output_shapes

:*
dtype0*
valueB*?>C
\
Const_9Const*
_output_shapes

:*
dtype0*
valueB*??B
]
Const_10Const*
_output_shapes

:*
dtype0*
valueB*?viD
]
Const_11Const*
_output_shapes

:*
dtype0*
valueB*  B
]
Const_12Const*
_output_shapes

:*
dtype0*
valueB*?kBC
J
Const_13Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_16Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_17Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_18Const*
_output_shapes
:*
dtype0*w
valuenBlBUSBGBBCABAUBDEBMXBFRBITBESBNLBHKBSEBDKBNZBSGBJPBCHBIEBBEBATBNOBPLBLUBGRBSI
?
Const_19Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                        	       
                                                                                                                
Ё
Const_20Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBLos AngelesBLondonBNew YorkBChicagoBSan FranciscoBBrooklynBPortlandBSeattleBTorontoBAtlantaBBostonBAustinBPhiladelphiaBMinneapolisB	NashvilleB	Hong KongB	San DiegoB
WashingtonB	VancouverBDenverBHoustonBDallasB	Las VegasBParisB	MelbourneBSydneyBOrlandoB	ManhattanBMontrealBPhoenixBSalt Lake CityBBerlinBMexico CityB
PittsburghBColumbusBMiamiB	EdinburghBDetroitB	SingaporeB	BaltimoreB
ManchesterBOaklandB	StockholmB	AmsterdamB	St. LouisBKansas CityBTampaB
BirminghamBTokyoB
SacramentoBRichmondB	ClevelandBBristolB	BarcelonaBNew OrleansBSan JoseB
CopenhagenB	CharlotteBBrisbaneBIndianapolisBSan AntonioBMadridB
CincinnatiB	HollywoodBRaleighB	CambridgeBGlasgowB	MilwaukeeB	RochesterBTucsonBMexicoBFranceBBoulderBMadisonBDublinBGrand RapidsBItaliaBCalgaryBJacksonvilleB
LouisvilleBAucklandBLeedsB
Fort WorthBAlbuquerqueBColorado SpringsBSpringfieldBBerkeleyBOttawaB	LiverpoolBProvoBEdmontonBColumbiaB	SheffieldBMemphisBSt. PaulB
ProvidenceBPerthB
CharlestonB	AshevilleBMilanBBoiseBViennaBBuffaloBAthensBOklahoma CityB
NottinghamBRomeBLincolnBAdelaideB
GreenvilleBEspañaBDurhamBHonoluluB
Long BeachB
WilmingtonBSpokaneB	ArlingtonBGreater LondonBFort LauderdaleB	Ann ArborBSavannahBEugeneB	LexingtonBHamburgBOxfordBTulsaBQueensBBrusselsBWinnipegBCardiffBGuadalajaraBLong IslandBDaytonBMunichBBrighton and Hove CityBIrvineBOsloBNewarkBWalesBAlbanyBZurichB
GreensboroB
Des MoinesBBelfastBSarasotaBVirginia BeachB
Santa CruzBNewcastle upon TyneBDowntown TorontoBOmahaBChattanoogaBSanta FeB	New HavenB
BurlingtonBNorthamptonB	KnoxvilleBSt. PetersburgB
BellinghamBSouth FloridaBBlack Rock CityBFayettevilleBTallahasseeBJersey CityB	LancasterBBrightonB
GothenburgBOntarioBVictoriaBVeniceBHalifaxBSanta BarbaraBKentBBloomingtonBToledoBFort CollinsB	AnchorageBSyracuseBNorwichB
AlexandriaB
WellingtonBSalemBSeoulBOlympiaBNorfolkBGreater ManchesterBRenoBHamiltonB	WorcesterBOrangeB	LafayetteBCharlottesvilleBSouthamptonB
PortsmouthBLansingBCologneBMalmöBLittle RockBTacomaB	Palo AltoBTaipei CityBPasadenaBHuntington BeachBShenzhenB
HuntsvilleBCornwall and Isles of ScillyBBathBFlorenceBQuebecBYorkB
ScottsdaleBSanta MonicaBFresnoBBournemouthBHartfordBBurbankBWinston-SalemBBronxBBozemanBGainesvilleBAuroraBAkronBValenciaBJacksonBTempeBReadingB	LeicesterBMissoulaB	QueretaroBCanberraB
Fort WayneBChapel HillBNorth YorkshireBBaton RougeBWichitaBEssexB	RiversideBKievBLyonB
Costa MesaBMesaBKingstonBDentonBIthacaBNaplesBFairfaxBAntwerpB	LynchburgBBendBSurreyBExeterBCoventryBSan Luis ObispoBOremBAnaheimB
SomervilleB
Santa RosaB	PensacolaB	MonterreyBMilanoBGlendaleBSan JuanB	RotterdamBGenevaBWest Palm BeachB
Fort MyersBEl PasoB	Iowa CityB	KalamazooBDeutschBDuluthB	FrankfurtBChandlerBSomersetBFredericksburgB	FairfieldB	The HagueBStaten IslandBWarsawBHanoverBDoverBAuburnBPueblaBPlymouthBMéxicoBFalmouthBFargoBCity of Gold CoastBChristchurchBLawrenceB	ChampaignBTurinB	RockvilleBMiami BeachB
CheltenhamBCantonBDevonBState CollegeB
Boca RatonBUtrechtB
EvansvilleB	EindhovenB	StuttgartBSanta ClaraB	PrincetonBOgdenBNorth HollywoodB	HendersonBTraverse CityB
MiddletownBErieBAberdeenBToulouseB
HarrisburgBMilton KeynesBFranklinBLakelandB
WinchesterBWilliamsburgBWaterlooBNew BrunswickBAstoriaBArhusBWest MidlandsB	Santa AnaBCentralBBakersfieldBShanghaiBBergenB	AllentownBSioux FallsBBangkokBWindsorBTrentonB	SunnyvaleBReddingBMobileBBolognaBPeoriaBKelownaB
HuntingtonBHudsonB	WoodstockBWest SussexBTroyB	FrederickBBeijingBAshlandBStamfordB
South BendB	SaskatoonB	NewcastleB
LancashireB	KitchenerBGilbertB
DusseldorfBCheshireBOcalaBMississaugaB	HampshireBDundeeBConcordB
ColchesterBVenturaBPragueBNewport BeachB	FlagstaffBDurangoBBogotaB
BinghamtonBBellevueB	OceansideB	MontclairBAmherstB
ShreveportBRedmondBMünchenB	CorvallisB
St. GeorgeBPanama CityBNewportBMontereyB	FullertonBFremontBCumbriaBWest YorkshireBSilver SpringBSaratoga SpringsBNapaBMoscowBModestoBLoganBEasthamptonBLubbockBHastingsB	BethlehemBWestminsterBSuffolkB
San MarcosBPeterboroughBMyrtle BeachBMountain ViewBHamptonBEast SussexB
DerbyshireBDerbyBDavisB	Cape TownBVeracruzBPlanoBMonroeBLakewoodBHiloBGoldenB	DavenportBChicoBCharlottetownB
AbbotsfordBPoughkeepsieB
New LondonBLimaBNormanBNashuaBHobartB	CupertinoBCounty DurhamBCorpus ChristiB
StrasbourgBStoke-on-TrentBRoanokeBNantesBLongmontBLilleBLeipzigBLaurelB
Lake WorthBHertfordshireBFlintB
DoylestownBAmarilloBWest HollywoodB	San MateoBPrestonBNorth AtlantaBNairobiBMidlandBLowellBIdaho FallsBGloucestershireBDorsetBDecaturBCorkB
ClearwaterBBangorB	AnnapolisB
YoungstownBWarwickBUticaBTijuanaBSanta ClaritaBRockfordBPetalumaB	LjubljanaBLebanonBLausanneBKronenwetterBJohnson CityB	Green BayBEvanstonBCarlsbadB	BeavertonBWacoBMedfordB	MarseilleB
Eau ClaireBBudapestBBowling GreenBBordeauxB
NapervilleBLovelandB
Las CrucesBDaytona BeachBBelgradeB	WiltshireBSwindonB
San RafaelB	ReykjavikB	Osaka-shiBMariettaBMalagaBLower East SideB
GeorgetownBAlamedaBStocktonBSt. AugustineB
ShrewsburyB
Rapid CityBCoeur D'AleneBCheyenneBCambridgeshireB	BlackpoolB	WaterfordB
Ulan BatorB	StratfordBSevilleBRedondo BeachBIpswichBFairhopeBDortmundBCedar RapidsBAccraB	YpsilantiBStudio CityBScrantonBPalm BayB
MontpelierB
MontgomeryB	Kyoto-shiB	KissimmeeBJefferson CityBEverettBBuenos AiresBBradfordBBedfordBThousand OaksBThe WoodlandsBRennesBPalm SpringsBOaxacaB	MenomonieB
GermantownB	FairbanksB	BrunswickBRancho CucamongaBCaryBBushwickB
TuscaloosaBStanfordBStaffordshireB	Rock HillBOverland ParkBManilaBLuxembourg CityBHollandBHarrisonburgB	GuildfordB
GloucesterBClovisBUrbanaB
StillwaterBSaginawBMission ViejoBLaguna BeachB	KarlsruheB	JerusalemBHarlemBGenoaBFerndaleBCamdenBBooneBAugustaBTorinoBPleasant GroveBNelsonB
MorristownBLincolnshireBKenoshaBJoplinBGrass ValleyBGarlandBElginBEast LansingBDresdenBCuliacanBConwayBTylerBTorranceBTel AvivB
ShropshireBQuincyBPort St. LucieB
PennsvilleBMiddlesbroughBMcallenBMalibuBLisbonBLeónBLake ForestB	KalispellBIsle of WightBHigh WycombeBClarksvilleB
CarrolltonB
CarbondaleB	BrentwoodB	BremertonBBrattleboroBAalborgBZaragozaBTupeloBTaosB	St. CloudBSalinasBPort TownsendBOsakaBNorwalkBMount PleasantBLinzBLimerickBLiegeBLeicestershireBKampalaBGrand JunctionBFrankfurt MainB	EnglewoodBCulver CityBCollege StationB
ChesapeakeB	BradentonBAguascalientesBWalla WallaB
SunderlandBStaffordB
St. John'sBSonomaBRestonBNorthern VirginiaBNorthamptonshireBNiceBNewport NewsBMeridianB	LittletonBKyleBIstanbulBGrazBGranadaB	Elk GroveBDelawareB
CanterburyB
AlpharettaBVeronaBSterlingBPuyallupBPalermoB
New CastleBMéridaBMurfreesboroBKirklandB
HeidelbergBEurekaBCoronaBCairnsBBerneB	BerkshireBBaselBAmesBAmerican ForkBWest ChesterBWausauB	WatertownB
Toms RiverBSpartanburgBSofiaBSherman OaksBScarboroughB	RosevilleBPoulsboBNorthumberlandBMuncieBMill ValleyB	InvernessBHullB
HartlepoolB	GroningenBGerlachB	GatesheadBGalwayBEdmondBEastonBDanvilleBChinoBCarleton PlaceBBentonvilleBAugsburgBAnkenyB	AlabasterBWalnutBVallejoB
ValladolidBTallinnBSwanseaBSimi ValleyBRoswellBRedwood CityBRedlandsBNovatoBNewburyportB
MorgantownBMankatoBKingston upon ThamesBKey WestBKennesawBKeeneBHaywardBHavanaB
HagerstownBEast VillageBCampecheBBuckinghamshireBBransonBBillingsBAarhus CentralBWorthingBWolverhamptonBWinter ParkBWest LafayetteBWarwickshireBWarrenBVilniusBSpring HillBPalmdaleBNiagara FallsBMontpellierBMilfordBMckinneyBLong Island CityBKatyB	KathmanduBIrvingBHot SpringsBHelenaBGreeleyB
Great NeckBCherry HillB
ChelmsfordB	BucharestBArcadiaBWhite PlainsB
ValparaisoBTemeculaBSouth PortlandB
SherbrookeBSedonaBSan BernardinoBRogersBRacineB	PocatelloBPescaraB
Palm CoastBNewtonBNanaimoBMuskegonBMurrietaBMonctonB
MarysvilleBLeidenBLagosBKielB	KetteringBKabulBHuddersfieldBHattiesburgBGuelphBGatineauBGaithersburgB
FolkestoneBDunedinBDumfriesBCuyahoga FallsBCorningBChathamB	CamarilloBBowieBBeverly HillsBAsbury ParkBAbileneBWoodburyBWalnut CreekBVicenzaBSpringBSpokane ValleyBSouth LanarkshireB	SalisburyBQueen CreekBMumbaiBMoreno ValleyBMacombBLutonBLompocBLewesBLawrencevilleBJohannesburgBHobokenB
GreenfieldBDe KalbBCollege ParkB	ChihuahuaB
Cedar CityBCairoBBonnBBethesdaBAppletonBWest HartfordB
WarringtonBTustinBTempleBSt. CharlesBSaskatchewanB	Sao PauloBQuitoBOak ParkB	NurembergBNormalBNagoyaB
Menlo ParkBMainzB
MaastrichtB	LivermoreBLehiB
LeamingtonB
Las PalmasBLake CharlesB
HermosilloBHerefordBHamdenBFreiburgB	EscondidoB	EncinitasB	Den BoschB	CovingtonBCarson CityBCarlisleBCancunBBurkeB	BlackburnBZagrebBVinelandBTilburgB	TellurideBSandyB	San PedroBOrmond BeachBNampaB
MidlothianBMarkhamBMargateB	MaidstoneBLondon Borough of HackneyB
LivingstonBLewistonBKrakowBJolietBIndependenceBHuntleyBHowellBGarden GroveBFriscoBEdwardsvilleBEast NashvilleBDelray BeachBDearbornBCiudad JuarezB
ChichesterB
Cape CoralBBresciaBBeaconBAachenBÖrebroBWoodinvilleBWilsonBWestchesterBVailBUmeåBTerre HauteBSouthend-on-SeaB
Sioux CityBSanta Cruz de TenerifeB
Round RockBRigaB	RidgewoodBReginaBPotsdamBPortageBPooleBPamplonaBNijmegenB
New AlbanyBMetzBMenifeeB	MansfieldBLeesburgBLangleyBJuneauBGrenobleBGardenaB	FrankfortBFalls ChurchBEstado de MexicoBDowntown Los AngelesBCummingBCampbellBBoynton BeachBBilbaoBBethelBBedfordshireBBarrieBAspenBAshburnBWhittierBTruroBStauntonB
St. JosephBSouth YorkshireBSantiagoB	SandpointBSalinaBS. Luis PotosiBRocklinBRocklandBRigbyBParmaBParkerB	Park CityBOjaiBOdenseBOakvilleB	New PaltzBMurciaBMedellinB	MarrakeshBMaineBMaconBLongviewB
LinlithgowBKuala LumpurBHillsboroughB	HillsboroBHerndonB	HarrogateBGulfportBGrimsbyBGrants PassBGrand ForksB	GodalmingBFontanaBFederal WayBCouncil BluffsBCannesBBryanBArcataBAntiochBWilkes-BarreBWichita FallsBVictorvilleB	VacavilleB	TrondheimB	TonawandaBSouth JordanBSmyrnaBSalzburgBRio de JaneiroBRexburgBRamsgateB
PittsfieldBOviedoBNottinghamshireB	North BayBNewburghBNew BedfordBNevada CityBMount VernonB	MishawakaBMinotBMartinezBMartinB	MaplewoodBLundBLenexaBHanoiBFalkirkB
Dana PointBCypressBCoral SpringsB
Chiang MaiBCalifornia CityB	BrooklineBBremenBBrandonB
BlacksburgBAndersonBAlicanteBWalthamBUppsalaBUplandBTunbridge WellsBTel Aviv-YafoBTauntonBStevens PointBShawneeBRouenBOxnardBOxfordshireBNewnanB	NewmarketBMesquiteBMechanicsburgBManassasBLehigh ValleyB	InnsbruckB
GuanajuatoBGhentBGeelongBFolsomBDraperB	DarmstadtBDanburyBDakarBCliftonBCarmelB	Byron BayBBury St. EdmundsBBrownsvilleBBereaBAtlantic CityBAndoverBYucatanBWroclawBWrexhamBWarner RobinsBVistaBUnionBTromsoBTorquayBSchenectadyBSarajevoBSanto DomingoBSanfordBRochester HillsBPurchaseBPrince GeorgeBPrescottB
Post FallsBPort WashingtonB
PleasantonBPlacervilleBOdessaB	NederlandBMount HollyBMarfaBLynnwoodBJohnsonB
JanesvilleBHolyokeBHo Chi Minh CityBHatfieldBHaarlemB
GreenpointBEast Los AngelesBDouglasvilleB	DoncasterBDerryBDelftBClintonBCleveland HeightsBChiapasBCataniaBCaenB
BurlingameBBloomfield HillsBBeverlyBBattle CreekBBathurstBBanffBApple ValleyB
AntarcticaBAllenBAliso ViejoBYakimaBVejleBTopekaB	TillamookBThunder BayBTeaneckBStroudBStirlingBSparksBSouth Lake TahoeBSan ClementeB
RidgefieldBRancho Santa MargaritaBPompano BeachB
Phnom PenhBPetoskeyBPeckhamBMiramarBMannheimBManhattan BeachBLuganoBLondonderryBLivoniaB
LewisvilleB
LethbridgeBLaramieBKitteryB	KingsportBJupiterBHorshamBHendersonvilleB	GreenwoodBFort Walton BeachBFifeB	EvergreenB
EllensburgBEl Dorado HillsBDenpasarBDe LandB
BroomfieldB
BridgeportBBismarckBBig Bear LakeBBeaumontBAnokaBAlhambraB	Yuba CityBYerevanBWyomingBWhitbyBWheatonB	WestfieldBWest PhiladelphiaBWaldorfBTaurangaBTaichung CityBSunolBSunburyB
St. AlbansB
SnoqualmieBShelbyB
San AngeloBRutlandB	RotherhamBRandolphB	PittsburgBPisaBPerugiaBOswegoBOberlinBNyackBNorcrossBNewtownBNew BritainBNacogdochesBMünsterBMissouri CityBMilpitasBMichigan CityB
MerseysideBMenashaB	MarquetteBLees SummitBLawtonBLa JollaB	La CrosseBKigaliBKahuluiBJaliscoBHyattsvilleBHesperiaBHelsinkiBGlens FallsBFromeBFrederictonB	FinksburgBElktonBElizabethtownB	ElizabethBDubaiBCuzcoBCornwallBCollingswoodB	CarrizozoBBrainerdBBlaineBAventuraBArvadaBAlmeriaBYonkersB
WoodbridgeBWeymouthBWest OrangeBWayneB
TownsvilleBTbilisiBTakoma ParkBSurpriseBSudburyBStuartBStratford-upon-AvonBSouthingtonBSouth San FranciscoBShepherdstownBSeymourB
Saint JohnBRentonBQuimperBPuerto VallartaBPrescott ValleyBPleasant HillBPalm Beach GardensBOshkoshB
NorthfieldBNiagaraBMurrayBMonroviaBMissionBManaguaB	MagdeburgBLudwigsburgB	Los GatosBLongyearbyenBLentate sul SevesoB	LehightonBLahainaBKlamath FallsB
KlagenfurtBKilleenBKapaaBKamloopsB	JamestownBJacksonville BeachB
Hood RiverBHilton Head IslandBHighlandBHammondBGrand HavenBGranbyB
Gig HarborBFreeportB
FraminghamB	FitchburgBDamwoudeB	DahlonegaBCranstonBComoBColimaB	ClaremoreBChula VistaB
ChateaugayBCanbyBBrodheadsvilleBBeirutBBasingstokeBBarnsleyBAsheboroBArtesiaBArnhemBApopkaBAmmanBAikenBZaporizhzhyaBWilliamstownBWilliamsportB	WakefieldBWaconiaBVitoriaB
Twin FallsBThomasvilleBStroudsburgB	StockportBStockbridgeBSpringvilleB
SouthfieldBSouth MinneapolisBSonoraBSierra VistaBSherwoodBSheridanBSan Miguel de AllendeBSaltilloBRustonBRussellvilleBRuidosoBRocky MountBRockportBRancho CordovaBPullmanBProvincetownB
PlainfieldBPinellas ParkBPflugervilleBPembroke PinesBPatersonBOshawaBOdentonBNorth AuroraBNagasakiBMountlake TerraceBLurayBLodiBLawrenceburgBLaguna HillsBKristiansandBKetchumB	KennewickBJönköpingBIndioB
HealdsburgBHasseltB	HamtramckB	HammontonBHaleiwaBGuatemala CityB	GreenwichBGreenevilleBGoshenB	GalvestonBFuquay-VarinaB
Fort BraggBForneyBFond du LacB	FallbrookBElmiraBEast Riding of YorkshireBEagle RiverBDuisburgBDowneyB	DickinsonBDestinBDeerfield BeachBDavieBCrown PointBCocoaBClifton Park CenterBClevedonB	ClaremontBChesterfieldBChesterBChengduB	CartagenaBCagliariB
BurnsvilleBBurnleyBBridgewaterBBlufftonBBergamoBBeaufortBBay CityBBarstowBBaldwinBAnnecyBAlpineBAlfredBAix-en-ProvenceBActonBWisconsin RapidsB	WiesbadenB
WhitehorseBWestportBWeston-Super-MareB	West BendBWest BabylonBWaukeshaBWatkins GlenBVigoBVan NuysBVallettaBTrevisoBTowsonB
Texas CityBTelfordBTall TimbersB
Sugar LandB	StavangerBSt. CatharinesBSt. AndrewsBSimpsonvilleB
SchaumburgB	SausalitoBSan AnselmoB	SalamancaB
RutherfordB
Rio RanchoBPunta GordaBPuebloBPotomacB
PerrysburgBPembrokeB	PawtucketBPalmerston NorthBPalmerBPalma de MallorcaBOronoB	OrbetelloBOneontaBOlatheBOaktonB
NorthridgeBNorth OlmstedBNorth AdamsBNogalesBMount LaurelBMoorheadB
MoorestownBMoabBMinskB
MiddleburyBMcminnvilleBMarina del ReyBLuleåB	LowestoftB	LongueuilBLindenhurstBLaredoBLake Havasu CityBKowloonBKokomoBKearneyB	KaysvilleBKaukaunaBKaiserslauternBKailuaBJoshua TreeB	IndonesiaB	HurricaneBHarrisonBGundelfingenBGreat FallsBGrande PrairieBFountain ValleyBFort LeeB	FlensburgBFishersB
EnterpriseBEdinburgBEbeltoftBEagle MountainBDunfermlineBDudleyB
DorchesterB	DartmouthBCovinaBCordobaB
CookevilleBChennaiB
CarmichaelB
Buena ParkBBolzanoBBiloxiBBeltonBBallaratBAzusaB	AylesburyBArea 51BApexBAddis AbabaB	Abu DhabiBAberystwythB
WollongongBWinter GardenBWindhamBWexfordB	WestbrookB
WaynesboroBWatfordB	WaterburyBWasillaBWappingers FallsBWailukuB	WadsworthBUlmBUkiahBUdineBUbudBTrumbullBTolucaBThessalonikiB
SykesvilleBSwansea City and CountyBStevensvilleB	SouthportBSouthern PinesBSolihullB	SnohomishB
ShoreditchB	ShelburneBSantiago de CompostelaBSan SalvadorBSan LeandroB	SammamishBRiver FallsBRed BankBRavennaBPutneyBPaducahBPachuca de SotoBO'FallonBNorth CharlestonBNoblesvilleB	NicevilleBNew BraunfelsBNeedhamBMoreliaBMooresvilleBMexicaliBMayaguezBMaldenBMahwahB
LeeuwardenB	Lake MaryBLaguna NiguelBLa CrescentaBKearnyBKailua KonaB	JonesboroBIrmoB
HutchinsonB
High PointBHidalgoBHermosa BeachBHelsingborgBGulf ShoresBGreshamBGreerBGreencastleBGrand Canyon VillageBGraftonBGlen BurnieB
GettysburgB	Gaza CityB
Fort SmithB	FarmvilleBFarmington HillsB	Fair LawnB
EmeryvilleBEllicott CityBElkhartBDundalkBDubuqueBDowntown MontréalBDothanBDUMBOB
CuernavacaB	CorneliusBCoppellBCoos BayBConroeBColomboBClermont-FerrandBChillicotheBChelseaB
ChatsworthBCastro ValleyB	CalabasasBCadizBBuffalo GroveB	BountifulBBoltonBBolingbrookB
BloomsburgB
BloomfieldBBerkeley HeightsBBeloitBBelmontBBariBAlamosaBWyckoffB	WuppertalBWoodlandBWinonaBWeatherfordB	WarrentonBWake ForestBVillahermosaB
VersaillesB
Vero BeachBValdostaBUSAB
TorringtonB	ToowoombaB
TewkesburyBTaylorB	StrasburgBStowB	SpearfishBSouth PasadenaBSlidellBSiloam SpringsBSienaBSiciliB	ShorelineBShermanBSharonBSevillaBSeviervilleB	SevenoaksBSequimB
SebastopolBSapporo-shiBSanduskyBSan Juan CapistranoB
San CarlosBSalernoBRowleyBRoubaixBRockawayB	RhinebeckB
RevelstokeBRed DeerBPoznanBPort RicheyBPort OrchardBPort CoquitlamBPort CharlotteBPomonaBPlaya del CarmenBPismo BeachB	PickeringBPascoBOzarkBOdesaB	NyköpingBNuukBNimesBNicosiaBNewquayBNew Smyrna BeachBNassauBNancyBMuscle ShoalsBMount ClemensBMorgan HillBMontroseB
MontevideoBModenaB	MendocinoBMaumeeB	MaryvilleBMarionBLuccaB	LewisburgBLenoirBLecceBLargoBLaieBKöpingBKutztownBKumasiBKortrijkBKonstanzBKingston upon Hull CityB	KetchikanBKemahBKasselBKanagawaBJärnaBJakartaBIbizaBHopewellBHighland ParkBHebden BridgeB	HawthorneBHampton CoveB
HackensackBGriffinBGoletaBFront RoyalBFriday HarborBFlower MoundBFairmontBEssenBEnschedeBEdisonBDingmans FerryBDeltonaB	CullowheeBCreweBCorbyBCoral GablesBCollinsvilleBClermontBClaytonB
ClarksburgBCholulaBChino HillsBChickamaugaB	ChantillyBCerritosB
CentennialBCelebrationBCatskillBCastle RockB
Cabin JohnB	BrookingsBBromleyB
BrockvilleBBrnoBBrixtonBBrevardB	BrantfordBBothellBBig SurB	BiddefordBBerwynBBemidjiBBellows FallsB
BellevilleBBeckleyB
BarringtonBBanburyBAyrBAtholB
AtascaderoB	ArgentinaBApache JunctionB	AnacortesBAlt-SaarbrückenBAldenBZapopanBYucaipaB
YogyakartaBWrightsvilleBWoosterBWoodland HillsBWinter HavenB	WillistonB	WhitefishBWestlandBWest TisburyB	West L.A.BWest JordanBWesley ChapelB	WenatcheeB	WellfleetBWeimarBWaynesvilleBVoorheesBVisaliaBViroquaBVictorBTysons CornerBTwain HarteBTuxtla GutiérrezBTrois-RivièresBTotnesBTorshavnB	TexarkanaB	TarrytownBTamworthB
TamaulipasBSzczecinBSuisun CityBStone RidgeBSt. Clair ShoresBSpencerBSouth ElginBSolana BeachBSocorroBSkopjeB	Siem ReapB
Shibuya-kuB	SheboyganBSettleB
ScunthorpeBScotch PlainsB	SaxapahawBSault Ste. MarieBSanta MariaBSan Tan ValleyBSan FernandoBSaltspring IslandBRyeBRotoruaBRoseburgBRockwallBRockaway BeachBRock IslandBRiminiBRichlandBPurcellvilleB	PottstownBPort OrangeBPoint Reyes StationB	PittsboroB
PiscatawayB	PeekskillBPaso RoblesBPaoliBPalisades ParkBPaisleyB	OwensboroB	OldenburgBOld SaybrookB
Ocean CityBNuneatonB	NorthportBNorth Miami BeachBNixaBNew RochelleBNew Port RicheyB	New DelhiBNew BernBMuskogeeBMount ShastaB	Mount JoyB	Morro BayBMorelosB	MontreuilBMiltonBMetepecBMercedBMcleanB	McfarlandBMaynardBMartinsvilleBManitou SpringsB
MalmesburyBMadison HeightsBMacclesfieldB
Los AlamosBLortonBLondon Borough of CamdenBLittlehamptonB
LinköpingB	LichfieldBLiberty LakeBLibertyB	LevittownB
LeominsterBLansdaleB	La GrandeB
La CoruñaBKolkataB
KirknewtonB
KilmarnockBKiheiBKendalBKarlstadB	JeffersonBHopkinsvilleB	HonesdaleBHomerB	HollisterBHiroshima-shiBHangzhouBGrotonB	GrayslakeBGrand PrairieBGrahamBGlastonburyB	GlassboroBFultonBFukuoka-shiBFindlayBFarnhamB
Fall RiverBEndicottBEmporiaBEdmondsB
EastbourneBEast GrinsteadBDurbanBDiamond BarBDhakaB	DevonportBDenaliBDarwinBDanversBCrystal LakeBConwyBConey IslandBCommerceBCoconut CreekBCocoa BeachBClaymontB
ChilliwackBCentral San DiegoBCelayaBCasperBCarrboroBCarmel-by-the-SeaBCaracasBCape BretonBBullhead CityBBrugesBBroken ArrowBBrindasBBreaBBerrien SpringsB
BenningtonBBeniciaBBayernBArlesB
AmersfoortBAirdrieBAgoura HillsBAdjuntasBAbingdonBYumaBWurzburgBWirral Metropolitan BoroughBWinter SpringsB	WimberleyBWiganBWethersfieldB
WetaskiwinBWestervilleBWest MonroeBWest CovinaBWest ChicagoB
WaxahachieBWalsallBVisbyBVesuviusBVassarB	Van BurenBTunisBTriesteBTracyBToursB	TodmordenB	ThornhillBTarpon SpringsBTampicoB	TahlequahBSussexBSumterBSummervilleB
StarkvilleB
SpringdaleBSpartaBSpanish ForkBSouth PhiladelphiaB	SolothurnBSistersBSimsburyBSicklervilleBSheltonBShelbyvilleBSenecaBSeasideBSavageBSassariBSamaraBRowvilleBRowland HeightsBRoute 66BRomfordBRogue RiverBRingwoodBRinconBRijswijkBReimsBRahwayB
QueanbeyanBPrince AlbertBPowder SpringsBPort-au-PrinceBPort JervisBPonchatoulaBPoint PleasantBPlattsburghBPhillipsburgB	PerpignanB	PatchogueBPalm HarborBPaiaBPahoaBOuagadougouBOrilliaBOregon CityBOld LymeBOakhurstB	Oak RidgeBNorth PhiladelphiaBNorrköpingB
NorristownBNew PlymouthBNew MilfordBNew BaltimoreBNeussBNavarreB	MuscatineBMunsterBMount MorrisBMount JulietBMoreheadBMonterey ParkBMililaniBMetairieBMeredithBMchenryB	MassillonBMartinsburgBMaple ValleyB	ManasquanBMakawaoBMadisonvilleBLynnBLusakaBLublinBLondon Borough of LewishamBLondon Borough of GreenwichBLockportBLittle FallsBLilburnBLihueB
LetchworthBLeague CityBLaytonB
LauncestonB	LadysmithBLaceyBLa VerneBLa PlataBLa HabraBL'vivBKlaipedaB	KirkcaldyB	KingslandB	JohnstownBJasperB
IngolstadtB	InglewoodBIndian TrailB	HopkintonBHoltB	HilversumB	HillsdaleBHickoryBHialeahBHalleBHadleyB
GöttingenBGuthrieBGuilfordBGoodyearBGemeinde WürzburgBGaryBGallatinBFukuokaB	FrostburgB	FremantleBFredoniaBFernandina BeachBFergus FallsBErlangenBEnidBElkins ParkBElcheB
El CerritoBEl CajonBEast HamptonB	DunnellonBDowntown MiamiBDeath ValleyBDa NangBCulozB	CrestlineBCremonaBCorbinBConnellsvilleBConakryBColombiaB	ColdwaterBCoahuilaB
ClarksdaleBChippewa FallsB
Chernobyl'BChagrin FallsBCentrevilleBCedar FallsB
CanonsburgB	CaledoniaBCaldwellBCajemeBButlerBBurgosBBraunschweigBBranfordBBramptonB	BraintreeBBossier CityBBonita SpringsBBochumB	BluefieldB	Blue BellBBiel BienneBBexhill-on-seaBBerwickBBernexBBarreB
Bar HarborBBambergBBadalonaBArmonaBArlington HeightsBArezzoBAreciboB	ApeldoornBAltoonaBAllardtBAalesundBZwolleB
ZionsvilleBZephyrhillsBYucca ValleyBYorba LindaBYellow SpringsBYangonBXiamenBXeniaB	WyandotteBWoods CrossB	WolfsburgBWien  7BWhite River JunctionBWhite Bear LakeBWestwoodBWest des MoinesBWest SacramentoBWest MelbourneBWest BromwichB	WellesleyB	WashougalBWan TsaiBWalthamstowBVestavia HillsBVernonBVaughanBVashonBVareseBTwentynine PalmsBTulareBTruckeeBTrogenBTribecaBTotowaBTonkawaBTlalnepantlaB
TitusvilleB	TipperaryB	TimisoaraBThameBTerricciolaBTaupoB	TarragonaBSwedenB	SundsvallBSummitB	StoughtonBStorrsBSteamboat SpringsBStatesvilleB
StatesboroBSt. Andrä-WördernBSt-Jean-sur-RichelieuB	SouthlakeB	SouthavenBSouth VeniceBSouth OrangeBSouth HadleyBSouth AtlantaBSoquelB
SonderborgBSolingenBSloughBSkåneBSilver LakeB	SilkeborgB	SebastianBSeahamBScherervilleB	ScarsdaleB
SayrevilleBSan GabrielBSalfordBSaguenayB	Royal OakB	RockledgeBRock SpringsBRivertonB	RiverheadB	Rice LakeBReynosaBRevereBReisterstownBRedditchBRantoulBRamseyBQuetzaltenangoBPuneBPresque IsleBPort of SpainB
Port HuronBPort AngelesBPontiacBPoitiersBPlymouth MeetingBPlovdivB	PlainviewB	PlacentiaBPine IslandBPetawawaBPekinBPaysonBParowanBPaphosBPalmyraB	PalmwoodsBPalmaBPalatineBPaigntonB	PaderbornBPacificaBPacific GroveBOwings MillsBOssiningBOrtenB
Old BridgeBOkinawa-shiB
OberhausenB	NürnbergBNutleyBNorthern San DiegoBNorth SydneyBNorth PlainfieldBNorth Palm BeachBNorth Little RockBNorth KingstownBNorth AugustaB	NewingtonB	New LenoxBNew GlasgowB	NeuchatelBNapoleonBNanuetBMurphysboroBMountain GroveBMosjoenB
MooloolabaBMontego BayBMonseyBMonaghanB
MinnetonkaBMillburnBMidvaleB	MerrimackBMerrillvilleBMeridenBMelkshamBMedicine HatBMeauxBMays LandingBMatawanBMarshallBMarltonBMarlboroBMariposaBMaricopaBMariborBManassas ParkBMammoth LakesB
MaidenheadBMagnoliaBMacungieBMackayBLuzernBLufkinBLucerneBLoughboroughB	LoudwaterB	Los AltosBLondon Borough of SouthwarkBLondon Borough of CroydonB
Little ElmBLismoreBLincoln CityBLibertyvilleBLexington ParkBLeuvenBLenoxBLe MansB	LakevilleBLakes EntranceBLake OswegoBLake JacksonBLa PazB	La MiradaBKinshasaBKharkivBKatoombaBKaiserseschBJerezBJamaica PlainBJamaicaBJaenBIsla de PascuaBImlayBHoumaBHonokaaBHersheyBHemetBGurneeBGulf BreezeB	GuangzhouB
Grove CityB
GreensburgBGreat BarringtonBGrayBGranitevilleBGrangerB	GrandviewBGorhamB	GoldsboroBGlen WaverleyB
Glen EllynBGironaBGetafeBGemeinde TübingenBGastoniaBGarden CityBFrederiksbergB	Fort HoodBFlushingBFlatbushBFentonBFairbornB	Fair OaksBEureka SpringsB
Estes ParkBEscanabaBEnsenadaBElmsfordBElkridgeBElkoB	EffinghamBEden PrairieB
EastpointeB	EastleighB
East HemetBEast BrunswickB	DungarvanB	DumbartonBDouglasBDexterBDequincyBDeptfordB	Deer ParkBDar es SalaamB
CrowthorneB	CrestviewB
CottonwoodBColvilleB
ClearfieldB	ClarkstonBClarionBCitrus HeightsBCiboloBChorleyBChippendaleBCheshamBChemnitzB
Cedar ParkB
Cedar HillBCayceBCasselberryBCape MayBCape GirardeauBCampbell RiverBCamasB
CaerphillyBButteBBurnieBBroxburnB
BrownsburgB
BrookfieldBBrisbane CentralB
BratislavaBBlock IslandB
BlainvilleB	BlackwoodB
Big SpringB	BelvidereBBellwoodBBayonneB	Bay ShoreBBartlettBBarrowBBamakoBBaldwin ParkBBainbridge IslandBBadajozBArushaBAptosBApiaBAnconaBAlvaradoBAlteaBAlbaceteB
AlamogordoBAjaxB	AbondanceB90650B	ZacatecasBYosemite VillageBYokohama-shiBYeovilBYellowknifeBYardleyBYanktonBYadkinvilleBWorcestershireBWoodsideBWoodland ParkBWolcottBWinthropBWinstedBWinooskiB	WinnsboroBWinnetkaBWinfieldBWilsonvilleBWilmetteBWillmarBWicklowBWhitmore LakeB
WhitehouseBWheelingBWheat RidgeB	WhangareiBWestmontBWestfordBWest VancouverBWest SpringfieldB	West LinnBWest IndianapolisBWelwyn Garden CityB	WellsboroBWeirtonBWeavervilleBWarrnamboolBWallingfordB	WalkertonB
VästeråsBVilla RidgeB
Villa RicaB
VermillionBVenloBVaranasiBValley VillageBUpper MarlboroBUpper DarbyBUclueletBTyne and WearB
TwickenhamB	TullamoreBTukwilaBTorreónBTiffinBThree HillsBThomsonB
TerrebonneBTecumsehBTavaresBTalentBTakaoka-shiB
Tahoe CityBSydney SouthB
SwampscottBSuwaneeBSulmonaBSuffernB
StoningtonB
St. HelenaBSpring ValleyBSouthseaBSouth wirralBSouth TitusvilleBSouth SuperiorBSouth BronxB
SnellvilleB	SmithtownB
SmithfieldBSligoBSitkaBSinaloaBSierra MadreBSidneyBShoreham-by-SeaBShakopeeBSeki-shiBScottsbluffBSchöneiche bei BerlinBSchweizBSatellite BeachB	San RamonBSan IgnacioBSaitama-shiB
Sag HarborBSafety HarborBSaarBS. Cristobal de Las CasasBRzeszówBRomanBRoermondBRochdaleBRoaring RiverBRiponB
RichardsonBRhylBRenfrewshireB
ReidsvilleBReggio di CalabriaBRed HookB
QueensburyBQinhuangdaoBProsserBPrienBPrescotBPrahranBPortoBPortalesBPort AlberniB
PontypriddBPlauenBPikes Peak ParkBPictonBPerth AmboyB
PenningtonBPattonBPassaicB
ParsippanyBParoB
ParamariboBPaoniaBPalm DesertBPalatkaBPagosa SpringsB	OsnabruckBOsceolaBOrleansB
OrangeburgBOlive BranchB
OkeechobeeBOkanaganBOakdaleBNorwoodBNorthboroughBNorth VancouverBNorth TopekaBNorth SeattleBNorth RoyaltonBNorth RidgevilleB
North PortBNewburyBNewbergBNew HartfordBNew BrightonBNeah BayBNational CityBNarvarteBNanjingBMount ProspectB
MonticelloBMonmouthB	MichoacanBMetuchenBMenomonee FallsBMedinaBMechelenB	MeadvilleB
McleodganjB	MaysvilleBMassaB
Mason CityB
MarshfieldBMaroochydoreBMarlboroughBMarcus HookBMaple RidgeBMaple GroveBMantecaBMalindiBLutzBLusbyB	LumbertonBLudlowB
Los MochisB	Los BanosBLorainBLopez IslandBLongwoodBLongboat KeyB
LoganvilleBLloydminsterB	LlandudnoB
LindenbergBLimogesBLilongweBLillehammerBLeigh-on-SeaBLeanderBLavalBLaurensBLarkspurBLancingB
Lake OrionBLake ItascaBLake HopatcongBLake ElsinoreB	Lake CityBLa PineBLa PalmaBLa MesaBKuchingBKrąkówBKoldingBKnob NosterBKisumuBKinnelonBKingswinfordBKing of PrussiaBKilsythBKhersonBKernersvilleB
KerhonksonBKemptenBKelsoBKellerB
KarlskronaBJüchenB	June LakeBJohnstonB
JingdezhenBJeromeB
Iver HeathBIssaquahB
IslamoradaB
Isla VistaB	IrvingtonBIron MountainBIpsdenBInvercargillBInterlochenB
India GateBIdyllwild-Pine CoveBHälsingborgBHurlburt FieldBHuntersvilleBHoxtonB
HorseheadsBHopkinsBHolmdelBHoffman EstatesBHimejiBHilliardB
HildesheimBHibbingB
Hervey BayBHerefordshireBHerculesBHemel HempsteadBHeerlenB
Heber CityB	HavertownB	HaverhillBHauserBHartlandBHarrowBHarfordBHarareBHannibalBHanfordBHalmstadBHackneyBGómez PalacioBGreater Echo Park ElysianB	GrapevineBGrand BlancBGranada HillsB	Glen CoveBGijónBGiessenBGemeinde OffenburgBGardnerBGallupB
FårösundBFrozardBFriedrichshafenB
FrenchtownBFreetownBFranklin LakesBFort St. JohnBForest ParkBForest GroveBFinsbury ParkBFernleyB	FelinfachB
FarmingtonBFalunB
FalköpingB
FalkenbergBEvansBEulessBEuclidBErkrathBErfurtBEphrataBEmmettBElbertonB	El CentroBEdinboroBEdentonBEast SumterBEast ProvidenceBEast Palo AltoBEast OrangeBEast LongmeadowBEast LiverpoolBEast HaddamBEast DerehamBEagleBDunsboroughBDumasBDubboBDroghedaBDowagiacBDouglassB	DordrechtBDijonBDeltaBDecorahBDaphneBDamascusBCzęstochowaBCroydonBCreswellBCorydonBCorinthBCopperas CoveBCopalis BeachBCommackB	ColeraineBCluj-NapocaBClemsonBChisinauBChicopeeB	CerveteriB	CentraliaBCentervilleBCelinaBCave JunctionB	CathlametBCastelmassaBCarthageBCape CanaveralBCannockB	CaloundraB	CallicoonBCagliBCadillacBCadenetBBunburyBBukit MertajamBBukavuBBufordBBucklandBBrooklyn ParkBBrestBBrenhamBBredaBBrasilBBourgoin-JallieuBBorrego SpringsB	BlakesleeBBisbeeBBiellaB
BettendorfBBergenfieldBBelmarBBelize CityBBelgiumB
BedminsterBBedford-StuyvesantBBecketBBeaver FallsB
BatesvilleBBassano del GrappaB
BarnstableB	BangaloreBBaja CaliforniaB
AuburndaleBAssisiBArmidaleBArdsleyBAranjuezBAntananarivoBAnnistonB	AnnandaleB	AngoulemeBAmesburyBAlohaBAlmereBAlburyBAlbaBAlamoBAjoBAhwatukee FoothillsBAccokeekBAalenB99352B11207B
ÖstersundBÖrnsköldsvikBÉtretatB	ZhongshanBYukonBYateleyBYaoundeB
WädenswilBWynwoodBWylieBWuhanB	WoodstownB	WoodhavenBWoodburnB	WolfvilleBWoking BoroughBWitneyB
WinterthurBWilmoreBWillitsBWilliamstonBWhitley BayBWhite MarshB
WestcliffeBWestburyBWest TorontoBWest RichlandBWest NorwoodBWest New YorkB
West HillsBWellandBWeldonBWeil am RheinBWaverlyB
Warr AcresB
WarminsterBWarehamBWallBWalkerBVolcanoBVoironBVlodropBVineyard HavenB
Villa ParkBVernalB	VergennesBVerdunBVentnor CityBUxbridgeBUsterBUpper East SideBTurtle LakeBTurnerBTurlockBTulumBTruth Or ConsequencesB
TrowbridgeB	TroutdaleBTrollhattanBTripoliBTopangaBTivoliBTigardBThunBThornton-cleveleysBThimphuB
The DallesBTequilaBTepicBTeninoB	TehachapiBTarzanaBTampereB	TambopataB
Tajimi-shiBTai Po Old MarketBSylmarB
Swan RiverBSuperiorBSunriseB	SunnysideBSumnerB	SummerlinB
SummerlandBStrongsvilleBStreetsboroB	StraubingB
Storm LakeBStony BrookBStockton-on-TeesBStewartsvilleBSteubenvilleBStephenvilleBStellenboschB	SteinbachB
SteilacoomBStanwoodBStadtteil StadtwaldB
St. PetersB	St. NeotsB	St. MarysB
St. HelensBSt. FrancisBSquamishBSpruce GroveBSouth SeattleBSouth FarmingdaleBSouth BostonBSophia AntipolisBSomersworthBSolonBSleepy HollowBSlagelseB	SkowheganB	SkaelskorBSiracusaBSionB	SilvertonBSibiuBShetland IslandsBShellharbourBShaver LakeBSharpsvilleBShaker HeightsBSeminoleBSeafordBScituateB
SaugertiesBSaratogaB	SantanderBSandy SpringsBSandersvilleBSan'aB	San PabloBSan JoaquinBSan JacintoB	San DimasBSaffordBSacoBRío GallegosBRutland CountyBRouyn-NorandaB	RostrevorB	RosenheimBRomseyB	RiverviewBRipleyB
RidgecrestBRiddlevilleBRialtoB
ReutlingenB	RendsburgB	RemscheidBRavenscourt ParkBRatisbonB
RamsbottomBRamonaBRadfordBQuanticoB	PyongyangBPugliaBProsperBPrince WilliamBPrince EdwardBPrilepBPreston HollowB
PrattvilleBPort LavacaBPopayánBPonte Vedra BeachB
Plant CityB
PlainvilleBPinckneyBPigeon ForgeBPiermontBPhuketBPhenix CityBPharrBPesaroB	PentictonBPelhamBPeabodyB
PascagoulaBPapeeteBPahrumpBOwossoB
Owen SoundBOwegoBOtrantoBOsteenBOnishiBOliverBOkayamaB
OgdensburgB	OffenburgB	OffenbachB
OconomowocBOcoeeBObanBOaklynBOakhamBOakfieldBOak LawnB
Oak HarborBO'fallonBNovi SadBNoviBNortonBNorthernBNorth Richland HillsBNorth McalesterBNorth MankatoBNorth HavenBNorth CantonBNorrfjärdenBNodaB
Nishio-shiBNishinomiyaB	NinilchikBNewtown SquareBNewton FallsBNewbury ParkBNew Hyde ParkBNew CumberlandB	NevşehirBNeenahBNecheBNavapolatskB	NaugatuckBNatickBNarrowsburgBNarberthBNapierBNanningBNamurBNE PortlandBMustangBMurphyBMt KatahdinBMount RainierBMount PoconoBMount KiscoB	Mount IsaBMount CoolumB
Mount AiryBMostarBMoshiBMorteauBMorrisBMordenBMoragaBMooloolah ValleyBMonzaB	MontvilleBMontreal WestB	MontesanoBMont-Tremblant-VillageBMoniaiveBMonheganBMonetaBMolallaB	MillvilleBMilletB	MillbrookBMillbraeB
Mill CreekB	Milky-WayBMethuenBMerrit IslandBMerida CentroBMequonBMediaBMechanicsvilleBMckinleyvilleB	MazatlánB	MatsuyamaBMateraBMasakaBMartins FerryBMarnay-sur-SeineBMarcq-en-BarœulBMaputoB	ManitowocB
MandevilleB
MamaroneckBMae Hong SonBMaderaBLyonsBLynwoodB	LymingtonB	LuxemburgB	LouisianaBLonsdaleBLong BranchBLombokBLombardBLogronoBLodwarBLittle FerryBLithoniaBLindonBLindenBLigonierBLiestalBLeslieBLeonBLennoxB
Le PescherBLaveenBLaurence HarborBLathamBLas Palmas de Gran CanariaB	LarchmontBLapeerBLandshutBLakeviewB
Lake WalesBLake StevensBLake GenevaBLahoreBLagrangevilleBLa SalleB	La PuenteBLa Canada FlintridgeBL'AquilaBKreppenBKobe-shiB	KnutsfordBKnaresboroughB	KingsburyB	KingsburgBKingmanB	KillarneyBKill Devil HillsBKeyportBKerikeriB	KennebunkBKatrineholmB	KatherineBKapoleiBKamakuraBKalmarBJuárezBJohor BaharuBJohorBJenaBJeddahBJaénB
IxtapalucaBIsle of lewisBIrelandBIrapuatoBInwoodBInterlachenB	HüfingenB	HyderabadBHvidovreB	HopatcongBHooverBHoneoye FallsBHollisBHolidayBHitchinB	HiroshimaBHinckleyBHighlands RanchBHertfordBHerrimanB	HermitageB	HermistonBHennikerBHemmingfordB	HelsingorB	HeilbronnB	HaymarketB	HaugesundBHastings HudsonBHasbrouck HeightsBHarvestBHarvardB	HarlingenB	HampsteadBHamilton SquareBHallettsvilleBHaines CityBHaileyB	GünzburgBGwyneddBGuernevilleB	GuayaquilBGstaadBGreenwood VillageB	GreenbankB
GreenacresBGreater Upper MarlboroBGreat YarmouthBGreat MissendenBGreat MillsBGreat MalvernBGranthamBGranburyBGowanusBGlenwood SpringsBGlenviewBGlenomaB
Glen RidgeBGladbeckBGilbertsvilleB	GibraltarBGemeinde KaiserseschBGarvaghBGaltBGalaxB	Fukui-shiBFriendswoodBFreeholdBFredrikstadB
FredericiaBFranklintonBFort MadisonBForked RiverBFogelsvilleBFlorissant Old TownBFlorida CenterB	Flat RockBFigueresBFernieBFergusonBFarmingdaleBFanoB	FairgroveBEsteponaB
EskilstunaBErrolBErmuaBErlangerBErbilBEnniskillenBEnfieldBEmmausBElkinsBElk Grove VillageBElizabeth CityBElephant and CastleB	EislingenBEidsvollBEdenBEchizen-shiBEcatepec de MorelosB	EastsoundBEast TorontoBEast St. LouisBEast MolineBEast MeadowBEast LondonBEast DurhamBEalingBDuvallBDunellenBDulwichBDuboisB
DriebergenBDowningtownB
Dodge CityBDissBDingleBDicksonBDeurneBDesert Hot SpringsBDelaware CityBDel Monte ForestBDefianceBDeerwoodBDe PereBDartfordBDarienBDaltonBDaculaBCurepipeB
CumberlandBCullmanBCulbokieBCuautitlánBCranfordBCottage GroveB	CorsicanaBCorozalB
CoromandelBCorbettBConyersBColneBCollege PlaceBCoffs HarbourBClinton HillB	ClayoquotB	ChurchillBChubbuckBChristiansburgBChinaBChewelahBChestnut Hill Historic DistrictBCherokeeBCheneyBCharles TownB	CharleroiB	ChappaquaBChanasBChambersburgBCertaldoBCentral IslipBCartagoB
CarmarthenB	CarlstadtBCardiff-by-the-SeaBCanyon LakeBCanoga ParkBCaleraBByhaliaBBuxtonBBulverdeBBueaBBuderimBBrühlBBräunlingenB
BrookvilleBBrooklinB
BrookhavenB
BronxvilleBBrixleggBBridgtonBBreckenridgeB	BrasíliaBBrasovB	BracknellBBowBBoråsBBornholmB
BordentownBBoontonBBondi BeachBBodminBBlantyreB
BlackheathBBlack MountainBBispgårdenBBiarritzBBethpageBBesanconBBerkeley SpringsBBellmoreBBellmeadBBellaireBBeauvechainBBearBBayvilleBBataviaBBarrow-in-FurnessB	BarbertonBBalingenBBakewellBBakersvilleBBaileyBBaghdadBAyerBAvignonBAuckland CentralBAuburn HillsBAsuncionBAssenB	AshtabulaBAshfordBArroyo GrandeBArgyll and ButeBArdmoreB	ApplegateB	AntioquiaBAntibesBAnthemBAnsoniaBAngwinBAmiensBAmblerBAltusBAltadenaBAlpenaBAllstonBAlloaBAllianceBAlkmaarB	AlexandraB	AdamstownBAdaBAbujaBAalstB99950B54495B02133BŁódźBÅtvidabergBÅreBZettenB
ZanesvilleBZamora de HidalgoB	ZakynthosBYokohamaBYermoBYdre NorrebroBYarmouthB	YamanashiB
WrightwoodBWorthingtonB
WoonsocketB	WoodvilleBWoodford HalseBWoodcliff LakeBWokingBWinslowB
WinneconneBWinamacBWillimanticBWilliamsB
WilkesboroBWildwoodBWiener NeustadtBWien  5BWicker ParkB
WhitewaterB
WhitesboroB	WhakaparaBWeyburnBWestlake VillageBWestlakeBWest WorthingBWest WarehamBWest SeattleB
West PointBWest PlainsBWest IpswichBWest GreenwichBWest FultonBWest BranchBWernersvilleBWendoverBWeil der StadtB	WeehawkenBWeedonBWedelBWebsterBWaynokaBWaylandBWaycrossBWatsonvilleBWaterford WorksBWarrensburgBWarfordsburgB
WapakonetaBWanakaB
WaitsfieldBWaikoloaBWaikikiBWaihi BeachB
WaiblingenBWahiawaBVöcklabruckBVäxjöB	VrindavanBVineyardB
VinalhavenBVilafranca del PenedèsB	VicksburgBViborgBVergasBVenneslaBVenaria RealeBVelletriBVarbergBVan AlstyneBValley StreamB
VallecitosBVallecasBValenceB	ValdemoroBUtuadoBUrtBUpper SlaughterBUniversity HeightsBUnion SquareB
Union CityBUlluwatuBUintahB
Udon ThaniBUckfieldBTyroneBTyndallB
Two RiversB	TwinsburgBTurnhoutBTulancingo de BravoBTryonBTrumansburgBTroodosBTronaBTroisviergesB	TroisdorfBTrinidadBTrevoseBTreorchyBTraleeBToulonBTopshamBTooeleB	TonbridgeBTonasketBToluca de LerdoBTlaxcalaB
TimberlakeBTildenB
Three OaksBThousand PalmsBThorntonBThoreauB
ThionvilleBThief River FallsBThe Scottish BordersB
The PlainsBThanet DistrictBTerrassaBTepotzotlánBTensedBTennilleBTenbyBTemucoBTellico PlainsBTegucigalpaBTecopaBTakayama-shiBTainan CityB	TagouniteB
SwedesboroB
SwarthmoreBSwanzeyBSwanageBSuzhouBSurbitonBSunneBSuncookBSun PrairieBSummersvilleBSultanBSuitlandBSuisseB
Sugar HillB
SuccasunnaB	StranraerBStrabaneB	StornowayBStonehamBStoke NewingtonBStiaBStewartstownB	StevenageBSteinhausenBSte.-MaximeBStara ZagoraBStadeBSt.-AvreBSt. Pete BeachBSt. JohnsburyBSt. AugustaBSt KildaBSquaw ValleyBSpruce PineBSpoletoB	SplendoraB	SouthwoldB	SoutheastB	SouthburyBSouthbridgeBSouthboroughBSouth YarmouthBSouth WindhamBSouth TampaBSouth ShieldsBSouth NorwalkB
South GateBSouth BrunswickBSouth BrisbaneBSouth AmboyBSouth AltoonaBSomers PointBSoltauBSohoBSoestBSlingerBSkövdeBSkopelosBSitgesBSilver CityB
Silver BayBSidmouthBShort HillsB	ShorewoodBShirleyBShippensburgBShiojiri-shiB
SheppertonB
ShenandoahBSheet HarbourB
ShawiniganB
ShavertownB
SharnbrookBShardlowBShamongBShafterBSevernBSelmerBSeldenBSelahBSebringB
Seal BeachB	SeagravesBScugogBScottsvilleBSchwerinBSchwarzwaldBSchriesheimBSchaffhausenB	ScandicciBSayvilleBSawtellBSavonaB	SassinoroB
SassenbergBSaranac LakeB
Sant MaureB
San YsidroBSan Pedro CholulaBSan Luis PotosiBSan LuisBSan Cristóbal de la LagunaBSam Roi YotBSaludaB
Salmon ArmBSalmoBSaleBSainte-Anne-de-BellevueB
Saint-PaulBSaint-EtienneBSado-shiB
SabinillasBSabadellBS PietruBRutherfordtonBRussellBRugeleyBRugbyBRoyal Palm BeachBRowlettB	RovaniemiBRothburyBRostockBRoselleBRoseberyBRoseauB	RoscommonBRosarioBRomeoBRomblonBRollaBRohrbachBRocky PointB
Rocky HillBRockmartB	Rock HallBRobertsdaleBRobbinsvilleBRiviera BeachB	RiverbankBRiver RougeB
River EdgeBRivasBRiva del GardaB
RingkobingB	RidgelandBRichmond HillB	RichlandsBRichboroBRhododendronBRheurdtBResedaBRepublicBReptonBRehobothBRedwayBRed WingBRaytownBRangeleyB	Ramat GanBRainbowB	RadcliffeBQualicum BeachB
QuakertownBPymbleBPunta ArenasBPulaskiB
Prior LakeBPrinsenbeekBPrairie LeaBPortneufB
PortisheadB	PorthcawlB	PortadownBPort-VendresBPort Jefferson StationB
PorrentruyBPornicBPoplar BluffBPontotocB
PontarlierBPonce de LeonB
Ponca CityBPollock PinesBPolicoroBPolegateB	PoincianaBPlaya Del ReyBPlacitasBPiove di SaccoB	PinehurstBPine Ridge ReservationBPierre PartBPienzaBPhilmontB	PetershamBPeruB
PerryvilleBPernes-les-FontainesBPensacola BeachBPenn YanB	PendletonBPembrokeshire CountyBPecan GroveBPearl RiverBPeaks IslandBPeachtree CornersBPawhuskaBPaviaBPatrasBParrottB
Park SlopeBParamusB	PapillionBPapendrechtB
Palm BeachBPadulBPaduaBOverijseBOurenseBOssipeeB
OrwigsburgBOrmskirkBOregonBOneidaBOlneyBOleanBOld Town VictorvilleB	Old ForgeBOlallaBOcontoB	Oak CliffBNuwara EliyaB
Nuevo LeonBNovaraBNorwellBNorwayB	NorthwoodBNortheast Colorado SpringsB
NorthbrookBNorth ReadingBNorth PlatteBNorth MassapequaBNorth Las VegasBNorth IronwoodBNorth DenverBNorth DallasBNorth ConwayBNorth ChicagoBNorth ChattanoogaBNorth AndoverB	NordfjordBNorderstedtBNishinomiya-shiBNingboBNilesBNicholvilleB	NgunnawalBNewryBNewfaneBNew WindsorBNew UlmBNew RichmondBNew Orleans EastB
New MiltonBNew HopeBNew Forest DistrictBNeptuneBNepalBNeoshoB
NellysfordBNavojoaBNavanBNauvooBNaucalpan de JuárezBNatchitochesBNarvikBNarbonneB	Nanty GloBNantou CityBNakuspBNaestvedBNablusBNaardenBMölleBMâconBMysticB	MussoorieBMuskokaBMurwillumbahBMurrells InletB	MurchisonBMunchengladbachBMullumbimbyBMountain Home VillageBMount TremperBMount MaunganuiBMount HealthyBMount ElizaB
Moses LakeBMortons GapBMorrisvilleBMoroccoBMorelia CentroB	MorecambeBMontréal-NordBMontrossBMontreuxB
MontecortoB
MontebelloBMonte VerdeBMonte AmiataBMontauk BeachBMombasaBMohntonBMiraniBMineral WellsBMineolaBMindenB	MilwaukieB	MillgroveBMillersburgBMillers TavernBMiddletown SpringsB	MiddletonB
MiddleportB
MiddleburgBMiddle IslandBMid MissouriBMichianaBMestreBMerignacBMeridaBMercerBMeranBMentorBMentonBMenaBMelroseBMellrichstadtBMedwayB
MckeesportBMccookBMayoBMaurBMasonBMascotBMaryland HeightsBMarstalBMarshalltownBMarneuliB	MarlintonBMarinaBMarengoBMarbellaB	MaranelloBMapletonBManteoBManosqueB	ManizalesBManheimBMandanBManayunkBMae SotBMackinawBMackay CentralBMacchupicchoB
MaasbrachtB	LüneburgB
LångasjöBLyndonB	LyndhurstBLynbrookBLuverneBLoxleyBLouthBLouriçal do CampoBLoudonvilleBLouangphrabangB	LongreachB
LongniddryBLondon Borough of Tower HamletsBLondon Borough of HaringeyBLokerenB
LogansportBLleidaBLittle SaigonBLinières-BoutonBLindsideBLincoln ParkBLinaresBLimonestBLimerick CenterBLiberiaBLeonardtownBLensBLelystadBLeipzig ZentrumBLeighton BuzzardBLedyardBLeccoBLeavenworthBLeadville JunctionB	Le MarcheBLe LocleBLe Bois-Plage-en-RéBLawsonB
LauderhillBLas Vigas de Ramirez CentroB	LansdowneB
LangenhahnB
LandskronaBLanderBLakeportBLake in the HillsBLake PlacidBLake KatrineBLake BalboaBLaconiaBLa VistaB	La VergneBLa RochelleBLa Roca del VallèsBLAXB	Kỳ SơnB
Kwai ChungB	KrommenieBKrempeBKochiaBKoblenzBKirkwoodBKirkintillochBKingwoodB
KingsvilleBKingsleyBKings LangleyB	KimberleyBKilgoreBKildareB	Kfar SavaB	Key LargoBKepnockBKennett SquareB	KennedaleBKenmoreB
KenilworthBKenaiBKeighleyB
KeerbergenBKearneysvilleB
KaufbeurenBKatowiceBKarachiBKanoBKamuelaBKampong ChnangBKalamataBJuneeBJuarezBJohn o'GroatsBJohn DayBJinjaBJinanB
Jim ThorpeBJerseyBJensen BeachBJeju-SiBJeffersonvilleBJalapa de EnriquezBJalapa EnríquezBJackson HeightsBIzmirBIwakuni-shiBIsantiBIrunBIrrigonBIronwoodB	InverurieBInezBIndianaBIndian LandBIncline VillageB
IlfracombeBIlawaBIgualadaB
HärkingenBHyogoBHurstBHuntingdon ValleyBHunnebostrandBHumboldtBHughsonBHughesvilleBHudsonvilleBHuber HeightsBHubbardB	HotchkissB
HornchurchBHornby IslandBHopewell JunctionB	HookstownBHoney GroveBHonaunauB	HomosassaBHomewoodB	HomesteadB
HoltsvilleBHoldenBHolbrookB	HockessinBHistoric Fort CollinsB	HinesburgBHighgateBHidden Valley LakeB
HicksvilleBHerrsching am AmmerseeBHenley on ThamesB	HempsteadB	HelmstedtBHellevoetsluisB
HellertownBHellB	HeinsbergBHefeiBHeart of MissoulaB
Hazel ParkBHatterasB	HartselleBHarerBHancockBHamlin ParkBHamburg-NordB
HallandaleBHalf Moon BayBHakodate-shiBHailshamBHaddonfieldBHackney CentralBHackettstownBGħarbB	GrovelandB	GrindstedB
GreystonesBGreenwich VillageBGreen Valley LakeB	GravesendBGrassy CreekB
GrandvilleBGrand CoteauBGradaraB
GouverneurBGoslarBGosfordBGoose CreekBGonzalesB
GoldendaleB
GlenrothesBGlen CarbonB	GladstoneBGjovikBGivat Shemu'elBGirdwoodBGirardBGilroyBGilletteBGibsonsBGermersheimBGenarpBGemeinde StralsundB	GarrabostBGarnerBGardnervilleBGardnersBGallowayB
GallipolisBGabriolaBGaboroneBFürthBFuzhouB	FunkstownB	FukushimaBFredericktownB
FrauenfeldB	FranconiaBFountain HillsBFountainBFort WashingtonB	Fort PolkBFort PierceB	Fort MillB
Fort DavisBFort AtkinsonBForfarBFoggiaBFloydB	FlossmoorBFlorianopolisBFlodaBFleetBFlandersBFishers IslandBFire IslandBFilzmoosBFillmoreBFerrumB	FennvilleBFederal HeightsBFanwoodBFalsetBFairplayBExmouthB
EvergladesBEuropaBEudoraBEstelíBErwinBEnumclawBEnnisB	EnnepetalBEngenBEnderbyBEncinoBElyriaBElyBElxBElversonBElsecarBElsahBEloyBElmwood ParkBElmvaleBElmhurstB	EllsworthB	EllenwoodB	EllavilleBElkviewBElizabethtonBEliotB	El MirageB	El DoradoBEksjöBEitorfBEdinaBEdgardBEast WindsorBEast WilliamsburgBEast SydneyB
East PointBEast NorritonB
East IslipBEast ChicagoB
East BurkeBEast ArmidaleBEasleyBEagarBDürenBDéniaBDupont CircleB	DunstableBDunshaughlinBDumfries and GallowayBDrainBDracutBDowntown HamtramckBDowntownBDover-FoxcroftB
DouarnenezBDornbirnBDonostia-San SebastiánBDohaBDillonBDiestBDetroit LakesBDesotoBDenvilleBDenisonB	DelaplaneB
Deep RiverBDeadwoodBDavisonBDarwenBDagenhamB	Dade CityB	CynthianaBCut OffBCussetaBCuneoBCulpeperBCrystal CityBCrown HeightsBCromwellBCrawleyBCradley HeathB	CourtenayB
Coulee DamBCotswold DistrictBCos CobBCortonaBCorte MaderaBCorollaB	CornvilleB
CoralvilleBCopenhagen CentralBCoon RapidsBCoolB	CookstownBConnersvilleBCondonBComptonBCommerce Charter TownshipBCominesB
Colwyn BayBColtonBColorado PlaceBColonial HeightsBCollingwoodBColfaxB	ColebrookBCohassetB
CochabambaBCobourgBCobarB	CoalvilleB	CoachellaBClos-FontaineB	ClitheroeBClioBClintonvilleBClifton ForgeBClichyB	ClearlakeB
Clear LakeB
ClarkrangeBClarendon HillsBClarenceBClaphamBClairtonB	ClackamasBCividale del FriuliBCiudad VictoriaBCitrus SpringsBCidraB	ChongqingBChiswickB
ChicoutimiB	ChickashaBChestertownBChesapeake BeachBChepstowBChehalisB
ChanhassenBChamonix-Mont-BlancBCenter HarborBCeljeB	CazenoviaBCatonsvilleB	CastletonB	CastenasoBCastanheira de PêraB
CassopolisBCasinoBCaseyBCartersvilleBCarpinteriaBCarpiBCarolina BeachBCarnelian BayBCarmichaelsBCarbostBCarboniaB	CapraficoBCaplanBCap-HaïtienBCanmoreBCanberra City CentreBCanajoharieBCampbellvilleB
Camp VerdeBCamp LejeuneB	CamdentonBCamborneB
CamberwellBCalarcáBCalaisB	Cabo RojoB	BylakuppeBBussumBBusanBBurlesonBBurleigh HeadsBBurkburnettBBurgess HillBBuelltonB	Budd LakeBBuckieB
BuckhannonBBuchananBBryantBBrowns ValleyBBronxville HeightsBBromontBBrommaBBrocktonB	BrighouseBBrigham CityBBrierBBrielleBBridlingtonB
BridgwaterBBretagneBBrechtB	BraseltonBBramanBBrailaB	BoyertownBBoxtelBBourg-lès-ValenceBBound BrookB	BoonvilleBBonhamBBoneBBolivarBBogue ChittoBBognor RegisBBodrumB
BlythewoodB	BluffdaleBBlue SulphurBBlue MountainB
BloomsburyB	BloenduosBBlenheimBBlairgowrieB	BlackfootBBlackburn with DarwenBBlack EarthBBishop's StortfordB
Big TimberBBig LakeBBig Bear CityB	BielefeldBBicesterBBełżecBBeverenBBethaltoBBergen op ZoomBBerchtesgadenBBenton HarborB
BenahavísB
Ben LomondB	BelvedereB
BeltsvilleBBelperBBelo HorizonteB
BellinzonaBBella VistaB
BeamsvilleBBealetonB	BeachwoodB	Bay PointBBattersea ParkB	BatterseaB
BarnstapleBBarnegatBBardejovB
BarañáinBBandungBBamako KouraBBaldivisBBabson ParkBBaBAvonB
AustintownBAustellBAtlantic BeachB
AssendelftBAschaffenburgBArroyo SecoBArnoldBArmaBAritonBArctic VillageBArbelB
AppomattoxB	ApalachinBAntigua GuatemalaBAnnapolis RoyalBAnnandale-on-HudsonBAnnabergBAnkaraBAngolaBAndriaBAndrewsBAnchor PointBAmherstburgB	AmagerbroBAlvinBAlphabet CityBAlmeloBAllistonB	AghadoweyBAgawamB
AdirondackBAdenBAcworthBAcqui TermeBAccidentBAbergavennyBAberdeenshireB94590B91732B84098B78745B77380B76140B75460B71270B55112B53051B48325B47630B45069B41101B31503B30720B30160B28152B23454B11201B10009B10002B08077BÉpinalBÅkersbergaBÄlmhultBfukuokaBZwickauBZugB
ZuccarelloBZonhovenB	Zona RosaB
ZoetermeerBZionBZiliaB
ZiguinchorBZevenbergenBZeelandBZacharoBYxnerumBYuriria CentroBYuleeBYpresB	YoungtownBYoungsvilleBYoung HarrisBYosemite WestB	YorkvilleBYorktownBYoqneam IllitBYmuidenBYeppoonB	YellvilleBYellowstoneBYautepecBYanbianBYakutskBWłocławekB
WythevilleBWynnumBWynantskillBWunstorfBWrightsville BeachB	WrenshallB
WoudenbergB	WorpswedeBWoolloomoolooB
Woods HoleB	WokinghamBWodongaBWixomBWittenberg LutherstadtBWitrogoszczBWishawBWisconsin DellsB	WiscassetBWisbechB
WirksworthBWintersB
WinnemuccaBWinklerBWindomBWinderBWindberB	WimbledonB
WilwisheimB	WillowickBWillow GroveBWillowBWillisBWillichBWilliamsvilleBWilkesonBWildwood CrestBWijk bij DuurstedeBWien 18BWien 16BWien 11B	WickliffeB
WickenburgBWhyallaB
WhitstableBWhitney PortalBWhitmoreB
WhitestoneB
WhitefieldBWhite SettlementBWhite SalmonBWhippanyBWhangaparaoaB	WeybridgeB	WestvilleBWestcliff-on-seaBWestbyBWestboroBWest VillageBWest ToledoB
West TexasBWest PhoenixB
West PascoBWest OaklandBWest NorwalkBWest NewburyBWest MysticBWest LynchburgBWest Lake WalesB
West IslipB
West HavenB
West FargoBWest End AnnistonBWest EndBWest DecaturBWest Boothbay HarborBWest BloomfieldBWest Battle GroundB
West AllisB
West AkronB
WentzvilleBWelsBWellsBWellingboroughBWeitraBWeirs BeachBWegbergB
WednesburyBWebster CityBWaxhawBWawakaBWaupacaBWatkinsvilleB
WathlingenBWaterloovilleB	WaterdownBWatchemBWasecaBWasaga BeachB	WarendorfBWapatoBWantaghBWanganuiBWalton-on-thamesBWalthamstow CentralB
WalnutportBWalkersvilleB	WaldoboroBWaldmohrB
WaldenburgB	WalbertonBWailuaBWahpetonBWagga WaggaBWadhurstB
WadebridgeBWaalwijkBVuisseBVredenBVranyaBVolterraBVoditsaB	VinnytsyaB	VincennesBVilla de AlvarezBVilla Gustavo A. MaderoB	VildbjergBVilchesBViet TriBVichyBVicBVibo ValentiaBVestalBVerviersB	VerolengoBVernoniaBVernon HillsBVernierB	VerdigrisBVerdenBVentimigliaBVelika KladuµaBVelenjeB
VegrevilleBVechtaBVatersayB
VassalboroBVarelB
VanderhoofBVandaliaBVan DyneBValricoBValley CityB
ValkenburgBValenciennesBValašské MeziříčíBVajontBUvaldeB	UttoxeterBUsticaBUrubambaBUrkBUrbinoB	UrbandaleB
Upton ParkBUpper ManhattanBUpper FreeholdBUniversity of MnBUniversity CityBUnited SouthwestBUnion BeachBUngerB	UnderwoodBUkiBTwo HarborsBTweed HeadsBTuxedoBTuskegeeBTuscolaB
TuscarawasB	TurrialbaBTuross HeadBTurkuBTupper LakeBTumutB
TumacacoriBTuluáBTultitlan de Mariano EscobedoBTultepecBTulambenBTulalipBTula de AllendeBTuerongBTualatinBTrzicBTrujilloBTroutmanBTroonBTriangleBTres CantosBTrentoBTravelers RestBTrapper CreekBTraniBTramelanBTracadieBTraben-TrarbachBTownsendB	TowcesterBTournaiB	TottenhamBToruńBTortoreto LidoBTorres del PaineBTorremolinosBToritBTorfaen County BoroughBToptonBTonopahBTonglingBTomskB	TombstoneBTomballB	TolentinoBTohokuBToddBToccoaB	ToamasinaB
TitchmarshBTiptonB	Tipp CityBTimminsBTimelkamBTimaru CentralBTimaruBTierra VerdeBTiburonBTibroB
TibooburraBThursoBThurmontB	ThurcroftBThree BridgesB	ThorndaleB	ThomastonB	ThibodauxBThe Bight SettlementsB	TewksburyB
TerryvilleBTerrigalB	TerlinguaBTeramoBTennant CreekBTenaflyB	Ten SleepBTemixcoBTega CayBTe PunaBTe PukeBTaylorsvilleBTaylorsBTasmanBTashkentBTarnówBTargu MuresBTarboroBTarascon-sur-AriègeBTarantoBTanjung TokongB	TamarindoBTamarinB	TallmadgeBTakarazuka-shiBSønderholmBSödertäljeBSyrosBSylvaniaBSydney CentralBSycamoreBSwisherB	SwannanoaBSwadlincoteBSvetlogorskB	SvendborgBSvalövB	Surf CityBSunshineBSunset ParkBSunapeeBSun CityB
SummersideBSulphurBSturgisBSturgeon BayB
StrömstadB	StruthersB
StrathmoreB	StrathdonBStrassenBStourbridgeBStony PointB	StonewallB
StonehouseBStoke-on-Trent CityBStodvarfjordurBStjärnsundBStiglerBStevenage BoroughBStemBSteenbergenBSte.-ÉlisabethBSte.-Rose-de-WatfordBSte.-Marie-MadeleineB
StarksboroBStaplehurstB	StansteadBStanleyvilleBStanleyBStanhopeBStainesBStadt FrankfurtBStacyBSt.-Étienne-de-BoltonBSt.-NicolasBSt.-Mathieu-du-ParcBSt.-Dié-des-VosgesB
St. RobertBSt. MichaelsB	St. JohnsBSt. JohnB
St. IgnaceBSt. Denis-WestremB	St. ClairBSt. AugustinB	St. AmantBSt-Élie-de-CaxtonBSt LuciaBSpurBSpring LakeBSpring GreenBSpiroBSpirit LakeB	SpetchleyBSperryvilleBSpenardBSpearfish CanyonBSparkillBSpanawayBSpainBSouthwest DenverBSouthwest Colorado SpringsBSoutholdBSoutheast PhiladelphiaBSoutheast AtlantaBSouthbourneBSouth WedgeBSouth TacomaBSouth SurreyBSouth SaskatoonBSouth SacramentoBSouth PottstownBSouth ParkersburgBSouth MilwaukeeBSouth MiamiBSouth MelbourneBSouth KingstownBSouth GoldsboroBSouth Glens FallsBSouth FindlayBSouth DenmarkBSouth DaytonaBSouth CoatesvilleBSouth ChicagoBSouth BurlingtonBSourisB	SoudertonBSoriaB	SopchoppyBSolvangBSolomonsBSololáBSolnaBSoldotnaB
SoerendonkBSoddy-DaisyB	SnowflakeBSleightsBSkokieBSkienBSkellefteåBSkegnessBSkarnesBSkamaniaBSkagwayBSittweBSindhupalchokB
SimrishamnBSimlaBSimcoeB
SilverlakeBSilsbeeB
Siler CityBSilaoBSifnosBSiegenBSidcupBShow LowBShorehamBShodoshima-choBShizuoka-shiBShimoniBShildonBShikokuchuo-shiBShibuyaB
SheppartonBSheepy ParvaBSheboygan FallsBShawanoBShawBShailer ParkBShaftesburyBShacklefordsBSeverna ParkBSevenoaks DistrictBSeven PointsBSeto-shiBSetauketB	SenteradaBSegmonB
Sede BoqerBSedaliaBSecaucusBSeaforthBScrevenBScotts ValleyBScotiaBSchwalmstadtB	SchwabachBSchofield BarracksBSchlangenbadBSchiedamBScheveningenBScandiaB
SaxonvilleBSawyerBSawstonBSavoieBSauteeBSarniaBSarinaBSapphireBSantiago de QueretaroBSantiago Tulantepec de LugoBSantiago AtitlánBSanteeB
Santa YnezBSanta Rosa BeachBSanta NinfaBSanta Lucia di PiaveB
Sandy MushB
Sandy HookBSan SebastiánBSan RemoBSan Miguel de CozumelBSan Marcos la LagunaB	San BrunoBSamish IslandBSambrevilleBSalvadorB	SaltcoatsBSaltburn-by-the-SeaB
SalobreñaBSalisbury EastBSalidaB	SalekhardBSaint JamesBSaguntoBSaffron WaldenBSachseBSabethaBSW PortlandBSE PortlandB	S. AndresBRusselsheimBRushdenB
Rural HallBRunning SpringsBRuncornBRumfordBRukumBRueil-MalmaisonBRuandaB'Royal Borough of Windsor and MaidenheadBRoundupB	Round TopBRough and ReadyB	RougemontBRottweilBRotorua CentralBRosslandB	RosemountBRoselle ParkBRosehillBRoseboroBRoscoeBRosaritoBRonseBRoncadeBRomneyBRomilly-sur-SeineB
RomeovilleB
RomanshornBRollinsfordBRoi EtBRohnert ParkB	RoeselareBRocktonB
RockinghamBRockhamptonBRocanville No 151BRobertsportBRobbinsdaleBRoanoke RapidsBRjukanBRizalBRivière-du-LoupB	RishikeshBRio Grande CityBRingstedB	RinchnachB
RijsbergenBRiemstBRidgwayBRidgewayBRidgeleyBRidgefield ParkB
RidderkerkBRichwoodBRichland HillsB	RichfieldBRhonddaBRhomeBResearch Triangle ParkB
RensselaerBRenesseBReinfeldB
RegensbergB
ReedsvilleB	ReedsportBRedwood ValleyBRedhillB
RedgraniteBRedfordBRedcliffBRedcarB	Red LodgeBRed LionB	ReadfieldB
RawalpindiBRaumaBRatoathBRathboneBRastokeB	RandlemanBRamadieB	Ram AllahBRagusaBRaglanBRaefordBRadevormwaldB
QuispamsisBQueens VillageBQuecheeBQuallaBQingdaoB
Put-In-BayB
PuntarenasBProspectBProcidaBPrinceton JunctionBPrince RupertBPretoriaBPratoBPrairie du SacBPrairieBPoza Rica de HidalgoBPowers LakeBPowells PointBPovertyB
PottsvilleBPotenzaBPortslade-by-SeaBPortreeB	PortorožB
PorthmadogB
PortaferryBPort WentworthBPort ShepstoneBPort NorrisBPort LaoiseBPort JeffersonBPort IsabelBPort HuenemeB
Port ByronB	PorspoderB	PorsgrunnB	PordenoneBPoolerBPontoiseB
PontevedraB
PontefractBPompton LakesBPolsonBPolignano a MareBPokharaBPlérinBPlum IslandBPloverB	PlouzanéBPloiestiBPleasant PrairieBPlayhouse SquareBPlattsmouthBPlattevilleBPlatoBPittstonBPipestemBPinoleBPingree GroveBPineroloBPinedaleB
Pine RiverB
Pine RidgeBPincourtBPilsenBPilbaraB
PikesvilleBPierreBPiedmontBPico RiveraBPiacenzaBPhoenixvilleB	PhoeniciaBPhinney RidgeBPeypinBPeterleeB	PescaderoBPerwezBPerryB	PepperellBPepinBPeostaB	PenthalazBPenroseBPenrithB	PenobscotBPeerBPecosBPearlingtonBPearlandBPearlBPeachtree CityB
Paya LebarBPawneeBPawletBPatrickB	PataskalaBPassauBPaseo Artists DistrictBPartilleBParosBParklandBParkgateBParkesBParkersburgB	ParagouldBParadiseBPalos Verdes EstatesBPalos HeightsBPalmettoB	Palm CityB	PalisadesBPaigeBPaducah MallBPacoimaB
Ozone ParkBOyugisB
Oyster BayBOxnard ShoresBOwassoBOvertownBOussouyeBOttumwaB	OttobrunnB
OtorohangaBOtavaloBOswestryBOsann-MonzelBOrvietoBOrsayBOrrvilleB	OrquevauxBOrkneyBOrindaBOrihuela CostaBOregon HouseBOrangevilleBOppBOostrozebekeBOnanoleBOnalaskaBOn Top of The WorldBOmmenBOlowaluBOld Town LompocBOld TownBOld PickensB
Old MysticBOkotoksBOkobojiB
OkehamptonBOkazaki-shiBOkanagan FallsBOjo CalienteBOgallalaBOelweinBOdense CentralBOcotilloBOcillaBOcean SpringsBOcean ShoresBOceanBOamaru CentralBOakleyBOakbankBO'neillB
NøtterøyB
NussbaumenBNuoroBNuevo LaredoBNueva AndalucíaB	Nowy TargBNovorossiyskB	NotasulgaBNosaraBNorthwest PhiladelphiaB	NorthwestBNorthern Cape RuralBNortheast WashingtonBNorthallertonBNorth WheelingBNorth TallahasseeBNorth SmithfieldBNorth Salt LakeBNorth RaleighBNorth PlainsBNorth ParramattaBNorth NashvilleBNorth Myrtle BeachBNorth LauderdaleBNorth HuntingdonBNorth HamptonBNorth GreenwichBNorth Fond du LacBNorth BrunswickBNorth BerwickBNorth BergenBNorth BellmoreBNorth AuburnBNordhornBNorcoBNoosa HeadsBNong Bua LamphuBNizhniy NovgorodBNitroB	NiskayunaBNipomoBNiortBNimitzBNiedersachswerfenBNewtownardsBNewton AycliffeBNewhavenBNewfoundlandBNewellBNewcastle WestBNewaygoBNewallaBNew TecumsethB	New RoadsBNew ProvidenceBNew LebanonBNew KentB
New HudsonBNew HollandBNew EnglandBNew CarlisleB
New CanaanBNew BethlehemB
New AthensBNeustadt an der WeinstraßeBNeustadt an der DonauBNerjaBNepiBNemeaBNelsonvilleBNegomboBNegleyBNazarethB	NavarrenxBNavajoBNashwaukBNarragansettBNapoleonvilleB	NantucketBNalinnesBNairneBNairnBNagpurB	MüllheimBMönchengladbach-NeuwerkBMéreauB	MykolayivBMuskegon HeightsBMurphysBMulvaneB	MullingarBMulhouseB	MukwonagoBMoyie SpringsB	MouseholeBMountain HomeBMount SterlingBMount HermonBMount GileadB
Mount DoraBMount BarkerBMount BaldyBMoundsB	MoulameinBMosgielBMoseleyBMortonBMorrison HillBMorissetBMorichesBMoriartyBMorganvilleB	MorgantonBMorconeBMoorparkBMoonahBMontréal-EstBMontoneBMontheyB
MontevalloBMonte SerenoBMontaukB	MontaubanB
MontalcinoBMontagueB	MonseliceBMonopoliBMonmouthshireBMonmouth JunctionBMonheimBMoncks CornerBMonacoBMolkomBMokenaBMoersB
MocksvilleBMitchellBMiraB	Mint HillBMingo JunctionBMineral PointBMinas GeraisBMiloB	MillstoneB	MillsboroBMillersvilleBMilledgevilleB
Milk RiverBMidwest CityB	MiddlesexBMiddlefieldB
MiddleboroBMiddle WallopBMiddle EarthB
MiddelburgB	MickletonB
MiamisburgB	MetzingenBMertertBMerrimacBMerrickBMerriamBMercer IslandBMentoneBMendhamBMedfieldBMebaneBMeadowlandsBMeadBMcleansboroB	McdonoughBMccordsvilleBMcconnelsvilleBMccallBMaywoodBMayhillBMayettaBMattoonBMatthewsBMattawaB	MatamorosBMastic BeachBMasticBMasterton CentralBMassyBMaserà di PadovaBMarseille-8e ArrondissementBMarrickvilleBMarphaBMarlowBMarket HarboroughBMarket DraytonBMarkdaleBMardinB	MarcelineB
MarbleheadBMaranhaoB	Mar VistaB	MaquoketaBManvelBMantenoBManorBManning ParkBManliusB
ManistiqueBMandalayBMancosBManchester-by-the-SeaB	MancelonaB	ManalapanBManakaraB
ManahawkinBMalvernBMalenyBMagnaBMadras StationB
MacksvilleB
MachupichoBMabankBMaarianhaminaBMaarB	LövestadBLönnebergaB	LéogâneBLytham St. Anne'sBLythamB
Lynn HavenBLydneyBLybsterBLuxorBLutherville TimoniumBLurganB	LundeborgBLulingBLucanBLuandaBLoyaltonBLowgapB
Lower HuttBLower BurrellBLovettsvilleB
Loves ParkBLouisaBLoudonBLos OsosBLos MolinosBLos FresnosBLoro CiuffennaBLoomisBLongianoB	Long PondBLondon Borough of WandsworthBLondon Borough of BarnetBLomitaB
LockesburgBLjusdalBLivingstoneBLittle SilverBLittle CurrentBLittle ComptonBLititzBLithiaBLithgowBLitchfield ParkB
LitchfieldBLisburnBLindsayB
LindenwoldBLincroftBLiminkaBLimavadyB
LibrevilleBLiberty HillBLeylandBLeyburnB
LewisporteBLewis CenterB
LeverkusenBLethbridge CountyBLesinaB
Les CalaisBLeroyBLeonbergBLeonardoBLeobenBLennox HeadBLempääläBLemoore StationBLemontBLeithBLeitchfieldBLeighton HillBLehigh AcresBLefkadaBLebnaBLeatherheadB	LeadvilleBLe HavreB
LaurinburgBLatrobeBLansfordBLanoka HarborBLannionB
LangenfeldBLanesboroughBLandersBLand O' LakesB
LanckoronaBLampungB
LambersartBLalleyBLakotaB
Lake TappsB
Lake RidgeB
Lake MillsB
Lake GroveBLake ArrowheadBLainateB	LagunitasBLagrangeB
Lago VistaBLaaxB	La VerniaBLa PorteB	La PointeB
La CondesaBLa Chaux-de-FondsBL'assomptionBL'IsleBKöthenBKwinana Town CentreB
KvinnheradBKutsukiheraBKutná HoraBKutaBKusatsuB
KunkletownB
KungsbackaBKumejima-choBKumamoto-shiBKulaB	KruµevacBKrumpendorfBKristianstadB
KriebsteinBKrasnoyarskBKrasneBKrachehBKoutsBKoperBKomotiniBKoksijdeB
KodaikanalBKo SamuiB
Ko PhanganBKnotts IslandB
KnightdaleB
Kitty HawkBKirunaBKirtlandBKirkwallB	KirkvilleBKirkokBKintampoBKintailB	KinikinikBKing's CrossBKing GeorgeB	KimbertonBKimballBKillaloeBKilkennyBKilaueaBKidderminsterBKibitsuBKiamaB	KerrvilleBKermitBKerkradeBKerkenBKeokeaBKentwoodB
KenningtonBKenmareB
KemptvilleBKempseyBKelseyvilleBKegleyBKeddieB
KecskemétBKeaauBKayesBKaunasBKatikatiBKashmirB	KarlshamnBKarelaBKaohsiung CityBKaneoheBKaneBKandyBKallangBJódarBJáveaBJustinBJunglinsterBJunction CityBJoureBJoppaBJohns CreekB	JessamineBJersey ShoreBJerichoBJerez de la FronteraBJennerBJenisonBJelsBJasper ParkBJammuB	JaisalmerBJackson CenterBIzolaBItzehoeBIshikawaBIquitosBIoanninaBInternational FallsBInnerleithenB	InishmoreB	IndianolaBInchtureBImperial BeachBImolaBIesiBIbaguéBHückelhovenBHöchst im OdenwaldBHässleholmB	HässelbyB
HäselgehrB
HägerstenBHyèresBHyrumBHydenB	Hyde ParkBHuzhouBHuronBHurleyBHumbleBHuescaB
Hudson BayBHuauchinangoBHsinchu CityBHowardsvilleBHortenBHorsensB	Horn LakeBHorbBHopeBHoornBHoonahB	HoogeveenB	HoofddorpBHonleyBHoney BrookBHoneoyeB
HomervilleBHolualoaBHolsteinB	HolstebroB	HolmfirthB	HollistonBHollinsBHollidaysburgBHoldfastBHistoric AnacostiaBHiramBHinsdaleBHinkleyB
HinesvilleBHilmarBHillsideBHildenB
HethersettBHessmerBHessleBHerzogenburgBHerzogenaurachBHerrinBHerisauBHerbolzheimBHensleyBHenricoBHennefBHemerBHelmettaBHell's KitchenB	HelendaleBHeeswijk-DintherBHectorBHeckmondwikeBHead of JeddoreBHazletonBHazletB
HazlehurstBHazardBHaydenvilleBHaydenB
Hay-on-WyeBHawleyBHawkingeBHavre de GraceBHaverfordwestBHauulaBHaskellB
HartsvilleB	HartsburgBHartley WintneyBHartbeespoortBHarsewinkelBHarrogate BoroughBHarrisonvilleBHarpers FerryBHarlowBHarleysvilleBHarker HeightsBHardwickBHardinBHarbor SpringsBHarbesonBHanauBHampton BaysBHamontBHamlinBHamarøyBHalstadBHallockBHalle (Saale)B	HalesowenBHaikuBHahiraBHacienda HeightsBGöteneBGävleBGunnison HeightsBGunnisonBGuizhouBGuffeyBGuaynaboBGuardoB	GuadalupeB	GrünbachBGrumolo delle AbbadesseB	GrovetownBGrosse PointeBGrootebroekBGrinnellB
GrindletonBGriftonBGribskovBGreymouth CentralBGrenaaBGreenwood LakeB	GreendaleB	GreenbeltBGreat MeadowsBGreat LakesBGrawnBGratkornB
GrassfieldB	GranvilleB
GrantvilleBGranite BayBGrange-over-SandsBGrande Prairie County No 1BGossauBGosportBGosford WestBGoriziaB	GorinchemBGoreBGoolwa BeachBGoodingBGonohe-machiBGolden GateB	Gold HillBGold CountryBGoheung-EupBGoesBGoderichBGochBGmundenBGlenwoodB	GlenvilleBGlensideB	GlenoldenBGlendoraBGlendale HeightsBGlassell ParkBGlasgow CityBGisborneBGilgitBGilchingBGijonBGescherBGeorginaBGeorge TownBGenkBGemertBGemeinde VechtaBGemeinde MemmingenBGemeinde Freiburg im BreisgauBGemeinde Frankfurt an der OderBGeldermalsenBGelaB	GeghanistBGavirateB
GatlinburgBGatewayBGas CityB	GarryowenBGarrisonBGarmisch-PartenkirchenBGardinerB	GananoqueBGalenaBFukushima-shiBFrutigenB
Fruit CoveBFronteraB
FronhausenBFritzlarBFresh MeadowsB
FrenchmansBFreisingB	FreindorfBFreeburgBFredersdorf-VogelsdorfBFrederikstedBFraserB	FrankstonBFoxboroBFosterBFortroseBFort-de-FranceBFort ThomasBFort Myers BeachB
Fort MeadeBFort McmurrayBFort FairfieldB	Fort ErieB	Fort DrumBForsythBForliBForest LakeBForest HillBForestBForelBFontenay-sous-BoisB
Font-RubíB	FochabersBFloridaBFlorencevilleBFloraBFlaglerBFiorano ModeneseBFigino SerenzaBFerrolBFerrisBFeltonBFederalBFarsøBFarmers BranchBFarehamBFar RockawayBFalklandBFairless HillsB	FairhavenB
Fair GroveBExmoreB	EvinayongBEvelethBEuxtonB
EutawvilleBEtnaBEstate ThomasBEstados UnidosB	EsslingenBEssex FellsBEspanolaBEskoBEskdalemuirBEsch-sur-AlzetteBEsbjergBErathBEpsom and Ewell BoroughBEpsomBEpsilonBEpping Forest DistrictBEnglish Country ManorBEnglewood CliffsBEnglandBEngadineB	EmpfingenBEmmingenBEmmenB	EmmeloordBEmersonB
EllisvilleBEllijayB	EllesmereBEllentonBElkins JunctionBElkhornB
Elk RapidsBElk HornBElkBEl VendrellBEl SobranteB
El SegundoBEl Pinell de BraiBEl MonteBEl CampoB	EganvilleBEdirneBEdgewoodBEcclesBEbisuBEberstalzellBEbermannstadtBEastlakeBEasthamBEastern ShoresBEast WenatcheeBEast TopekaBEast ToowoombaBEast StroudsburgBEast RutherfordBEast MansfieldBEast HarlemBEast GreenwichBEast Falls ChurchBEast DunbartonshireBEast ColfaxBEast CambridgeBEast BlytheBEast BerlinBEast BeckleyBEast BarnetBEast BaltimoreBEast AmwellBEast AmherstBEarlhamB
EagleswoodB	Eagle BayBDürrenäschBDwightBDurantBDunwoodyBDunhamB	DungenessB	DungannonBDundasBDumontBDullesBDulceB
DrumhellerBDowntown WilloughbyBDowntown PhoenixBDowntown McAllenBDowntown Fort SaskatchewanBDownievilleBDowaBDoualaBDoornB
DonningtonBDonja TuzlaB
Don BenitoB
DodgevilleBDjuraBDixonBDiscovery BayBDiptonB	DinwiddieBDillardBDigbethBDierenBDidcotBDharaviBDewey BeachBDevizesBDeventerBDetmoldBDepositBDepokBDennis PortBDenman IslandBDendermondeBDelevanBDehesa de CampoamorB
DeggendorfBDedhamBDededoBDe GraffBDe Funiak SpringsBDawsonvilleBDawsonBDauphinB
DarlingtonBDarbyBDanehillBDanbyBDalstonB
DallastownBDakota DunesBDacreBDachauBCórdobaBCuxhavenBCullyBCuliacan RosalesBCulebraBCuernavaca CentroB	CuckfieldBCruquiusBCrozetBCroxley GreenBCrowboroughBCreve CoeurBCrestview HillsBCreditonB	CranleighBCoyoacanB
CowlingtonBCowetaBCourtoisB
CoupevilleBCouncil GroveBCotatiB
CosmopolisBCorvara in BadiaBCorner BrookBCordes-sur-CielBCoramB	CoquitlamB	CopertinoBCooranB	CoolvilleBCoolangattaBCookBContrecoeurBConneautB	ConchalíB
CompiègneBColwichB
Colts NeckBColleyvilleBCollegevilleBCogollo del CengioBCodyBCobbBCoalportB
CoalcománB
Coal GroveB
CloverdaleBClosterBClevesBCleonaB	ClementonBCleethorpesBCleburneBClayton BrookB
ClarksboroBCivita CastellanaBCitrus ParkBCintruénigoBCiceroBChâtenay-MalabryBChuoBChuluotaBChristianstedBChristchurch CentralB
ChocianówB
ChippenhamBChincoteagueBChimaltenangoBChimacumBChieti ScaloBChicago HeightsB	Chiba-shiBChibaBChetumalB
ChestertonBChester-le-StreetB	ChesaningBCherry ValleyB
ChernivtsiBCheonbuk-MyeonBChenoaBChecotahBCheckBChebeague IslandBCharratBChanuteBChannel IslandsB	ChalmetteBChalfontBCentro HistoricoBCentre WellingtonBCentre HallBCentral PointBCentral OntarioBCentral FallsBCenter PointBCencenighe AgordinoBCelerina/SchlarignaB	CelbridgeB	Cedar KeyBCebuBCazalla de la SierraBCava de' TirreniBCatujiBCatoBCataractBCatacaosB	CastlegarBCastleblayneyBCastell-Platja d'AroBCastelarB	CassibileBCascade LocksBCasa GrandeBCarsonBCarroll County TrailsBCarougeBCarmiBCarmel ValleyBCarmarthenshire CountyBCardiff BayBCaptain CookBCapon BridgeB
Canon CityB
CanningtonBCanningB
CanicattìBCandorB	CampegineBCamp PendletonBCamorinoBCaminoBCalzada de CalatravaBCallawayB
CalipatriaBCaliBCalcataBCairns NorthBCaesareaBCaerphilly County BoroughBCaceresBCabotB
BüllingenBBüdelsdorfBByron CenterB	BydgoszczBBurnabyBBurley in WharfedaleBBurienBBureåBBungayBBundaberg NorthBBundaberg CentralBBunaveneaderBBukit BatokBBuffalo CenterBBudaBBucyrusBBuckeyeB	BuckeburgB	BuceríasBBrynmawrB	Bryn MawrB
Bryn AthynBBrylleBBrunswick NorthBBrunssumB
BrownstownBBrowningB
BrownfieldB	BroomhillBBroomallB	BrimfieldB
BridgeviewBBridgend County BoroughB	BricktownBBriarcliff ManorBBremerhavenBBreitscheidBBreezy PointBBratislava IB
BrasschaatB
BranchburgBBraddockBBoyceBBournemouth BoroughBBourgesBBourg-en-BresseBBoulder CreekBBoulder CityBBotanyBBoscobelBBorgonovo Val TidoneBBordonBBoothbayB	BoonsboroBBoones MillBBoomBBolsoverBBokeeliaBBoissy-le-ChâtelBBogalusaBBoerneBBodoBBoazBBoardmanBBlythBBlue SpringsBBlewburyBBlairsvilleB
BlairstownB
BlackstoneBBishkekBBirstallB
BirkenheadBBingham FarmsB
BillericayB
BillerbeckB	Big SandyBBidefordBBidartBBeziersBBexleyB	BeverwijkBBeverleyBBethany BeachBBessemer CityBBertrixBBerberaBBenzoniaBBensheimBBensalemBBengaziBBendigoBBellmawrB
BelleneuveB
BellenbergB
BellefonteBBelle VernonBBelle CenterBBelfryBBekasiB	BeershebaBBeekBBeech GroveBBecclesBBeavercreekB
Beaver DamBBeauharnoisB
BealsvilleBBaysideBBaxterBBaunatalBBattleB	BathshebaBBathgateB
BatdambangBBastropBBarronBBarrio XalapaB	BarrigadaBBarnumB	BarneveldBBarnardBBarkers ValeBBarabooBBanvouB
Banner ElkBBangalowBBandaraya GeorgetownB
Ban Ko TaoBBallyvaghanBBallinaBBallerupBBagworthBBagnesB	Bad TölzB
Bad RodachBBacchus MarshBBabenhausenBBaalbekBAñover de TajoBAzleB	AylesfordB	Avon LakeBAuvergneBAurillacBAullaBAugust TownBAudubonBAubreyB
Atsugi-shiBAstiBAspersBAsoloB	AshburtonB
AshburnhamBAscotBArrasBArnstadtBArmonkBArmeniaBArmaghBArkvilleBArkhaia KorinthosBArkansas CityB	ArkabutlaB
ArgenteuilBArdwickB
ArdencroftBAransas PassBAranda de DueroBApodacaBAntrimBAnterivoBAngletonBAngletBAngeredBAnaheim HillsB	AnacostiaB	AmstettenB	AmmanfordB
AmityvilleBAmericusBAmerican CanyonBAmericaBAmalfiBAlvaBAlturasBAltonBAltamonte SpringsB
AlotenangoBAlmontBAllgäuB	AllendaleB	AlingsåsBAlice SpringsBAlgonquin ParkBAlgerBAlexandroupoliBAlessandriaBAldersonB
AlcobendasBAlburtisBAlbionB
AlajuelitaBAkureyriBAisenBAhwahneeB	AhmedabadB	AgrigentoBAgnes WaterBAdrianBAdams MorganBAdamsBAcmeBAccordBAcapulcoBAcambayBAbiskoBAbingtonB
Abbey WoodB
AaronsburgBAarhus WestB98225B97471B97331B97309B97007B96836B96814B93505B93257B92663B92589B92545B92278B92038B92024B83401B78015B77546B76028B66212B62650B61704B61402B60630B53083B50010B49301B46815B45400B45228B45219B45204B44113B38129B35801B34982B34491B34432B33196B33131B33102B32701B32119B30252B30005B28546B27804B27713B24210B23223B22192B22152B20813B19454B19352B19195B19054B16652B15601B15212B13365B13361B13201B11358B11224B10552B10065B03820B'Ayn al-'ArabB	ČrnomeljBÜberlingenB
ØksendrupBÖlandBÉvryBÉpernayBÆrøskøbingBÅseleBÅrstaBÄltaB	ZwillikonBZwijndrechtBZwalmBZutphenBZolfo SpringsBZofingenBZhuhaiB	ZhongdianBZhenzhouBZhambylBZevenBZellBZelkingB
ZelienopleBZanzibarB
ZanesfieldB
ZaltbommelBZacharyBZabrzeBYverdon-les-BainsBYufu-shiBYuccaBYtracBYsyk-KolBYstadBYrekaBYoungBYork CornerBYokosuka-shiBYokkaichi-shiBYoakumBYnysdduBYigoBYeosu-SiB	Ybor CityBYasuniB
Yaroslavl'BYantaiBYamhillB	YamaguchiBYalgooBYakutatBXátivaB
XochimilcoB
XochicalcoBXiningBXichúB
WytschaeteB
WyomissingBWynneBWuyuan TownB
WrocławkiBWrexham County BoroughBWoy WoyBWormsBWootton BassettBWoononaB
WoolacombeBWoodwardBWoodruffBWoodhullBWoodford GreenBWoodbury HeightsBWondervuBWonder LakeB"Wolverhampton Metropolitan BoroughBWolkensteinBWolfenbüttelB	WolfeboroBWoburnBWittlichBWittenbergeB
WithernseaBWintraakBWinterswijkB	WintersetB
WinterportBWindsor LocksBWindow RockBWimbledon ParkBWilmotBWilmerBWills PointBWillow WoodBWillow SpringsBWillow RiverBWillow CreekB
WilloughbyBWillingboroBWilliams LakeBWilliams BayB
WillemstadBWillcoxB	WillaminaBWilhermsdorfBWildomarBWietzeBWieslochBWierdenBWiener NeudorfBWien 22BWien 20BWien 14BWien  9BWien  3BWidnesBWiang Pa PaoB
WhitsundayBWhitmireBWhitinsvilleB
WhitesburgB	WhitehallBWhite Sulphur SpringsB
White LakeBWhite CloudBWhighamBWheatley HeightsBWhangarei CentralB	WhanganuiBWhaligoeB	WhakataneBWewokaBWevelgemBWetzikonBWetherbyBWestparkB	WestmountBWestmeadBWesthampton BeachBWestfallBWesterlyB
WestamptonBWest of Twin PeaksBWest YellowstoneBWest WickhamBWest WendoverBWest Virginia Central JunctionBWest TellurideBWest TawakoniBWest SwedenBWest SuffieldB	West StowBWest SpokaneBWest SenecaBWest PetalumaBWest PensacolaB
West NyackBWest NashvilleBWest MilfordB
West MiamiBWest MemphisB	West ManiBWest Long BranchBWest LatrobeBWest Las VegasBWest Lake StevensBWest KennebunkBWest HurleyBWest HelenaB
West GroveBWest DeptfordBWest DenmarkBWest Deerfield BeachBWest CoolupBWest ColumbiaBWest ChezzetcookBWest Bay ShoreBWest BaltimoreBWest AtlantaBWest AdderburyBWeslacoBWernhoutBWentorfB
WemeldingeBWemBWeltB	WellsburgBWeiterstadtBWeiserB	WeinstadtBWeidmanBWeidenBWeespBWeertBWeenerBWeedB	WawarsingBWavelandBWaupunBWaunakeeBWaukeganBWaucondaBWattsBWatson LakeBWatsonB
WatervlietB
WatervilleBWaterbury CenterB	WaterboroB
Water MillBWat ArunB	WassenaarBWassaicBWashoe ValleyBWashington HeightsBWashburnBWarriors MarkBWarnervilleBWarner SpringsBWardBWaranaB	WanamingoBWan ChaiBWamuran BasinBWalzbachtalBWalnut GroveB	WalmsgateBWallops IslandBWallkillB
WallingtonBWalled LakeBWalldorfBWallaceburgBWaldwickBWaldkraiburgB	WaldkirchB	WalbridgeBWaiukuBWaipahuB	WaimanaloBWaileaBWaikatoBWaikanaeBWaianaeBWaialuaBWaiakeaBWahlrodBWahiawā HomesteadsBWagenerBWading RiverBWadenaBWabernBWabenoBVölklingenBVästerlandaBVouvrayBVoutenay-sur-CureBVossavangenBVoorhoutBVleutenBVladivostokBVitznauBViterboB
VishnevoyeBVirginia WaterBVirginia CityBVirginiaBViolaBVina del MarBVilliscaBVilligenBVilliers-sur-MarneBVilleurbanneBVillers-sous-St.-LeuBVillefranche-sur-SaôneBVillasBVillanova MondovìB	VillanovaBVilla d'AddaBVilamarxantBVignola-FalesinaBVignolaBVigevanoBVieux-Québec-- Basse-VilleBVieux-QuebecBVietnamBVieraBVidovecBVictoriavilleB
VicopisanoBVichtenBVeveyBVevayB
VerrebroekBVenusB	VenezuelaBVenetiaBVenetaBVendlincourtBVendesBVejer de la FronteraBVejenBVejbystrandBVeghelBVega de AlatorreBVedano OlonaB
VecindarioBVauxhallBVaudBVatican CityBVastoBVarnaBVarazzeBVannesBVan WertB	Van VleckBVan LearBVallesaccardaBVallelunga PratamenoBValle de ValdebezanaBValle de GuadalupeBValle de BravoBVale of GlamorganBValcourtBValatieBVal-des-MontsB	Val-DavidBVaitapeBVadstenaBVadsoBUzwilBUyuniBUvitaBUtreraBUshuaiaB
UruguaianaBUruapan del ProgresoBUrichBUribiaBUpton upon SevernBUpplands-VäsbyBUpper Saddle RiverB
Upper KentB
Upper HuttBUpper ArlingtonBUntersiggenthalBUniversity PlaceBUniversity ParkBUniversity DistrictBUniversidad de SonoraB
United WayBUnitedB
UnionvilleB	UniontownBUnicoiB
UncasvilleBUnalaskaBUnadillaB
Umm DurmanBUmatillaBUlfborgB
Ukrains'keBUkrainaBUji-shiBUhrichsvilleBUeckermündeBUdallBUdaipurB	UckendorfBUbriqueBTáborBTybee IslandBTwin BridgesBTuxpan de Rodríguez CanoBTustin FoothillsB	TuscumbiaBTurners FallsBTumwaterBTumonB	TullahomaBTularosaBTujungaBTuggerahBTudelaBTubizeBTsumkweBTsubameBTsim Sha TsuiBTrédrez-LocquémeauB
TrussvilleBTroyesBTrout CreekB	TrofaiachBTrierBTres PiedrasBTrenzanoBTrentinoB
TrelleborgBTravagliatoB	TraralgonBTransferB	TrafalgarBToyonaka-shiBTowerBTowandaBToutleBTotanaBTorupB	TortoretoBTorroxB
TorreviejaBTorch RiverBTopsailBTooting BecB
ToongabbieBToluca LakeB	TolpuddleBTollesonBTollandBTokoname-shiB	Toho-muraB	TobyhannaBToboB	TobermoryBTobe-choBTlaquepaqueBTlajomulco de ZúñigaBTiznitBTizayucaBTividaleBTipperary RuralBTinton FallsBTillsonburgBTijerasBTietonBTiconderogaBTianjinBThredbo VillageBThouarsBThoroldB	ThornwoodB
ThornvilleB	ThornburyBThompsons StationBTholenBThoirasBThiensvilleBThetfordBTheatre DistrictB
The StrandBThe Sea RanchBThayerB
ThamesmeadBThames DittonBTexhomaBTexasB	TerneuzenBTermini ImereseBTerezínBTepoztlan CentroB
TepatitlanBTeneria Del SantuarioBTemple CityB	Tell CityBTelkwaBTel BinyaminBTekaxBTehranBTehamaBTeesB
TeddingtonBTecateBTecamacBTazewellBTaxco de AlarcónBTawasB
TavagnaccoBTauranga CentralBTarrantB	Tarnopol'BTarlandBTarbertB	TarancónBTappahannockBTangentB	TaneytownBTancrouBTampa PalmsBTambre d'AlpagoBTaltyBTallardB	TalkeetnaBTaliesin WestB	TalbottonBTalbottBTakasaki-shiBTakakaBTaiyuanBTaitung CityBTain-l'HermitageB	Taiji-choBTai PoBTai HangB
TagbilaranBTabernasBTaberBTabascoBSławkiBSävsjöBSão FilipeBSylvan BeachBSylvaBSyddjursBSwissB
Sweet HomeB	SwansboroBSwanleyB	Swan LakeBSutton ColdfieldB	SutherlinBSurrey HeathBSurkhetBSurfsideBSurat ThaniBSupplyBSupaiBSunyaniBSunny Isles BeachBSunny IslesBSunlandB
SundbybergBSundanceBSund I LofotenBSumurB
SummertownB	SummertonB
SulaimaniaBSuhumB
Sugar LoafBSugar GroveBSucker GardenB	StutenseeBSturgeon LakeBStreetBStreatorB	StreathamB
StrathavenB
StowmarketBStoweBStoupaBStouffvilleBStorvikBStorringtonBStony StratfordBStony PlainB
StoneleighB
StonehavenBStoke MandevilleBStockton SpringsBSteyrBStewartBStephanskirchenBSteinhatcheeBStehekinBStegerBSte.-ThérèseBSte.-FlorenceB	Ste.-AnneBSte.-AdèleBSte. GenevieveB	Ste. AnneB	StaßfurtBStatesboroughBStary KrakówB	StarnbergBStargard SzczecińskiBStar PraireB
StanthorpeBStansted MountfitchetB	StansstadBStanley CrookBStandishBStalybridgeBStadtteil HildesheimB
St.-TropezBSt.-TiteBSt.-QuentinBSt.-Paul-Trois-ChâteauxBSt.-Patrice-de-BeaurivageBSt.-NiklaasBSt.-MaloBSt.-JérômeBSt.-Just-en-ChausséeBSt.-Ferréol-les-NeigesBSt.-EustacheBSt.-Boniface-de-ShawiniganBSt.-Antoine-de-BreuilhBSt.-André-d'OlérarguesBSt.-Ambroise-de-KildareB
St. ThomasBSt. Stephens ChurchBSt. Simons IslandB
St. SimonsBSt. MichaelB
St. MariesBSt. Marein bei GrazBSt. MaartenBSt. Louis ParkBSt. LeonardsBSt. LeoBSt. IvesBSt. IgnatiusB
St. HelierB
St. GallenBSt. Croix FallsB
SpringboroBSpring GroveBSpotsylvaniaBSpoonerBSplitBSpilimbergoBSpicerBSpeyerBSpelloBSpartiB	SouthgateBSouthern San DiegoBSoutheast OmahaBSouthallBSouth WilliamsburgBSouth WheelingBSouth WesterloBSouth West RocksBSouth TucsonBSouth TamworthBSouth SumterB
South SideBSouth Salt LakeBSouth Saint CloudBSouth RiverBSouth QueensferryBSouth PlainfieldBSouth PerthBSouth Padre IslandB
South LyonBSouth Los AngelesBSouth Las VegasBSouth JamaicaBSouth InvercargillBSouth InglewoodBSouth HoustonBSouth HiramBSouth HavenBSouth GrimsbyB
South ForkBSouth DunedinBSouth DownsBSouth CharlestonBSouth CalgaryBSouth BisbeeBSouth BeachBSouth AttleboroBSouth Amboy JunctionB
South AjaxBSorøBSortlandBSorrentoBSonoitaB	SonnebergBSongeaBSommeryBSomersB	SomerdaleBSointulaBSodusB	Soap LakeBSnowmass VillageBSnowdownBSnoqualmie PassBSneekBSneads FerryB
SmithvilleBSmithersB	SmethwickB
SlyudyankaBSlovenj GradecBSlottsskogenBSlippery RockBSlickB	SlaughterBSladeB	SkærbækBSkärblackaBSkyBSkiptonBSkillmanBSkiatookBSkiathosBSkejbyBSkanderborgBSkagaströndBSjællands OddeBSix MileBSineuBSilverthorneB
SilvermineBSilver PlumeBSikestonBSignal MountainB
SiegenburgBSibenikBSibacaBShorterB	ShoreviewBShokanBShipkaBShinerBShimaneBShilohBShijiazhuangBShigaBShickshinnyBShetlandBSherwood ShoresBShepherdB
Shelly BayBShelleyB
Shell KnobBShelburne FallsBShelburnBSheffordBSheepshead BayB	SharptownBSharjahBShandonBShakespeareBShaferBShady SpringB
Shady SideBShady ShoresBSewardBSetagaya-kuBSestri PonenteB	SerangoonBSeongnam-SiBSensB
SenigalliaBSeneca FallsB
Sendai-shiB	SenatobiaBSenahúBSelmaBSellwoodBSeligmanBSeligenstadtB
SelbyvilleBSela Pri KamnikuBSekiBSegoviaBSedgwickBSecteur-CharlevoixBSebago LakeBSeavilleBSearcyBSeagroveB
SeagovilleBSeabrookB	Sea CliffBScoresbysundBScordiaBScobeyBScioBSchwenksvilleBSchwanewedeBSchuylkill HavenBSchotenB
SchopfheimBSchioBSchiltigheimBSchertzB
SchermbeckBSchechenBScheboB	ScappooseBScadicciBSayulitaBSayreBSaxtons RiverBSaugusB	SaugatuckBSaturnBSatipoBSateliteB
SarrebruckB
SarrebourgB	SarpsborgBSaronnoBSargodhaBSaranacB	SaquaremaBSapriBSanturceBSantiago de CubaBSantarcangelo di RomagnaBSanta VenerinaBSanta PaulaBSanta María HuatulcoBSanta MartaBSanta Maria a MonteBSanta Maria TlahuitoltepecBSanta Fe SpringsBSanta ElenaBSanta Cruz de la PalmaBSant Cugat del VallèsBSant Carles de la RàpitaBSandy RidgeB
Sandy LakeBSandwichB	SandstoneBSandia ParkB
SandefjordB
SanborntonBSan VicenteBSan Sebastián de Los ReyesBSan Po KongBSan Pedro TultepecBSan Pedro Garza GarciaBSan Pedro CholulBSan Mauro PascoliBSan Marzano OlivetoBSan Juan de AlicanteBSan Juan Del RioBSan José de BatucBSan Donà di PiaveBSan Clemente del TuyúBSan Angel ZurumucapioB
SamothrakiBSamburuBSalvatierraBSaltillo CentroBSaltashBSaltaireBSalkumBSalisbury MillsBSalineB
SalensteinBSalemiB
Sale CreekBSalaberry-de-ValleyfieldBSakuB
Sakata-shiB
SaintfieldBSaint-LouisBSaint-DenisBSai Ying PunBSagamoreBSafaqisBSaddle BrookBSacileBSabanetaBSaanichBSaalfeld/saaleBS. Jose del CaboBRökB	RíohachaB
Río BravoBRzgówBRyanBRutledgeBRussiavilleBRussiaB
RusselltonB	RushvilleBRushfordBRural RetreatBRupanyupBRunduB	RulevilleBRudalzaBRuda ŚląskaBRuckersvilleBRuboniaBRubanoBRoystonB
Royse CityB'Royal Borough of Kensington and ChelseaBRoxborough ParkBRowaytonBRowanB
Round LakeBRotkreuzBRotenturm an der PinkaB	RotenturmB	RotenburgBRosythB	RossvilleBRoslynBRoskildeBRoseto degli AbruzziB	RosendaleB	RosenbergB	RosemèreBRosebud WestBRosamondBRosalieBRoquetas de MarBRoppongiB
RoosendaalBRonnebyBRomulusBRomeréeBRomano di LombardiaBRomanoBRomaniaB
RolesvilleBRolandBRogers PassBRogers ParkBRogartBRodovreBRodeoBRockwoodB	RockridgeBRockdaleBRock TavernB
Rock FallsBRobertaB	RoachdaleB	RivervaleBRivenichBRisskovB
Rising SunBRising FawnBRiptonB	RiolunatoBRio DellBRintelnBRingoesBRinggoldBRingebuBRigginsBRietbergBRiesaB	RickreallBRiccioneBRibble Valley BoroughB	RhoscolynBRhinelanderBRezzatoBRevesby HeightsBReusB
RepentignyBRensselaervilleBRennemoulinBRenfrewBReigateBRehoboth BeachBReggio nell'EmiliaBRegent SquareBRegentBReformaB	ReedsburgBRedwoodB	RedondelaB	RedcliffeBRedbank PlainsBRedaBRed OakB	Red BluffBRecanatiBReaganBRayleighBRawsonvilleBRawmarshBRavenaBRatonBRaritanBRandom LakeBRandleBRanders North EastBRandallstownBRancho MirageBRamsteinBRamseurB
Ramrod KeyBRamingsteinBRainhamBRainbow CityB
RadovljicaB
RadolfzellBRadebeulBRadcliffBRa'ananaBQuestaB
QueenstownBQueen CharlotteBQuebradillasB
QuartucciuBQuartu Sant'ElenaBQuartier de l'EuropeB	Quang TriBQadubB	PéruwelzBPénjamoB	PélussinB
PyrénéesBPutnamBPushkarBPunta del HidalgoBPunoBPungoBPulilanBPukkilaBPukekoheBPuerto VarasBPuerto RicoBPuerto PutumayoBPuerto EscondidoBPrévostBPristinaBPrincevilleBPrince FrederickBPriceBPrestonpansBPremanaBPrangliBPrairievilleBPrairie VillageBPrague 9B	PradamanoBPrachin BuriBPoznańBPowys CountyBPownalBPotosíBPoste de FlacqBPositanoBPortugalBPortrushBPortola ValleyBPorto AzzurroBPortasBPortage LakesB	Port-VilaBPort StanleyBPort St JoeB
Port LouisB	Port HopeBPort HadlockB	Port EwenBPort ElizabethBPort ChesterBPort AransasBPoplarvilleB	PontypoolB	PontederaBPonorogoBPompton PlainsBPomfretB	Polk CityBPolicastro BussentinoBPolandBPoissyBPointe-ClaireBPoint la NimBPoint LookoutBPoint HarborBPoestenkillBPocomoke CityB
PocahontasBPluneretBPlevnaBPleasantvilleBPlayasBPlaya de FajardoBPlaya Vicente CentroB
PlantationBPlaisirB	PlainwellB
PlainsboroB	PittsfordBPitmanBPiteåBPisgah ForestBPisecoBPisarzowiceBPisacBPiranBPippa PassesB
Pipe CreekBPipalyatjara CommunityBPiombinoBPiney CreekB	PinevilleB	Pine KnotBPimlicoBPimaBPilot PointBPilot MountainBPilar de la HoradadaB	PikevilleBPicture ButteBPickeringtonBPickensBPicayuneBPiazza ArmerinaBPiandimeletoBPhumi Thbeng MeancheyB	PhilomathBPhiloBPhil CampbellBPeñaranda de BracamonteBPeytonBPewaukeeBPetrosky-OtesgoBPetlalcingoBPetersfieldB
PetersburgBPeterborough CityBPerryopolisB
Perry HallBPerkiomenvilleBPerkasieB	PerigueuxBPerhamBPeraiB
PequannockB	PepinsterBPenzanceB	PenshurstB	PenngroveBPenicuikBPendle BoroughB	Pen ArgylBPembroke TownshipB	Pell CityBPelican RapidsBPeculiarBPeckham RyeBPebble BeachB
PearisburgBPearblossomBPeapack and GladstoneB
PeacehavenBPawlingBPawleys IslandB	PaulsboroBPaternaBPasłękBPassignano sul TrasimenoBParsbergB
ParksvilleBParkers PrairieB
Park RidgeBParis 18e ArrondissementBParis 12e ArrondissementBParetzBParentis-en-BornBPapaaloaBPanaceaBPanaB
PampelonneBPaloloB	PalmertonB	PalmanovaB	PalestineBPalenqueBPalagianelloBPakenhamBPainesvilleBPahokeeBPaddock WoodBPacific CityBPachuca de Soto CentroBPaceB	Oxon HillBOwatonnaBOutramBOuluB
OudenaardeBOud-BeyerlandB	OttweilerBOttawa SouthBOtsegoBOtisBOtegoBOswaldtwistleBOsunaBOstravaBOsterodeBOstedBOscodaBOsage BeachBOsageBOrtsteil Prenzlauer BergBOrovilleBOrondoB
Oro ValleyBOrmocBOrléans-la-sourceBOrléansBOrland ParkBOrcuttBOrchardBOrcasB
OrangevaleBOrange CityBOradour-sur-GlaneBOradeaBOpoleBOpelikaBOpavaBOnyxBOnehungaBOne Tree PointBOmakBOltenBOlomoucBOleggioBOldsmarBOldhamB
Old TucsonBOld Town Stony PlainBOld San JuanBOld Orchard BeachBOld MontrealBOld HickoryBOld Colorado CityBOld ChathamBOlbia 2BOlbiaBOlaya HerreraBOlafsfjordurBOkmulgeeBOkemosBOkemahBOkanoganB	OkahandjaBOirsbeekBOil CityB	Ogaki-shiBOdense NorthBOdellBOdderBOchtrupB	Ocho RiosB
Ocean ViewBOcean PinesBOcean GroveBOcean BeachB
OccidentalB	OberurselBObernaiB	Obama-shiBOakwoodBOakmanBOakland ParkB	Oak GroveB	Oak CreekB
Oak BluffsBO'brienB
NürtingenBNyonBNy-ÅlesundB	NutbourneBNunheadB
Nuku'alofaBNuevo MexicaliBNoyersBNowhereB
Novo MestoB
Nove ZamkyBNoumeaB
NouakchottBNottulnBNotting Hill GateB
NorthvilleB	NorthsideBNorthfield FallsB#Northeastern Manitoulin and IslandsBNortheast HarborB	NortheastB	NorthcoteBNorth la CrosseBNorth ZanesvilleBNorth WolcottBNorth White PlainsB"North West Leicestershire DistrictBNorth Warwickshire BoroughBNorth TruroBNorth TorontoBNorth TazewellBNorth StoningtonBNorth St. PaulBNorth SeekonkBNorth ProvidenceBNorth ProsserBNorth PotomacB
North PoleB
North ParkBNorth OrwellBNorth OmahaBNorth Newport NewsBNorth MiamiBNorth MerrickBNorth LibertyBNorth JacksonvilleBNorth HaledonBNorth Fort MyersBNorth CowichanBNorth CoronaBNorth ClevelandBNorth CharlotteBNorth CentralBNorth CatasauquaB
North BendBNorth BellinghamBNorth BattlefordBNorth Baton RougeBNorth AyrshireBNorth AttleboroBNorrlandBNorridgewockBNorridgeBNormannaBNordlandBNootdorpBNolensvilleB
NolanvilleBNogent-sur-OiseBNoatakBNiwotBNitraBNisswaB
Ninety SixB	Nine ElmsBNimbinB
NieuwkuijkBNieuwersluisB
NieuwegeinBNieuw-VennepB	NiersteinBNicasioBNianticBNiagara-on-the-LakeBNiagara Falls SouthBNgongBNeyagawa-shiBNewvilleBNewton CenterBNewsteadBNewmanBNewlynBNewcastle upon Tyne CityBNewcastle under LymeBNewcastle EmlynBNewberryBNew ZealandBNew WaverlyB
New PragueBNew PhiladelphiaB
New MarketBNew KingstonBNew Jersey OaksBNew FranklinB	New EgyptB
New DurhamB
New DenverBNew CityB
New BerlinBNewBNevisBNeveleB
NeumunsterBNeumarkt am WallerseeBNeuendettelsauB	NeuaubingBNeualbenreuthBNeu-UlmBNetcongBNesoddenBNeseburB	NerstrandBNerinxBNeptune CityBNeiafuBNegril SpotsBNegauneeBNedelinoBNeckargemündBNebajB	Nea MakriBNayaritBNavasotaBNathalieBNatersBNatchezBNatalBNarrowsBNappaneeBNapiliB	NanticokeBNanteuil-le-HaudouinBNanoose BayBNakhon RatchasimaB
Nagoya-shiBNaganoBNadiBNacoBNackaB	N'DjamenaB	MühldorfBMönchengladbach-RheindahlenBMölndalB	MóstolesB
MégevetteBMysoreBMykonosBMydrechtBMwanzaBMuttenzBMusselburghBMusashimurayama-shiBMurrumbatemanBMurphys CreekBMuro LecceseBMurnau am StaffelseeBMuretBMunroe FallsBMunkedalBMunfordBMulwalaBMullica HillBMulheim-on-RuhrBMuldrowBMulberryBMukilteoBMuchB	MoyobambaBMoxeeB
MowrystownBMountain Lake ParkBMount WaverleyBMount HorebB
Mount HopeBMount GambierBMount FreedomBMount DavisBMount BeautyBMount AlbertBMoundBMoultonboroughBMoultonBMouenBMotuekaBMotrilBMotleyB
MotherwellBMotalaBMosulB
Moss PointBMosierBMorzineBMortola SuperioreBMorrowB
MorrisaniaBMorris PlainsB	MorriltonBMorganfieldBMorgan CityBMoreton MorrellBMorenciBMorellaBMorehead CityBMorbegnoBMorayBMoraBMoosicBMooreBMoon ValleyBMonumentBMontvaleBMonticello d'AlbaB
MonterealeBMontemorelosBMonte-CarloBMonte Sant'AngeloBMonte Castello di VibioB	MontazeauB
MontalbánB
MontagnolaBMont-de-MarsanBMonsonBMonsBMonroevilleB
MonetvilleBMonessenBMondoviBMonclovaBMolinoBMolineBMojaveBMoerkapelleBModicaBMitchelstownBMississauga ValleyBMission HillsB
MirebalaisB	MiramichiBMirabelB	Mira LomaBMioBMintlawBMinocquaBMinneolaB	MinnehahaBMineral de la ReformaBMineralBMindeloBMimili CommunityBMilnerBMilmayB	MillstadtBMillinocketBMillikenBMillheimB	MillfieldB	MillertonBMiller PlaceBMill Brook HousesB
Miles CityBMikonosBMiki-shiBMifflinburgBMiddlevilleBMiddle SackvilleBMiddle RiverB
MiddelfartBMid Bedfordshire DistrictB
MicheldorfBMiami LakesBMiagaoBMezőkövesdB	MezquiticB
MeyersdaleBMeudonB
MetropolisBMethilBMetamoraBMessinaBMeschedeBMesa de TijuanaBMeruB	MertztownBMerrillB	MeredosiaBMercoglianoB	MenomineeBMelvilleBMelton MowbrayBMelissaBMelillaBMelhusBMelbyBMeineBMeifodB	MehlvilleBMeeting CreekBMeekerBMedolagoBMedicine LakeBMedical LakeBMedford LakesBMechanicvilleBMead ValleyB	McphersonBMccoolBMccloudBMcarthurBMcafeeBMcLoughlins BeachBMbaleB	MazomanieBMayfairBMawson LakesB	MattydaleB	MattituckBMattapoisettBMatinoBMataróBMataneBMastershausenBMassapequa ParkB
MassapequaB
MaspalomasBMashpeeB	MascoutahB	MarysvaleB	MarystownB
MaryleboneB	MarstrandBMarsa MatruhB	Mars HillBMarneBMarlinBMariannaBMaria SteinBMargaret RiverBMarco IslandBMarciana MarinaBMarcheBMarchBMarburgBMarathonBMarateaBMaraenuiBMaracayBMaple ShadeBMaple HeightsB
ManzanilloBMansonBMansfield CityBManns HarborBManningtreeB
Manly ValeBManlyBManlleuB
ManitowishBManitoBManisteeBMangochiBManausBManaliBMammoth Hot SpringsBMamallapuramB Maliotenam 27a Réserve IndienneBMaleBMalahideBMakasarBMajadahondaBMaizeBMaitlandB
MainevilleBMaincyBMainburgBMaidenBMahopacBMahometBMaguires BridgeBMaggiaBMagadanBMadonna di PuianelloBMadeira BeachBMadangBMacleodBMacks CreekBMachu PicchoBMacerataB	MacedoniaB	MacclennyBMacauBMaaseikBMaarssenbroekBLøjt KirkebyB	LytteltonBLyssachBLysekilBLyngbyBLyndenBLymmB
Lyme RegisBLymanBLyleBLydbrookBLyckseleBLyckebyBLyckeBLuxulianBLuthervilleB	LunenburgBLumsdenB
LukachukaiBLugoffBLugoBLugandaBLudwigshafenBLudvikaBLuckenwaldeB
LuchsingenBLucedaleBLubbeekBLoxahatcheeBLowvilleBLower Woods HarbourBLower Ninth WardB
LovingstonBLoughtonBLotusBLos Mochis CentroB	Los LunasB	Los CabosBLorraineBLookout MountainB
LongmeadowB	Long NeckB	Long HillBLondon Borough of NewhamBLondon Borough of LambethBLondon Borough of IslingtonBLondon Borough of HaveringBLondon Borough of EnfieldBLondon Borough of BromleyB
Loma LindaBLolo Hot SpringsBLoletaBLohneBLoctudyB	LockerbieBLochgilpheadB
LlwyncelynBLlanoBLlanelliB
LlagosteraBLittle Egg HarborBLittle Bay IslandsBLithia SpringsBLisleBLiskeardBLipovBLinwoodBLinsteadB
Linn CreekBLingbo KapellB	LindsborgBLindleyBLindauBLincolnvilleB
LincolntonBLincoln SquareBLinasBLimónBLimoeiro do NorteBLimenaBLichtenvoordeBLibbyB	LhanbrydeBLeydenB	LewisportBLeverettBLevangerBLeukBLeucadiaBLetterkennyBLes ÉboulementsBLes RoussesB
Les LandesBLes HouchesB
Les AbymesBLerwickBLeoniaBLendavaBLemooreBLemon GroveB	LembonganBLeknesBLeirvikBLeinefelde-WorbisBLeichlingenBLehBLegianBLeghornBLegaspiBLeganésB	LeesvilleBLeerdamBLeekB	LeechburgBLeakesvilleBLeadville NorthB
Le VigeantBLe TeichBLe Pré-St.-GervaisBLe Mesnil-GarnierB	Le ClaireBLe Bourg-d'IréBLe BarcarèsBLawndaleBLaurentidesBLaughlinB
LaugarvatnBLauderdale LakesB	LauchheimBLathropB
LascahobasBLasalleBLas GalletasBLarvikBLaroseB	LanzaroteBLanhamBLangenBLandoverBLandmarkBLandauBLanarkBLamontBLamezia TermeBLambleyBLambertvilleBLakselvBLakeview TahoeBLakesideB	LakefieldBLake ZurichB
Lake WylieBLake View TerraceBLake PanasoffkeeB
Lake OzarkBLahrBLagos de MorenoBLafayette HillBLaeB	Lady LakeBLadogaBLadbroke GroveBLaconBLacombeBLachuteBLa VirginiaB	La VerkinBLa Vall d'UixóB	La SpeziaBLa Roque-d'AnthéronB	La RomanaBLa Roche-sur-YonB
La PrairieBLa MadeleineBLa JuntaBLa Garde-FreinetBLa DéfenseBLa CieneguitaBLa Chapelle-RéanvilleB
La CapillaBL'isle-verteBL'hospitalet LlobregatBL'abbayeBKyzylBKynetonBKuujjuaqB
KurtistownBKurandaBKunmingBKungsholmenBKudahuvadhooBKuahB
Kryvyy RihB	KrumvilleB	Krong KepBKronachBKremsBKrefeldB
KragiyevacBKrabiBKowloon BayB	KosciuskoBKornwestheimBKonzellBKontichBKoloaBKofu-shiBKochiBKobeBKo YaoBKnivstaBKnegselBKneelandB	KlungkungBKlosterneuburgBKlosterBKloofBKlitmøllerBKlintisBKlingenbergBKleindöttingenBKivikB	KitzbuhelBKittery ForesideB
KittanningB
KirriemuirB
KirribilliB
KirksvilleBKirkenesBKirkconnellB	KingsfordB	KingfieldB$King's Lynn and West Norfolk BoroughBKing's LynnB	KincheloeB
KilwinningBKilnBKilkeeBKilifiB	KilfenoraBKielceB
KidlingtonB	Khon KaenBKesterciemsBKershawBKerichoBKenyonBKents StoreBKenovaBKenoraBKenockeeBKennerBKennedy MeadowBKennardBKenlyBKendallvilleBKendallB	KempenichBKelowna NorthBKellsBKeeleBKeego HarborB	KeansburgBKayseriBKawasaki-shiB
KautokeinoBKatonahBKashima-shiB	KarlskogaB	KarlsborgBKaraisenBKapitiBKankakeeBKampenBKamiahBKamenzB
KalundborgBKalonaB	KalimpongB
KalgoorlieBKajiadoB	KahakuloaBKagawaBKagaBJusto SierraBJundiaiBJudiqueBJouyB
JourdantonBJoseph CityBJordanvilleBJonstorpB
JonesvilleBJonesboroughBJolietteBJokkmokkBJoeltonBJiutepecB	JingjiangBJiangmenBJesupBJessupBJesiBJenksBJemisonBJelgavaBJeffersontownB	JeannetteBJayuyaBJarrowBJarrettsvilleBJapanB
JamesvilleB	JamesportB	JamesburgBJalapaBJaipurBJacmelBJacaBIztaccihuatlBIzhevskBIxoniaB	IxhuatánBIvylandBIvorytonBIveyBIverBItascaBIsmaningBIslipBIsle of DogsBIsle la MotteBIsland FallsBIsfjord På SvalbardBIrwinBIrontonBIrondequoitB
Iron RiverBIrkutskBIraklionBIoniaBIokaBInyokernBInternational Drive AreaBInternacional TijuanaBInsurgentes surBInmanBInkomBIndiana UniversityBIncheonBImsumBImstBImnahaBIlulisatBIloilo CityBIlmenauB	IllawarraBIle A VacheBIdhomeniBIdanha-a-NovaBIdanhaBIdaho SpringsB
Idaho CityBIbusuki-shiB	HúsavíkBHärnösandBHytheBHyannisBHuyBHuxleyBHuttoBHurworth-on-TeesB
HurstvilleBHurlockBHuntingtown SquareBHuntingtownBHuntington StationBHunterBHuixquilucanB
HughestownBHuelvaB
HuehuetocaBHueBHudson FallsBHubbardsvilleBHuarazBHradec KrálovéBHoylakeBHoxieBHowe StreetBHowdenBHoveBHoughtonBHortonBHortenseBHortaB
Horse CaveBHornseaBHornellBHormiguerosB
Hope MillsBHonor Oak ParkBHondurasBHondoBHonakerB
Homer GlenBHomburgBHolteBHolly RidgeBHolladayBHoliday ParkBHolguínBHoldregeBHokianga HarbourBHoi AnB	HoddesdonB
Hobe SoundB	Ho-Ho-KusBHirtzfeldenBHippachBHintonBHinghamBHiltonsBHiltonB
HillsvilleBHillerodBHillbrowB
High RollsB
High LaverB
High FallsBHigh DesertBHigganumBHigdonB	HiawasseeBHeusdenB	HettstedtBHessenBHertenBHerskindBHerseltBHerring CoveBHerricksBHerningBHernandoBHerkimerB	HeraklionB
HenryvilleBHenrievilleB	HenriettaBHenningsvarBHengeloBHenfieldB	HemsworthBHemBHelvetiaBHelsingeBHelmondBHelmbrechtsBHellerupB	Hell GateBHelensburghBHekinan-shiBHeflinBHeerhugowaardB
HeerenveenBHedgesvilleBHebbronvilleBHeavenerBHeathsvilleB
HeathfieldBHeadlandB
HazelbrookBHaywards HeathBHaysBHayforkB
HayesvilleBHawaiian BeachesB
Hawaii KaiB	Haw RiverBHavreB	HaverfordBHaveBHavantB	HauppaugeBHato-BuilikoBHartwellB	HartvilleBHartlyBHartford CityBHarshawBHarrodsburgBHarrisvilleBHarrietBHarperB
HarderwijkBHarbour ViewBHarbor CityBHarbinB	HanstholmBHansbekeBHanover ParkBHannoverB
Hanna CityB
HancevilleBHanaleiBHammondsportBHammBHamilton MountainBHamelnBHamelBHamburg-MitteBHamamatsu-shiBHam LakeBHalton HillsB	HalsterenBHalsteadB	HallowellBHallamB
HaliburtonBHalfwayB
HaleyvilleBHaledonBHaldenBHaifaBHaidian DistrictB	HagåtñaBHaguenauBHagenBHaddon HeightsBHackney WickBGöhlBGuía de IsoraB	GuysvilleB	GuterslohBGunnison RiverBGunnison PalisadeBGummersbachBGuluBGulf HarborsBGuilford CenterBGuerreroBGuernseyBGuemes IslandBGuaymasBGuastiBGuarujaBGuadalajaritaB	GrünwaldBGrullaBGroßen-LindenBGrossetoBGrosse Pointe WoodsBGrižaneBGrindelwaldB
GrimeslandBGrimesBGrey HighlandsBGretzenbachBGressoney-St.-JeanB	GreentownB	GreenportBGreenockB	GreenlandBGreeneB
GreenbrierBGreen ValleyBGreenBGreeceB
GrebbestadBGreat GransdenBGraysonBGraylingB
Gray CourtBGravenhurstBGrantsvilleB
GranollersBGranite CityBGrande-DigueBGrand-BourgBGrand MaraisBGrand LedgeB
Grand BendB	Grand BayBGranardBGranada Hills NorthB	GramblingBGrambekBGrain ValleyBGowandaB	Gotland 4BGothaBGorno-AltayskBGoreyBGordoB	GoodfieldBGomaBGoldens BridgeB
Gold RiverBGodmanchesterBGoddardBGmünd in KärntenBGmina OświęcimBGloversvilleBGlousterBGlobeBGliwiceBGlideB	GlenshielBGlenshawBGlenpoolBGlennieB	GlenmuickBGlenmontBGlen St. MaryB	Glen RockBGlen HuntlyBGlen GardnerBGlen Burnie ParkB
Glen ArborBGlasgow CentralBGlade SpringBGiugliano in CampaniaB	GiubiascoBGinza 2 ChomeBGilsonBGilmourBGilmerBGillBGilkeyBGilfordBGifu-shiBGiffordBGiffoni Valle PianaBGibsonvilleB	GibsontonBGibson Desert NorthBGibsonBGibbonsvilleBGhardaiaBGetxoB	GernsheimBGermanyB	GeraldineBGeorgensgmündBGeorge WestBGenovaBGemeinde WillichBGemeinde TrierBGemeinde SinsheimBGemeinde Schwäbisch HallBGemeinde RitterhudeBGemeinde ReutlingenBGemeinde RegensburgBGemeinde Prien am ChiemseeBGemeinde PeineBGemeinde Neunkirchen am BrandBGemeinde Mühldorf am InnBGemeinde Monheim am RheinBGemeinde LengedeBGemeinde LandshutBGemeinde Idar-ObersteinBGemeinde Hochstadt am MainB"Gemeinde Gundelfingen an der DonauBGemeinde BöblingenBGemeinde Bad WildungenBGemeinde Bad BuchauBGemblouxBGelsenkirchenB	GelselaarBGeleenBGeelong WestBGeboltskirchenBGearhartBGdanskBGawlerBGautierBGaukönigshofenBGassawayBGarzeBGarza GarcíaBGarstangBGarrettBGarfieldBGardizBGarbervilleBGapBGangotriBGambaisBGaletonB	GalesburgBGales FerryBGalatinaBGainesBGaillacBGaildorfBGaffneyB	FøresvikBFøllenslevBFurthBFuldaBFröndenbergBFryeburgB	FruitlandBFruitaB	FrontenacBFrohnaBFrognerBFribourgBFreretBFreiberg am NeckarBFreibergBFrederiksværkBFrederikssundBFredericton AreaBFrattonBFraserburghBFrankenmuthBFrankenbergBFrancofonteBFrancaBFracc Distrito FederalB	Fox PointBFourasB	Four OaksBFoumbanBFostoriaBFossilBFortunaBFort WilliamBFort StewartB
Fort ScottBFort Sam HoustonB
Fort RileyB
Fort PayneBFort MitchellBFort LeavenworthB	Fort KnoxB
Fort IrwinBFort Eustis Miltary ReservationBFort EdwardB	Fort CobbBFort BelvoirB
Fort AshbyBForresB	FormicolaBFormiaB
FormenteraB
Fork UnionBForbesB	FootscrayBFolkstonBFoleyBFoglizzoBFlyingeBFlowery BranchBFloresvilleBFlintshire CountyB	Flin FlonB
FlemingtonBFlemingsburgB	FleetwoodB	Flat BushBFlagler BeachB
FjerdingbyB	FivizzanoBFirgasBFircrestB	FinspångBFinlandBFinglasB	FilipstadBFianarantsoaBFezBFestusBFes al BaliBFerronBFerrières-en-BrieBFerraraB	Fern ParkBFergusBFenwick IslandB
FenstantonB	FennimoreBFelsőtárkányBFeldkirchenB	FeldkirchBFederalsburgBFeastervilleBFayvilleBFaystonBFayetteB
FauntleroyBFatimaB
FarringdonBFarragutBFarnboroughBFarmingvilleBFairview HeightsBFairviewBFairport HarborB
Fair HavenB
FailsworthBFagerstaBFabiusBFaaborgBEygalièresBExtonBExcelsior SpringsB	ExcelsiorBEwingBEveshamBEustisB
EuskirchenBEupenBEttersBEtowahBEstesBEstanciaB
EspinaredoBEspartoBEsopusB	EscheburgBEschbornBErzincanBEruwaBErskinevilleBErskineBErsigenBEppingBEolaB	EntlebuchBEnochBEnmoreB	EnkhuizenBEnglishtownB	EngelbergBEnergyBEndwellBEmporiumB
EmmitsburgBEmiliano ZapataBElthamBElon CollegeBElmsdaleBElmontBElmerBElliot LakeB	EllingtonB	EllenboroBElkinBElkhorn CityB	Elk RidgeBElisabethfehn NordBElectric CityBEldredBEldoretBEldoradoBEldoraBEldonB
EldersburgBEldaBElburnBElburgBElblągBElbertBElbeB
El TorreonB
El SalitreBEl RitoBEl RenoBEl Prat de LlobregatBEl Dorado SpringsBEjido de TultitlanB
EinsiedelnBEilean SiarBEichenauBEhrhardtBEghamBEggenfeldenBEflandBEffortBEdwardsBEdsbynBEdonBEdnaBEdgmondB	EdgewaterBEcijaBEchtB	Echo ParkBEbreichsdorfBEbnat-KappelB
Eau GallieBEaton RapidsBEatonBEastlandB
EastingtonBEasternBEast WheelingBEast Sioux FallsBEast Side PhoenixB
East SheenBEast SetauketBEast San DiegoBEast Saint CloudBEast RidingBEast QuogueBEast PeoriaBEast New YorkBEast MeredithBEast MelbourneBEast MayportBEast LumbertonBEast LothianBEast KilbrideBEast JerusalemBEast HollywoodB
East HavenBEast FlorenceBEast FalmouthBEast ElmhurstBEast El PasoBEast DundeeBEast ChathamB
East ButteBEast BrisbaneBEast BloomfieldBEast BethelBEast BangorBEast BakersfieldBEast AtlantaBEarthBEarlysvilleBEaglescliffeB
Eagle-VailBEagle PointBDushanbeBDuquesneBDupontBDupoBDunwichBDuntaraBDunsterBDunquinBDunoonBDunlapBDunedin NorthBDunedin CentralBDuncanvilleBDuncanBDunbarBDun LaoghaireBDulacBDuchesneBDrydenB	DrummoyneBDrummondvilleBDrontenBDrobeta-Turnu SeverinBDriggsBDrammenBDragorBDowntown WatsonvilleBDowntown MobileBDowntown LouisvilleBDowntown FaribaultBDowntn MinneapolisBDowners GroveBDownBDoubsBDos HermanasBDorseyBDorrigoBDoroteaB	DoravilleBDoralBDoonsideBDonoraBDonaueschingenBDona FranciscaBDoltonB
DoetinchemBDobbs FerryBDobbinBDmitrovBDjibouti CityB	Dix HillsBDistrict d'HochelagaBDisentis/MustérB	Dire DawaB	DinkytownBDingessBDilworthBDilsen-StokkemB	DillsburgBDifferdangeBDieuzeB	DietlikonBDietersheimBDiesdorfBDieburgB	DhrimazesBDessauBDesign DistrictBDesertBDescansoBDes PlainesB	Depoe BayB
DenzlingenBDenmarkBDenhoffBDenham SpringsBDendronB
Den HelderBDemotteBDemingB
DeltavilleBDelsboBDelphosBDelhiBDelemontBDelaware Water GapBDelavanBDelanoBDel CityB	Deer IsleBDeath Valley JunctionBDearborn HeightsB	DavisburgBDavidsonB
Davao CityB
Dauphin RmBDassowB	DanielsonBDangrigaBDalfsenB	Dale CityBDahabBDaejonBDaeguBD'ibervilleBCúcutaBCwmbranBCuyamaBCutler RidgeBCutlerBCupelloB
CunninghamBCulturalBCulrossBCullodenB	CulemborgBCuencaBCudahyB	CubnezaisBCubaBCuautitlan Izcalli CentroBCuajinicuilapaBCrystal RiverBCrystal PalaceBCrystalBCruz BayBCrownsvilleBCrowleyBCrowellB
Crouch EndBCroton HudsonBCrothersvilleB
CrossvilleBCropredyBCroix des BouquetsBCrockettBCridersvilleBCrianlarichB	CrewkerneBCreteBCrestonBCrested Butte SoBCressonB	CresskillBCrespièresBCreemoreB	CreedmoorBCrawfordvilleBCrater LakeBCrasto de CampiaB	CranfieldBCraneB	CranbrookBCranberry IslesB
CraftsburyB	CoxsackieBCowesBCovertB
CourcellesBCountry Club HillsBCoulans-sur-GéeB	CottesloeBCottbusBCotonouBCosenzaBCortlandBCortezBCortazar CentroBCorshamBCorona del MarBCornwall on HudsonBCorioB	CorinaldoBCorellaBCordeleB	CorbridgeBCorbeil-EssonnesB
CoraopolisBCoquilleBCopper HarborBCopan RuinasBCooperstown JunctionBCoopersburgBCoolum BeachBCoogeeBConverseBContinentalBContheyBContantB	ConstantaBConshohockenB	ConnemaraB	CongletonBCongersBComstock ParkBComeBColusaBColumbia StationBColumbia FallsBColumbia CityBColquittBColonia FăgărașBColmarBColliervilleBColicoB	Coles BayBColemanBCold SpringBColborneBColbertBCohoesBCoffeyvilleBCoconut GroveBCockeysvilleBCockburn HarbourB
CochrantonBCochraneBCochranBCoatzacoalcosB
CoarsegoldBClydeBCluteBClontarfBClogh MillsBClimaxBCleverBCleoraBClemmonsBClementiBClearlake OaksBCle ElumBClawsonBClausthal-ZellerfeldBClarks GreenB
ClarkfieldBClapham CommonBClancyBClacton-on-SeaBCiudad ObregónBCity of WestminsterBCity of LondonBCity of EdinburghBCirencesterBCirclevilleBCinnaminsonBCiconioBChézy-sur-MarneBChâteauguayBChâlons-en-ChampagneB	ChurchtonB
ChurchdownB
Chungju-SiBChorlton Cum HardyBChorltonBChocowinityB
ChittagongBChitralBChipman ParishBChino ValleyB	ChinautlaB	ChinatownBChildsBChietiBChicontepec de TejedaBChichihualcoBChichigalpaB	ChiavennaBChiassoBChevy ChaseBCheverlyBChesterlandBChesterhillB	ChernihivBChemalBChelanBChavanayB	ChauvignyB
ChautauquaBChaumontBCharlotte HallB
CharlevoixBCharleville-MézièresBCharlestownBChaplinB	ChannahonBChaniaBChangewaterB
ChandigarhBChamplinB	ChamplainBChamblyBChalmitaBChalk RiverBChalcoBCevinsBCesenaBCerro de PascoBCeresBCeredigion CountyBCentro TlaxcalaBCentreBCentral MercedBCentral HarlemB
CentereachBCelràBCeloB
CellarengoBCeglie MessapicaBCefaluB	CedaredgeBCawstonB	CavaillonBCausewayBCauayanB	CatterickBCattaraugusBCatoosaBCatlettsburgBCathedral CityBCatfordBCatenanuovaB	CatanzaroBCataloocheeBCastrovillariB
CastlefordBCastelnuovo Don BoscoBCastello di QuercetoBCastellammare del GolfoBCassinoBCassano d'AddaBCasparBCashmereBCascoBCascadeB	CasaprotaBCarverBCarugateB
CartwrightBCarrollBCarrick-on-SuirBCarraraB
CarpentrasBCarpentersvilleBCaroline SpringsBCarneys PointB	CarnationBCarmenBCarlyleBCarlowBCarlos Julio Arosemena TolaBCarl JunctionBCarinaroBCarignanBCarellesBCarcassonneBCapreolBCapitolaBCapitol HeightsBCapenaBCape May Court HouseB
Cape CoastB	CapbretonBCap-aux-MeulesBCanzoBCanyonvilleBCanyon CountryBCanvey islandBCantilBCanonica d'AddaBCangasBCanandaiguaBCanal WinchesterBCamroseBCamptonBCampoB
CamperdownBCampbelltownB
Camp MccoyBCamden TownBCambriaB	CamberleyBCamano CityBCamaioreBCalsazioBCalneBCalifornia MaisonB
CaliforniaBCalifonBCalienteBCalexicoBCalcaBCaistorBCahorsBCaguasB
CaernarfonBCaerano di San MarcoBCaddo MillsBCaciqueBCaccuriBCabarita BeachBBürenBBühlBBösteBBätterkindenBByronBByersBBuzzards BayBButnerBButemboBBusto GarolfoBBusto ArsizioBBushnellBBushkillBBuryBBurwoodBBurtonsvilleBBurtonB	BurscoughBBurnt PointBBurns HarborBBurnley BoroughBBurnaby HeightsBBurleighBBurgawBBungomaBBungawalbinB	BundabergBBulleBBulgarograssoBBulachBBukit TimahBBuena VistaBBuckowBBuckleyBBuchholz in der NordheideBBryneBBryant PondBBrusselBBrush CreekBBrunerBBruce CrossingB	BrownwoodB
BrownvilleB
Brown DeerBBrossardBBrooksvilleB	BrookstonB	BrooklawnBBronzevilleB	BromöllaB
BrokenheadB
Broken BowBBrodheadBBrockwayB	BrockportBBroadstairsB
BroadbeachBBroad Ripple VillageBBrittBBrisighellaBBrinayB
BrigantineBBrie-Comte-RobertB
BridgetownB	BridgetonBBridgendBBridgehamptonB	BriançonB	BressuireB
BressanoneB	BremangerB
BreezewoodBBreeBBredeneBBreconBBre sopra LuganoBBrazzavilleBBraunau am InnB	BrasstownBBrasiliaBBrandenburgBBrandeB
BrandasundB
BranchlandB	BrambauerB	BraidwoodBBradshawBBradley BeachBBradburyBBrackleyBBracebridgeBBrabrandBBozsokB
Boyne CityBBoyle HeightsBBoyes Hot SpringsBBoydenBBoxfordBBowralBBowmanvilleBBowbellsBBourneBBourdeillesBBourbonnaisBBotopasiBBoscombeBBorneB	BorlängeBBorgo a BuggianoBBoqueteBBootleB
Bonny DoonBBonner SpringsBBondiBBollingstedtBBoleroBBoiling SpringsBBoekelB	Bodh GayaBBodenBBochniaB
Boca ChicaBBobo-DioulassoB	BoblingenBBoB
Bluff ParkB
Bluff CityB
Blue RiverB
Blue PointBBlue IslandB	BlotzheimB	BlossvaleB	BlossburgBBledBBlanesBBlancoBBlancaBBlairBBladensburgB	BlacktownB
BlackshearBBlackhall MillB
Black WolfBBlack ForestBBlack DiamondBBishopvilleBBishop Arts DistrictB	BisholderBBirnamB
BirkenfeldB
BiristrandB
BirdsvilleB	Birch RunB	Birch BayBBiotBBiolBBingenBBilstonB
BillinghamB	BillericaBBilbao la ViejaBBila TserkvaBBihaćBBiharBBiggersvilleBBig SkyB
Big RapidsBBig ArmBBielB	BickletonBBhowaliBBhadaurBBewdleyBBetws-y-coedB
BethersdenBBethel SpringsBBetaghstownBBestBBessemerB	BesançonBBerwick-upon-TweedB
BerryvilleB	BerruilesB
BerriedaleBBerounB	BernvilleBBernauBBernardstonBBerkel en RodenrysBBeri NagBBergschenhoekBBergeracB	BeresfordBBentleigh EastBBensonBBenjaminBBenito JuarezB	BeneventoBBenbrookBBenalmádenaBBenalmadena CostaBBelpreBBelmont ShoreB
BellflowerBBelleauBBelleairBBelle PlaineB	BellbrookBBella CoolaBBelfairBBelchertownBBelairB	BeilsteinBBegaB	BeenleighBBeek en DonkBBeebeBBedburgBBeclersB	BeckenhamBBeaver BottomBBeaverBBeauportB
BeardstownB	Bear LakeB
Bear CreekBBaños de Agua SantaBBañosBBayreuthBBayfieldBBayan-UlaanBBayamónBBay VillageBBattery Park CityBBat CaveBBastiaBBasking RidgeBBasinBBarßelBBartonvilleBBartonBBartlesvilleB	BarnsteadBBarnoldswickBBarnard CastleBBarlettaB
BarlassinaB	BarilocheBBarendrechtBBaragaB
BanyuwangiBBanska BystricaBBannerBBandonB	BandhagenBBanderaBBan Tha Song YangBBan RangsitBBamendaBBalsall CommonBBalmoralB
BallymoneyB
BallyheigeBBallumBBallston SpaB	BallingerBBallardBBaliBBaldwinsvilleB	Bald HillBBalatonfüredBBakuBBaiting HollowBBairikiBBailly-RomainvilliersBBaileys HarborBBaie-St.-PaulBBaie-ComeauBBagamoyoBBadolatoBBaden bei WienBBad VöslauBBad Neustadt an der SaaleBBad AxeBBabylonBBaarle-NassauBAçoresBAzoyúBAyutlaBAynorBAwendawBAvondaleB	Avon ParkBAvilésBAvilesBAveryBAvellinoBAvelgemBAvaruaBAvalonB	AurovilleB	AumsvilleBAultBAuggenBAubussonBAubenasB	AttleboroBAthertonBAthenryBAtchisonBAtacamaB
AssiniboiaBAsmalı MescitBAsiagoBAshvilleBAshmoreBAshleyBAschauBAscensión de GuarayosBArzoBArvikaBArundelB	ArringtonBArpajonBArnpriorBArnaudvilleB	ArmstrongBArmentièresBArmadaleBArleeBArklowB	ArkhangelBArkadelphiaBArizonaB	Arita-choBArgyleB	ArgentréBArequipaB	AreopolisBAreopoliBArendalBApolloBApanBAostaBAnzioBAntonyBAnthonyBAnnanBAnnaBAnjarBAngmassalikBAnglesey CountyBAngierBAngels CampBAndratxBAnahuacBAnacondaBAnabelB
AmstelveenBAmmonBAmityBAmeliaBAmegliaBAmbérieu-en-BugeyB	AmblesideBAmadoraBAlvonB	Alton BayBAltenstadt an der WaldnaabB	AltenglanBAltdorfBAlsipBAlseaBAlsagerBAlphaBAlmstorfBAlmendralejoBAlmaden ValleyB	AllschwilBAllonsBAljezurB	AlgonquinBAlgarviaBAldieB
AldergroveBAlcoaBAlcala de HenaresB	AlbuixechBAlberiteBAlassioBAlapahaBAlabama JunctionB
Al ZaatariBAkwesasne Indian Reserve 59BAkumalBAkkarBAkaroaBAix-les-BainsBAinringBAimeBAguilarBAgenBAgadezB	AdmiraltyBAdmastonBAdkinsBAdipurBAdejeBAddorBAcolmanBAchouffeBAchernB	AcharacleBAcampoBAcademy ParkBAbseconBAbidjanBAbertilleryB	AberfeldyBAberdourB	AbbevilleBAbanillaBAalterB99629B98312B98104B97527B96740B95823B95391B94965B94581B94533B94062B93562B93536B93041B93003B92683B92116B92101B91762B91603B91016B90731B90076B90005B89496B89112B89048B87119B85381B85304B84790B84721B84117B84078B83405B83209B82601B81224B80995B80911B80906B80504B80279B80205B77318B76097B75965B75662B75605B75402B75209B75119B75087B74066B72765B72758B72601B70809B70726B70510B64117B64105B63301B63139B63114B60645B60505B60085B60076B59601B56001B54904B50021B50014B49735B48381B45648B45298B45250B45215B45211B45201B45044B44240B44120B43701B40741B40208B39705B39534B39440B37056B36830B36081B34986B33837B33026B33009B32837B32821B32570B32024B30906B30606B30096B30013B30004B29715B28147B25401B23831B23602B23226B21842B21217B20815B20164B19403B19193B19136B18104B15701B15224B13850B11249B11237B11221B11101B10307B10303B10184B10128B10025B08360B07430B07311B07006B06511B06095B06082B06040B06010B03247
??
Const_21Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      
?
Const_22Const*
_output_shapes	
:?*
dtype0*?
value?B??BComedyBProduct DesignBGraphic NovelsBFictionBSoftwareBPopBWebBAccessoriesBGraphic DesignBPlaysBTabletop GamesBComic BooksBDrinksBRestaurantsB
PhotobooksBSmall BatchBChildren's BooksBApparelBIllustrationBDocumentaryBCountry & FolkBDramaBElectronic MusicBVideo GamesBPlaying CardsBClassical MusicBRockBMobile GamesBShortsBWorld MusicB
Indie RockBGadgetsB	WebcomicsBHardwareB	AnimationB	Art BooksBMixed MediaB
NonfictionB	WebseriesBHip-HopBDigital ArtB
Public ArtBFood TrucksBNarrative FilmBPaintingBAppsBPerformance ArtBPerformancesBJewelryBSoundBAudioBPrintBEventsB	CookbooksBDIYBFarmsBAnthologiesBHorrorBPoetryBJazzB	SculptureBSpacesBWoodworkingB
JournalismBFootwearB	WearablesBPeopleBPeriodicalsBDanceBFaithBDIY ElectronicsBVeganBR&BB
Live GamesBConceptual ArtB	FestivalsBMusicalBAcademicB
TelevisionBRadio & PodcastsBFine ArtBReady-to-wearBCraftsBFoodBExperimentalBMetalBActionBCeramicsBYoung AdultBScience FictionBPlacesB	ThrillersBArtBPunkB3D PrintingBVideoBMusic VideosBLiterary JournalsBArchitectureBNatureBMusicBCommunity GardensBChildrenswearBCandlesBZinesBGaming HardwareBCamera EquipmentBPhotoB	CalendarsBRobotsBInstallationsB
StationeryBFarmer's MarketsBInteractive DesignB	ImmersiveBPuzzlesBTheaterBFamilyBFantasyBTextilesBDesignBMovie TheatersBSpace ExplorationBBaconBPhotographyBFlightBToysBBluesBLiterary SpacesBCivic DesignBAnimalsBPrintingBKnittingBCoutureBFabrication ToolsB
TechnologyBRomanceB
PublishingB	WorkshopsBMakerspacesBComicsBPotteryBGlassBKidsB
EmbroideryBCrochetBLatinB	Video ArtBFilm & VideoBLetterpressB
TypographyBTranslationsBPet FashionBWeavingBResidenciesBFashionBQuiltsBSocial PracticeBChiptuneBGamesB	Taxidermy
?

Const_23Const*
_output_shapes	
:?*
dtype0	*?

value?
B?
	?"?
                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       
?
Const_24Const*
_output_shapes
:*
dtype0*^
valueUBSBUSDBGBPBEURBCADBAUDBMXNBHKDBSEKBNZDBDKKBSGDBJPYBCHFBNOKBPLN
?
Const_25Const*
_output_shapes
:*
dtype0	*?
value?B?	"x                                                        	       
                                          
?
Const_26Const*
_output_shapes
:*
dtype0	*u
valuelBj	"`
                     	                                                               
?
Const_27Const*
_output_shapes
:*
dtype0	*u
valuelBj	"`                                                        	       
                     
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_18Const_19*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318062
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318067
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_20Const_21*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318075
?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318080
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_22Const_23*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318088
?
PartitionedCall_2PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318093
?
StatefulPartitionedCall_3StatefulPartitionedCallhash_table_3Const_24Const_25*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318101
?
PartitionedCall_3PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318106
?
StatefulPartitionedCall_4StatefulPartitionedCallhash_table_4Const_26Const_27*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318114
?
PartitionedCall_4PartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_2318119
?
NoOpNoOp^PartitionedCall^PartitionedCall_1^PartitionedCall_2^PartitionedCall_3^PartitionedCall_4^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3^StatefulPartitionedCall_4
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?
AMutableHashTable_1_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_1*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_1*
_output_shapes

::
?
AMutableHashTable_2_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_2*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_2*
_output_shapes

::
?
AMutableHashTable_3_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_3*
Tkeys0*
Tvalues0	*%
_class
loc:@MutableHashTable_3*
_output_shapes

::
?
AMutableHashTable_4_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable_4*
Tkeys0	*
Tvalues0	*%
_class
loc:@MutableHashTable_4*
_output_shapes

::
?:
Const_28Const"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?: B?:
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-0

layer-9
layer_with_weights-1
layer-10
layer_with_weights-2
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
 
 
 
 
 
 
 
3
lookup_table
token_counts
	keras_api
3
 lookup_table
!token_counts
"	keras_api
3
#lookup_table
$token_counts
%	keras_api
3
&lookup_table
'token_counts
(	keras_api
3
)lookup_table
*token_counts
+	keras_api
?
,
_keep_axis
-_reduce_axis
._reduce_axis_mask
/_broadcast_shape
0mean
0
adapt_mean
1variance
1adapt_variance
	2count
3	keras_api
?
4
_keep_axis
5_reduce_axis
6_reduce_axis_mask
7_broadcast_shape
8mean
8
adapt_mean
9variance
9adapt_variance
	:count
;	keras_api
?
<
_keep_axis
=_reduce_axis
>_reduce_axis_mask
?_broadcast_shape
@mean
@
adapt_mean
Avariance
Aadapt_variance
	Bcount
C	keras_api
?
D
_keep_axis
E_reduce_axis
F_reduce_axis_mask
G_broadcast_shape
Hmean
H
adapt_mean
Ivariance
Iadapt_variance
	Jcount
K	keras_api
R
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
h

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_ratePm?Qm?Zm?[m?Pv?Qv?Zv?[v?
{
05
16
27
88
99
:10
@11
A12
B13
H14
I15
J16
P17
Q18
Z19
[20

P0
Q1
Z2
[3
 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
 

j_initializer
><
table3layer_with_weights-0/token_counts/.ATTRIBUTES/table
 

k_initializer
><
table3layer_with_weights-1/token_counts/.ATTRIBUTES/table
 

l_initializer
><
table3layer_with_weights-2/token_counts/.ATTRIBUTES/table
 

m_initializer
><
table3layer_with_weights-3/token_counts/.ATTRIBUTES/table
 

n_initializer
><
table3layer_with_weights-4/token_counts/.ATTRIBUTES/table
 
 
 
 
 
NL
VARIABLE_VALUEmean4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
PN
VARIABLE_VALUEmean_14layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_18layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_15layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
PN
VARIABLE_VALUEmean_24layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_28layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_25layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
PN
VARIABLE_VALUEmean_34layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUE
variance_38layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_35layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

P0
Q1
 
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
 
 
 
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
[Y
VARIABLE_VALUEdense_7/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_7/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
[
05
16
27
88
99
:10
@11
A12
B13
H14
I15
J16
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_54keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_categoryPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
|
serving_default_city_namePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_countryPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_currencyPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
 serving_default_days_of_campaignPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
~
serving_default_descriptionPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_goalPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

serving_default_launch_monthPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????

serving_default_project_namePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_5StatefulPartitionedCallserving_default_categoryserving_default_city_nameserving_default_countryserving_default_currency serving_default_days_of_campaignserving_default_descriptionserving_default_goalserving_default_launch_monthserving_default_project_name
hash_tableConsthash_table_1Const_1hash_table_2Const_2hash_table_3Const_3hash_table_4Const_4Const_5Const_6Const_7Const_8Const_9Const_10Const_11Const_12dense_6/kerneldense_6/biasdense_7/kerneldense_7/bias**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2317170
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filename?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_1_lookup_table_export_values/LookupTableExportV2CMutableHashTable_1_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_2_lookup_table_export_values/LookupTableExportV2CMutableHashTable_2_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_3_lookup_table_export_values/LookupTableExportV2CMutableHashTable_3_lookup_table_export_values/LookupTableExportV2:1AMutableHashTable_4_lookup_table_export_values/LookupTableExportV2CMutableHashTable_4_lookup_table_export_values/LookupTableExportV2:1mean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOpmean_1/Read/ReadVariableOpvariance_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpmean_2/Read/ReadVariableOpvariance_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpmean_3/Read/ReadVariableOpvariance_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_5/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst_28*8
Tin1
/2-											*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2318317
?
StatefulPartitionedCall_7StatefulPartitionedCallsaver_filenameMutableHashTableMutableHashTable_1MutableHashTable_2MutableHashTable_3MutableHashTable_4meanvariancecountmean_1
variance_1count_1mean_2
variance_2count_2mean_3
variance_3count_3dense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_4total_1count_5Adam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2318441??
?'
?
__inference_adapt_step_1271673
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
?
__inference_<lambda>_23181019
5key_value_init691340_lookuptableimportv2_table_handle1
-key_value_init691340_lookuptableimportv2_keys3
/key_value_init691340_lookuptableimportv2_values	
identity??(key_value_init691340/LookupTableImportV2?
(key_value_init691340/LookupTableImportV2LookupTableImportV25key_value_init691340_lookuptableimportv2_table_handle-key_value_init691340_lookuptableimportv2_keys/key_value_init691340_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init691340/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init691340/LookupTableImportV2(key_value_init691340/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_save_fn_2317903
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
H
__inference__creator_2317775
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_659799*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
__inference_save_fn_2318005
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?U
?
 __inference__traced_save_2318317
file_prefixJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2N
Jsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2_1	L
Hsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2	N
Jsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2_1	#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	%
!savev2_mean_1_read_readvariableop)
%savev2_variance_1_read_readvariableop&
"savev2_count_1_read_readvariableop	%
!savev2_mean_2_read_readvariableop)
%savev2_variance_2_read_readvariableop&
"savev2_count_2_read_readvariableop	%
!savev2_mean_3_read_readvariableop)
%savev2_variance_3_read_readvariableop&
"savev2_count_3_read_readvariableop	-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_5_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const_28

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B8layer_with_weights-0/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-0/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-1/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-1/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-2/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-2/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-3/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-3/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-4/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-4/token_counts/.ATTRIBUTES/table-valuesB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_1_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_2_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_3_lookup_table_export_values_lookuptableexportv2_1Hsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2Jsavev2_mutablehashtable_4_lookup_table_export_values_lookuptableexportv2_1savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop!savev2_mean_1_read_readvariableop%savev2_variance_1_read_readvariableop"savev2_count_1_read_readvariableop!savev2_mean_2_read_readvariableop%savev2_variance_2_read_readvariableop"savev2_count_2_read_readvariableop!savev2_mean_3_read_readvariableop%savev2_variance_3_read_readvariableop"savev2_count_3_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_5_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const_28"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,											?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::::::: ::: ::: ::: :	?P2:2:2:: : : : : : : : : :	?P2:2:2::	?P2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :%!

_output_shapes
:	?P2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :%$!

_output_shapes
:	?P2: %

_output_shapes
:2:$& 

_output_shapes

:2: '

_output_shapes
::%(!

_output_shapes
:	?P2: )

_output_shapes
:2:$* 

_output_shapes

:2: +

_output_shapes
::,

_output_shapes
: 
?
.
__inference__destroyer_2317803
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference_<lambda>_2318067
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
<
__inference__creator_2317823
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name691341*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
 __inference__initializer_23177989
5key_value_init680815_lookuptableimportv2_table_handle1
-key_value_init680815_lookuptableimportv2_keys3
/key_value_init680815_lookuptableimportv2_values	
identity??(key_value_init680815/LookupTableImportV2?
(key_value_init680815/LookupTableImportV2LookupTableImportV25key_value_init680815_lookuptableimportv2_table_handle-key_value_init680815_lookuptableimportv2_keys/key_value_init680815_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init680815/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2T
(key_value_init680815/LookupTableImportV2(key_value_init680815/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_save_fn_2317937
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_2316677

inputs
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8E
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x"
dense_6_2316665:	?P2
dense_6_2316667:2!
dense_7_2316671:2
dense_7_2316673:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleinputsBstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleinputs_1Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleinputs_2Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleinputs_3Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleinputs_4Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_6/subSubinputs_5normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_6normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_8/subSubinputs_7normalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_9/subSubinputs_8normalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_2/PartitionedCallPartitionedCall0string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_6_2316665dense_6_2316667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316421?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_2316671dense_7_2316673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?'
?
__inference_adapt_step_1271626
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316421

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?'
?
__inference_adapt_step_1271767
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
?
 __inference__initializer_23177329
5key_value_init659765_lookuptableimportv2_table_handle1
-key_value_init659765_lookuptableimportv2_keys3
/key_value_init659765_lookuptableimportv2_values	
identity??(key_value_init659765/LookupTableImportV2?
(key_value_init659765/LookupTableImportV2LookupTableImportV25key_value_init659765_lookuptableimportv2_table_handle-key_value_init659765_lookuptableimportv2_keys/key_value_init659765_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init659765/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init659765/LookupTableImportV2(key_value_init659765/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
H
__inference__creator_2317742
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_649274*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
į
?
D__inference_model_3_layer_call_and_return_conditional_losses_2316344

inputs
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8E
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x"
dense_6_2316314:	?P2
dense_6_2316316:2!
dense_7_2316338:2
dense_7_2316340:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleinputsBstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleinputs_1Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleinputs_2Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleinputs_3Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleinputs_4Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_6/subSubinputs_5normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_6normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_8/subSubinputs_7normalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_9/subSubinputs_8normalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_2/PartitionedCallPartitionedCall0string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_6_2316314dense_6_2316316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313?
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316324?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_2316338dense_7_2316340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
H
__inference__creator_2317841
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_680849*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?'
?
__inference_adapt_step_1271720
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
H
__inference__creator_2317874
identity:	 ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_nametable_691374*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
G
+__inference_dropout_3_layer_call_fn_2317677

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316324`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
0
 __inference__initializer_2317813
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_dense_7_layer_call_fn_2317708

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_restore_fn_2317979
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
0
 __inference__initializer_2317747
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_dense_6_layer_call_fn_2317661

inputs
unknown:	?P2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????P
 
_user_specified_nameinputs
?
?
__inference_adapt_step_1271551
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
.
__inference__destroyer_2317818
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_model_3_layer_call_fn_2316781
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?P2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2316677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
__inference_save_fn_2317971
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
.
__inference__destroyer_2317884
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317699

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
 __inference__initializer_23177659
5key_value_init670290_lookuptableimportv2_table_handle1
-key_value_init670290_lookuptableimportv2_keys3
/key_value_init670290_lookuptableimportv2_values	
identity??(key_value_init670290/LookupTableImportV2?
(key_value_init670290/LookupTableImportV2LookupTableImportV25key_value_init670290_lookuptableimportv2_table_handle-key_value_init670290_lookuptableimportv2_keys/key_value_init670290_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init670290/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2T
(key_value_init670290/LookupTableImportV2(key_value_init670290/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
?
 __inference__initializer_23178319
5key_value_init691340_lookuptableimportv2_table_handle1
-key_value_init691340_lookuptableimportv2_keys3
/key_value_init691340_lookuptableimportv2_values	
identity??(key_value_init691340/LookupTableImportV2?
(key_value_init691340/LookupTableImportV2LookupTableImportV25key_value_init691340_lookuptableimportv2_table_handle-key_value_init691340_lookuptableimportv2_keys/key_value_init691340_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init691340/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init691340/LookupTableImportV2(key_value_init691340/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_restore_fn_2318047
restored_tensors_0	
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
__inference_<lambda>_23180889
5key_value_init680815_lookuptableimportv2_table_handle1
-key_value_init680815_lookuptableimportv2_keys3
/key_value_init680815_lookuptableimportv2_values	
identity??(key_value_init680815/LookupTableImportV2?
(key_value_init680815/LookupTableImportV2LookupTableImportV25key_value_init680815_lookuptableimportv2_table_handle-key_value_init680815_lookuptableimportv2_keys/key_value_init680815_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init680815/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2T
(key_value_init680815/LookupTableImportV2(key_value_init680815/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_restore_fn_2317945
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
__inference_restore_fn_2318013
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
,
__inference_<lambda>_2318119
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
D__inference_dense_7_layer_call_and_return_conditional_losses_2317719

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313

inputs1
matmul_readvariableop_resource:	?P2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????P
 
_user_specified_nameinputs
?
<
__inference__creator_2317856
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name701866*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
<
__inference__creator_2317790
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name680816*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
˳
?
D__inference_model_3_layer_call_and_return_conditional_losses_2317451
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8E
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x9
&dense_6_matmul_readvariableop_resource:	?P25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleinputs_0Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleinputs_1Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleinputs_2Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleinputs_3Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleinputs_4Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_6/subSubinputs_5normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_6normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_8/subSubinputs_7normalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_9/subSubinputs_8normalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:?????????[
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_2/concatConcatV20string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0"concatenate_2/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????P?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?P2*
dtype0?
dense_6/MatMulMatMulconcatenate_2/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2l
dropout_3/IdentityIdentitydense_6/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_7/MatMulMatMuldropout_3/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
d
+__inference_dropout_3_layer_call_fn_2317682

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
.
__inference__destroyer_2317836
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
0
 __inference__initializer_2317879
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_<lambda>_23181149
5key_value_init701865_lookuptableimportv2_table_handle1
-key_value_init701865_lookuptableimportv2_keys	3
/key_value_init701865_lookuptableimportv2_values	
identity??(key_value_init701865/LookupTableImportV2?
(key_value_init701865/LookupTableImportV2LookupTableImportV25key_value_init701865_lookuptableimportv2_table_handle-key_value_init701865_lookuptableimportv2_keys/key_value_init701865_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init701865/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init701865/LookupTableImportV2(key_value_init701865/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
/__inference_concatenate_2_layer_call_fn_2317638
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????N:??????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????N
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8
?
.
__inference__destroyer_2317851
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_model_3_layer_call_fn_2317227
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?P2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2316344o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
<
__inference__creator_2317724
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name659766*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
__inference_<lambda>_23180759
5key_value_init670290_lookuptableimportv2_table_handle1
-key_value_init670290_lookuptableimportv2_keys3
/key_value_init670290_lookuptableimportv2_values	
identity??(key_value_init670290/LookupTableImportV2?
(key_value_init670290/LookupTableImportV2LookupTableImportV25key_value_init670290_lookuptableimportv2_table_handle-key_value_init670290_lookuptableimportv2_keys/key_value_init670290_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init670290/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2T
(key_value_init670290/LookupTableImportV2(key_value_init670290/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
,
__inference_<lambda>_2318093
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_2317105
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_nameE
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x"
dense_6_2317093:	?P2
dense_6_2317095:2!
dense_7_2317099:2
dense_7_2317101:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handlecountryBstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle	city_nameBstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handlecategoryBstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handlecurrencyBstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handlelaunch_monthBinteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(i
normalization_6/subSubgoalnormalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????u
normalization_7/subSubdays_of_campaignnormalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????p
normalization_8/subSubdescriptionnormalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????q
normalization_9/subSubproject_namenormalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_2/PartitionedCallPartitionedCall0string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_6_2317093dense_6_2317095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316421?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_2317099dense_7_2317101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
?
__inference_adapt_step_1271579
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0	*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0	*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_2317625
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8E
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x9
&dense_6_matmul_readvariableop_resource:	?P25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleinputs_0Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleinputs_1Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleinputs_2Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleinputs_3Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleinputs_4Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(m
normalization_6/subSubinputs_5normalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_7/subSubinputs_6normalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_8/subSubinputs_7normalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????m
normalization_9/subSubinputs_8normalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:?????????[
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_2/concatConcatV20string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0"concatenate_2/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????P?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?P2*
dtype0?
dense_6/MatMulMatMulconcatenate_2/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_3/dropout/MulMuldense_6/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2a
dropout_3/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_7/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
??
?
"__inference__wrapped_model_2316125
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_nameM
Imodel_3_string_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleN
Jmodel_3_string_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	M
Imodel_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleN
Jmodel_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	M
Imodel_3_string_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleN
Jmodel_3_string_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	M
Imodel_3_string_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleN
Jmodel_3_string_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	M
Imodel_3_integer_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleN
Jmodel_3_integer_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	!
model_3_normalization_6_sub_y"
model_3_normalization_6_sqrt_x!
model_3_normalization_7_sub_y"
model_3_normalization_7_sqrt_x!
model_3_normalization_8_sub_y"
model_3_normalization_8_sqrt_x!
model_3_normalization_9_sub_y"
model_3_normalization_9_sqrt_xA
.model_3_dense_6_matmul_readvariableop_resource:	?P2=
/model_3_dense_6_biasadd_readvariableop_resource:2@
.model_3_dense_7_matmul_readvariableop_resource:2=
/model_3_dense_7_biasadd_readvariableop_resource:
identity??&model_3/dense_6/BiasAdd/ReadVariableOp?%model_3/dense_6/MatMul/ReadVariableOp?&model_3/dense_7/BiasAdd/ReadVariableOp?%model_3/dense_7/MatMul/ReadVariableOp?<model_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV2?<model_3/string_lookup_10/hash_table_Lookup/LookupTableFindV2?<model_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2?<model_3/string_lookup_12/hash_table_Lookup/LookupTableFindV2?<model_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2?
<model_3/string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Imodel_3_string_lookup_10_hash_table_lookup_lookuptablefindv2_table_handlecountryJmodel_3_string_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
!model_3/string_lookup_10/IdentityIdentityEmodel_3/string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_3/string_lookup_10/bincount/ShapeShape*model_3/string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:q
'model_3/string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_3/string_lookup_10/bincount/ProdProd0model_3/string_lookup_10/bincount/Shape:output:00model_3/string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_3/string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_3/string_lookup_10/bincount/GreaterGreater/model_3/string_lookup_10/bincount/Prod:output:04model_3/string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_3/string_lookup_10/bincount/CastCast-model_3/string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_3/string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_3/string_lookup_10/bincount/MaxMax*model_3/string_lookup_10/Identity:output:02model_3/string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_3/string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_3/string_lookup_10/bincount/addAddV2.model_3/string_lookup_10/bincount/Max:output:00model_3/string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_3/string_lookup_10/bincount/mulMul*model_3/string_lookup_10/bincount/Cast:y:0)model_3/string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_3/string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/string_lookup_10/bincount/MaximumMaximum4model_3/string_lookup_10/bincount/minlength:output:0)model_3/string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_3/string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/string_lookup_10/bincount/MinimumMinimum4model_3/string_lookup_10/bincount/maxlength:output:0-model_3/string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_3/string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_3/string_lookup_10/bincount/DenseBincountDenseBincount*model_3/string_lookup_10/Identity:output:0-model_3/string_lookup_10/bincount/Minimum:z:02model_3/string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
<model_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Imodel_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle	city_nameJmodel_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
!model_3/string_lookup_11/IdentityIdentityEmodel_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_3/string_lookup_11/bincount/ShapeShape*model_3/string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:q
'model_3/string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_3/string_lookup_11/bincount/ProdProd0model_3/string_lookup_11/bincount/Shape:output:00model_3/string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_3/string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_3/string_lookup_11/bincount/GreaterGreater/model_3/string_lookup_11/bincount/Prod:output:04model_3/string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_3/string_lookup_11/bincount/CastCast-model_3/string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_3/string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_3/string_lookup_11/bincount/MaxMax*model_3/string_lookup_11/Identity:output:02model_3/string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_3/string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_3/string_lookup_11/bincount/addAddV2.model_3/string_lookup_11/bincount/Max:output:00model_3/string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_3/string_lookup_11/bincount/mulMul*model_3/string_lookup_11/bincount/Cast:y:0)model_3/string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: n
+model_3/string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
)model_3/string_lookup_11/bincount/MaximumMaximum4model_3/string_lookup_11/bincount/minlength:output:0)model_3/string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: n
+model_3/string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
)model_3/string_lookup_11/bincount/MinimumMinimum4model_3/string_lookup_11/bincount/maxlength:output:0-model_3/string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_3/string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_3/string_lookup_11/bincount/DenseBincountDenseBincount*model_3/string_lookup_11/Identity:output:0-model_3/string_lookup_11/bincount/Minimum:z:02model_3/string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
<model_3/string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Imodel_3_string_lookup_12_hash_table_lookup_lookuptablefindv2_table_handlecategoryJmodel_3_string_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
!model_3/string_lookup_12/IdentityIdentityEmodel_3/string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_3/string_lookup_12/bincount/ShapeShape*model_3/string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:q
'model_3/string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_3/string_lookup_12/bincount/ProdProd0model_3/string_lookup_12/bincount/Shape:output:00model_3/string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_3/string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_3/string_lookup_12/bincount/GreaterGreater/model_3/string_lookup_12/bincount/Prod:output:04model_3/string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_3/string_lookup_12/bincount/CastCast-model_3/string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_3/string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_3/string_lookup_12/bincount/MaxMax*model_3/string_lookup_12/Identity:output:02model_3/string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_3/string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_3/string_lookup_12/bincount/addAddV2.model_3/string_lookup_12/bincount/Max:output:00model_3/string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_3/string_lookup_12/bincount/mulMul*model_3/string_lookup_12/bincount/Cast:y:0)model_3/string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: n
+model_3/string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
)model_3/string_lookup_12/bincount/MaximumMaximum4model_3/string_lookup_12/bincount/minlength:output:0)model_3/string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: n
+model_3/string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
)model_3/string_lookup_12/bincount/MinimumMinimum4model_3/string_lookup_12/bincount/maxlength:output:0-model_3/string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_3/string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_3/string_lookup_12/bincount/DenseBincountDenseBincount*model_3/string_lookup_12/Identity:output:0-model_3/string_lookup_12/bincount/Minimum:z:02model_3/string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
<model_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Imodel_3_string_lookup_13_hash_table_lookup_lookuptablefindv2_table_handlecurrencyJmodel_3_string_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
!model_3/string_lookup_13/IdentityIdentityEmodel_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_3/string_lookup_13/bincount/ShapeShape*model_3/string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:q
'model_3/string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_3/string_lookup_13/bincount/ProdProd0model_3/string_lookup_13/bincount/Shape:output:00model_3/string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_3/string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_3/string_lookup_13/bincount/GreaterGreater/model_3/string_lookup_13/bincount/Prod:output:04model_3/string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_3/string_lookup_13/bincount/CastCast-model_3/string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_3/string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_3/string_lookup_13/bincount/MaxMax*model_3/string_lookup_13/Identity:output:02model_3/string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_3/string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_3/string_lookup_13/bincount/addAddV2.model_3/string_lookup_13/bincount/Max:output:00model_3/string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_3/string_lookup_13/bincount/mulMul*model_3/string_lookup_13/bincount/Cast:y:0)model_3/string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_3/string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/string_lookup_13/bincount/MaximumMaximum4model_3/string_lookup_13/bincount/minlength:output:0)model_3/string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_3/string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/string_lookup_13/bincount/MinimumMinimum4model_3/string_lookup_13/bincount/maxlength:output:0-model_3/string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_3/string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_3/string_lookup_13/bincount/DenseBincountDenseBincount*model_3/string_lookup_13/Identity:output:0-model_3/string_lookup_13/bincount/Minimum:z:02model_3/string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
<model_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Imodel_3_integer_lookup_2_hash_table_lookup_lookuptablefindv2_table_handlelaunch_monthJmodel_3_integer_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
!model_3/integer_lookup_2/IdentityIdentityEmodel_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:??????????
'model_3/integer_lookup_2/bincount/ShapeShape*model_3/integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:q
'model_3/integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
&model_3/integer_lookup_2/bincount/ProdProd0model_3/integer_lookup_2/bincount/Shape:output:00model_3/integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_3/integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
)model_3/integer_lookup_2/bincount/GreaterGreater/model_3/integer_lookup_2/bincount/Prod:output:04model_3/integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
&model_3/integer_lookup_2/bincount/CastCast-model_3/integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_3/integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
%model_3/integer_lookup_2/bincount/MaxMax*model_3/integer_lookup_2/Identity:output:02model_3/integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_3/integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
%model_3/integer_lookup_2/bincount/addAddV2.model_3/integer_lookup_2/bincount/Max:output:00model_3/integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
%model_3/integer_lookup_2/bincount/mulMul*model_3/integer_lookup_2/bincount/Cast:y:0)model_3/integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_3/integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/integer_lookup_2/bincount/MaximumMaximum4model_3/integer_lookup_2/bincount/minlength:output:0)model_3/integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_3/integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
)model_3/integer_lookup_2/bincount/MinimumMinimum4model_3/integer_lookup_2/bincount/maxlength:output:0-model_3/integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_3/integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
/model_3/integer_lookup_2/bincount/DenseBincountDenseBincount*model_3/integer_lookup_2/Identity:output:0-model_3/integer_lookup_2/bincount/Minimum:z:02model_3/integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(y
model_3/normalization_6/subSubgoalmodel_3_normalization_6_sub_y*
T0*'
_output_shapes
:?????????m
model_3/normalization_6/SqrtSqrtmodel_3_normalization_6_sqrt_x*
T0*
_output_shapes

:f
!model_3/normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_3/normalization_6/MaximumMaximum model_3/normalization_6/Sqrt:y:0*model_3/normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
model_3/normalization_6/truedivRealDivmodel_3/normalization_6/sub:z:0#model_3/normalization_6/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_3/normalization_7/subSubdays_of_campaignmodel_3_normalization_7_sub_y*
T0*'
_output_shapes
:?????????m
model_3/normalization_7/SqrtSqrtmodel_3_normalization_7_sqrt_x*
T0*
_output_shapes

:f
!model_3/normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_3/normalization_7/MaximumMaximum model_3/normalization_7/Sqrt:y:0*model_3/normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
model_3/normalization_7/truedivRealDivmodel_3/normalization_7/sub:z:0#model_3/normalization_7/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_3/normalization_8/subSubdescriptionmodel_3_normalization_8_sub_y*
T0*'
_output_shapes
:?????????m
model_3/normalization_8/SqrtSqrtmodel_3_normalization_8_sqrt_x*
T0*
_output_shapes

:f
!model_3/normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_3/normalization_8/MaximumMaximum model_3/normalization_8/Sqrt:y:0*model_3/normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
model_3/normalization_8/truedivRealDivmodel_3/normalization_8/sub:z:0#model_3/normalization_8/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_3/normalization_9/subSubproject_namemodel_3_normalization_9_sub_y*
T0*'
_output_shapes
:?????????m
model_3/normalization_9/SqrtSqrtmodel_3_normalization_9_sqrt_x*
T0*
_output_shapes

:f
!model_3/normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
model_3/normalization_9/MaximumMaximum model_3/normalization_9/Sqrt:y:0*model_3/normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
model_3/normalization_9/truedivRealDivmodel_3/normalization_9/sub:z:0#model_3/normalization_9/Maximum:z:0*
T0*'
_output_shapes
:?????????c
!model_3/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_3/concatenate_2/concatConcatV28model_3/string_lookup_10/bincount/DenseBincount:output:08model_3/string_lookup_11/bincount/DenseBincount:output:08model_3/string_lookup_12/bincount/DenseBincount:output:08model_3/string_lookup_13/bincount/DenseBincount:output:08model_3/integer_lookup_2/bincount/DenseBincount:output:0#model_3/normalization_6/truediv:z:0#model_3/normalization_7/truediv:z:0#model_3/normalization_8/truediv:z:0#model_3/normalization_9/truediv:z:0*model_3/concatenate_2/concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????P?
%model_3/dense_6/MatMul/ReadVariableOpReadVariableOp.model_3_dense_6_matmul_readvariableop_resource*
_output_shapes
:	?P2*
dtype0?
model_3/dense_6/MatMulMatMul%model_3/concatenate_2/concat:output:0-model_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
&model_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
model_3/dense_6/BiasAddBiasAdd model_3/dense_6/MatMul:product:0.model_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2p
model_3/dense_6/ReluRelu model_3/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2|
model_3/dropout_3/IdentityIdentity"model_3/dense_6/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
%model_3/dense_7/MatMul/ReadVariableOpReadVariableOp.model_3_dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
model_3/dense_7/MatMulMatMul#model_3/dropout_3/Identity:output:0-model_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&model_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_3/dense_7/BiasAddBiasAdd model_3/dense_7/MatMul:product:0.model_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
model_3/dense_7/SigmoidSigmoid model_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitymodel_3/dense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^model_3/dense_6/BiasAdd/ReadVariableOp&^model_3/dense_6/MatMul/ReadVariableOp'^model_3/dense_7/BiasAdd/ReadVariableOp&^model_3/dense_7/MatMul/ReadVariableOp=^model_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV2=^model_3/string_lookup_10/hash_table_Lookup/LookupTableFindV2=^model_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2=^model_3/string_lookup_12/hash_table_Lookup/LookupTableFindV2=^model_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2P
&model_3/dense_6/BiasAdd/ReadVariableOp&model_3/dense_6/BiasAdd/ReadVariableOp2N
%model_3/dense_6/MatMul/ReadVariableOp%model_3/dense_6/MatMul/ReadVariableOp2P
&model_3/dense_7/BiasAdd/ReadVariableOp&model_3/dense_7/BiasAdd/ReadVariableOp2N
%model_3/dense_7/MatMul/ReadVariableOp%model_3/dense_7/MatMul/ReadVariableOp2|
<model_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV2<model_3/integer_lookup_2/hash_table_Lookup/LookupTableFindV22|
<model_3/string_lookup_10/hash_table_Lookup/LookupTableFindV2<model_3/string_lookup_10/hash_table_Lookup/LookupTableFindV22|
<model_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2<model_3/string_lookup_11/hash_table_Lookup/LookupTableFindV22|
<model_3/string_lookup_12/hash_table_Lookup/LookupTableFindV2<model_3/string_lookup_12/hash_table_Lookup/LookupTableFindV22|
<model_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2<model_3/string_lookup_13/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
0
 __inference__initializer_2317846
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__destroyer_2317869
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_adapt_step_1271565
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317687

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
.
__inference__destroyer_2317770
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316324

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_model_3_layer_call_fn_2316391
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?P2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2316344o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_2316943
country
	city_name
category
currency
launch_month	
goal
days_of_campaign
description
project_nameE
Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value	E
Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handleF
Bstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value	E
Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handleF
Binteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value	
normalization_6_sub_y
normalization_6_sqrt_x
normalization_7_sub_y
normalization_7_sqrt_x
normalization_8_sub_y
normalization_8_sqrt_x
normalization_9_sub_y
normalization_9_sqrt_x"
dense_6_2316931:	?P2
dense_6_2316933:2!
dense_7_2316937:2
dense_7_2316939:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?4integer_lookup_2/hash_table_Lookup/LookupTableFindV2?4string_lookup_10/hash_table_Lookup/LookupTableFindV2?4string_lookup_11/hash_table_Lookup/LookupTableFindV2?4string_lookup_12/hash_table_Lookup/LookupTableFindV2?4string_lookup_13/hash_table_Lookup/LookupTableFindV2?
4string_lookup_10/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_10_hash_table_lookup_lookuptablefindv2_table_handlecountryBstring_lookup_10_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_10/IdentityIdentity=string_lookup_10/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_10/bincount/ShapeShape"string_lookup_10/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_10/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_10/bincount/ProdProd(string_lookup_10/bincount/Shape:output:0(string_lookup_10/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_10/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_10/bincount/GreaterGreater'string_lookup_10/bincount/Prod:output:0,string_lookup_10/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_10/bincount/CastCast%string_lookup_10/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_10/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_10/bincount/MaxMax"string_lookup_10/Identity:output:0*string_lookup_10/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_10/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_10/bincount/addAddV2&string_lookup_10/bincount/Max:output:0(string_lookup_10/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_10/bincount/mulMul"string_lookup_10/bincount/Cast:y:0!string_lookup_10/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MaximumMaximum,string_lookup_10/bincount/minlength:output:0!string_lookup_10/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_10/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_10/bincount/MinimumMinimum,string_lookup_10/bincount/maxlength:output:0%string_lookup_10/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_10/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_10/bincount/DenseBincountDenseBincount"string_lookup_10/Identity:output:0%string_lookup_10/bincount/Minimum:z:0*string_lookup_10/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle	city_nameBstring_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_11/IdentityIdentity=string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_11/bincount/ShapeShape"string_lookup_11/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_11/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_11/bincount/ProdProd(string_lookup_11/bincount/Shape:output:0(string_lookup_11/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_11/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_11/bincount/GreaterGreater'string_lookup_11/bincount/Prod:output:0,string_lookup_11/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_11/bincount/CastCast%string_lookup_11/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_11/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_11/bincount/MaxMax"string_lookup_11/Identity:output:0*string_lookup_11/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_11/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_11/bincount/addAddV2&string_lookup_11/bincount/Max:output:0(string_lookup_11/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_11/bincount/mulMul"string_lookup_11/bincount/Cast:y:0!string_lookup_11/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MaximumMaximum,string_lookup_11/bincount/minlength:output:0!string_lookup_11/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_11/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R?N?
!string_lookup_11/bincount/MinimumMinimum,string_lookup_11/bincount/maxlength:output:0%string_lookup_11/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_11/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_11/bincount/DenseBincountDenseBincount"string_lookup_11/Identity:output:0%string_lookup_11/bincount/Minimum:z:0*string_lookup_11/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????N*
binary_output(?
4string_lookup_12/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_12_hash_table_lookup_lookuptablefindv2_table_handlecategoryBstring_lookup_12_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_12/IdentityIdentity=string_lookup_12/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_12/bincount/ShapeShape"string_lookup_12/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_12/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_12/bincount/ProdProd(string_lookup_12/bincount/Shape:output:0(string_lookup_12/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_12/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_12/bincount/GreaterGreater'string_lookup_12/bincount/Prod:output:0,string_lookup_12/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_12/bincount/CastCast%string_lookup_12/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_12/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_12/bincount/MaxMax"string_lookup_12/Identity:output:0*string_lookup_12/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_12/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_12/bincount/addAddV2&string_lookup_12/bincount/Max:output:0(string_lookup_12/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_12/bincount/mulMul"string_lookup_12/bincount/Cast:y:0!string_lookup_12/bincount/add:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MaximumMaximum,string_lookup_12/bincount/minlength:output:0!string_lookup_12/bincount/mul:z:0*
T0	*
_output_shapes
: f
#string_lookup_12/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value
B	 R??
!string_lookup_12/bincount/MinimumMinimum,string_lookup_12/bincount/maxlength:output:0%string_lookup_12/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_12/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_12/bincount/DenseBincountDenseBincount"string_lookup_12/Identity:output:0%string_lookup_12/bincount/Minimum:z:0*string_lookup_12/bincount/Const_2:output:0*
T0*

Tidx0	*(
_output_shapes
:??????????*
binary_output(?
4string_lookup_13/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Astring_lookup_13_hash_table_lookup_lookuptablefindv2_table_handlecurrencyBstring_lookup_13_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:??????????
string_lookup_13/IdentityIdentity=string_lookup_13/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
string_lookup_13/bincount/ShapeShape"string_lookup_13/Identity:output:0*
T0	*
_output_shapes
:i
string_lookup_13/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
string_lookup_13/bincount/ProdProd(string_lookup_13/bincount/Shape:output:0(string_lookup_13/bincount/Const:output:0*
T0*
_output_shapes
: e
#string_lookup_13/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!string_lookup_13/bincount/GreaterGreater'string_lookup_13/bincount/Prod:output:0,string_lookup_13/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
string_lookup_13/bincount/CastCast%string_lookup_13/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!string_lookup_13/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
string_lookup_13/bincount/MaxMax"string_lookup_13/Identity:output:0*string_lookup_13/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
string_lookup_13/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
string_lookup_13/bincount/addAddV2&string_lookup_13/bincount/Max:output:0(string_lookup_13/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
string_lookup_13/bincount/mulMul"string_lookup_13/bincount/Cast:y:0!string_lookup_13/bincount/add:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MaximumMaximum,string_lookup_13/bincount/minlength:output:0!string_lookup_13/bincount/mul:z:0*
T0	*
_output_shapes
: e
#string_lookup_13/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!string_lookup_13/bincount/MinimumMinimum,string_lookup_13/bincount/maxlength:output:0%string_lookup_13/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!string_lookup_13/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'string_lookup_13/bincount/DenseBincountDenseBincount"string_lookup_13/Identity:output:0%string_lookup_13/bincount/Minimum:z:0*string_lookup_13/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(?
4integer_lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ainteger_lookup_2_hash_table_lookup_lookuptablefindv2_table_handlelaunch_monthBinteger_lookup_2_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:??????????
integer_lookup_2/IdentityIdentity=integer_lookup_2/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:?????????q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R?
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ?
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R?
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ?
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:?????????*
binary_output(i
normalization_6/subSubgoalnormalization_6_sub_y*
T0*'
_output_shapes
:?????????]
normalization_6/SqrtSqrtnormalization_6_sqrt_x*
T0*
_output_shapes

:^
normalization_6/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_6/MaximumMaximumnormalization_6/Sqrt:y:0"normalization_6/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_6/truedivRealDivnormalization_6/sub:z:0normalization_6/Maximum:z:0*
T0*'
_output_shapes
:?????????u
normalization_7/subSubdays_of_campaignnormalization_7_sub_y*
T0*'
_output_shapes
:?????????]
normalization_7/SqrtSqrtnormalization_7_sqrt_x*
T0*
_output_shapes

:^
normalization_7/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_7/MaximumMaximumnormalization_7/Sqrt:y:0"normalization_7/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_7/truedivRealDivnormalization_7/sub:z:0normalization_7/Maximum:z:0*
T0*'
_output_shapes
:?????????p
normalization_8/subSubdescriptionnormalization_8_sub_y*
T0*'
_output_shapes
:?????????]
normalization_8/SqrtSqrtnormalization_8_sqrt_x*
T0*
_output_shapes

:^
normalization_8/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_8/MaximumMaximumnormalization_8/Sqrt:y:0"normalization_8/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_8/truedivRealDivnormalization_8/sub:z:0normalization_8/Maximum:z:0*
T0*'
_output_shapes
:?????????q
normalization_9/subSubproject_namenormalization_9_sub_y*
T0*'
_output_shapes
:?????????]
normalization_9/SqrtSqrtnormalization_9_sqrt_x*
T0*
_output_shapes

:^
normalization_9/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_9/MaximumMaximumnormalization_9/Sqrt:y:0"normalization_9/Maximum/y:output:0*
T0*
_output_shapes

:?
normalization_9/truedivRealDivnormalization_9/sub:z:0normalization_9/Maximum:z:0*
T0*'
_output_shapes
:??????????
concatenate_2/PartitionedCallPartitionedCall0string_lookup_10/bincount/DenseBincount:output:00string_lookup_11/bincount/DenseBincount:output:00string_lookup_12/bincount/DenseBincount:output:00string_lookup_13/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0normalization_6/truediv:z:0normalization_7/truediv:z:0normalization_8/truediv:z:0normalization_9/truediv:z:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_6_2316931dense_6_2316933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_2316313?
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_2316324?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_2316937dense_7_2316939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_2316337w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall5^integer_lookup_2/hash_table_Lookup/LookupTableFindV25^string_lookup_10/hash_table_Lookup/LookupTableFindV25^string_lookup_11/hash_table_Lookup/LookupTableFindV25^string_lookup_12/hash_table_Lookup/LookupTableFindV25^string_lookup_13/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2l
4integer_lookup_2/hash_table_Lookup/LookupTableFindV24integer_lookup_2/hash_table_Lookup/LookupTableFindV22l
4string_lookup_10/hash_table_Lookup/LookupTableFindV24string_lookup_10/hash_table_Lookup/LookupTableFindV22l
4string_lookup_11/hash_table_Lookup/LookupTableFindV24string_lookup_11/hash_table_Lookup/LookupTableFindV22l
4string_lookup_12/hash_table_Lookup/LookupTableFindV24string_lookup_12/hash_table_Lookup/LookupTableFindV22l
4string_lookup_13/hash_table_Lookup/LookupTableFindV24string_lookup_13/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	country:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:QM
'
_output_shapes
:?????????
"
_user_specified_name
category:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:MI
'
_output_shapes
:?????????

_user_specified_namegoal:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
.
__inference__destroyer_2317752
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ß
?
#__inference__traced_restore_2318441
file_prefixM
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: Q
Gmutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtable_1: Q
Gmutablehashtable_table_restore_2_lookuptableimportv2_mutablehashtable_2: Q
Gmutablehashtable_table_restore_3_lookuptableimportv2_mutablehashtable_3: Q
Gmutablehashtable_table_restore_4_lookuptableimportv2_mutablehashtable_4:	 #
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 '
assignvariableop_3_mean_1:+
assignvariableop_4_variance_1:$
assignvariableop_5_count_1:	 '
assignvariableop_6_mean_2:+
assignvariableop_7_variance_2:$
assignvariableop_8_count_2:	 '
assignvariableop_9_mean_3:,
assignvariableop_10_variance_3:%
assignvariableop_11_count_3:	 5
"assignvariableop_12_dense_6_kernel:	?P2.
 assignvariableop_13_dense_6_bias:24
"assignvariableop_14_dense_7_kernel:2.
 assignvariableop_15_dense_7_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: %
assignvariableop_22_count_4: %
assignvariableop_23_total_1: %
assignvariableop_24_count_5: <
)assignvariableop_25_adam_dense_6_kernel_m:	?P25
'assignvariableop_26_adam_dense_6_bias_m:2;
)assignvariableop_27_adam_dense_7_kernel_m:25
'assignvariableop_28_adam_dense_7_bias_m:<
)assignvariableop_29_adam_dense_6_kernel_v:	?P25
'assignvariableop_30_adam_dense_6_bias_v:2;
)assignvariableop_31_adam_dense_7_kernel_v:25
'assignvariableop_32_adam_dense_7_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?4MutableHashTable_table_restore_1/LookupTableImportV2?4MutableHashTable_table_restore_2/LookupTableImportV2?4MutableHashTable_table_restore_3/LookupTableImportV2?4MutableHashTable_table_restore_4/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B8layer_with_weights-0/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-0/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-1/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-1/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-2/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-2/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-3/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-3/token_counts/.ATTRIBUTES/table-valuesB8layer_with_weights-4/token_counts/.ATTRIBUTES/table-keysB:layer_with_weights-4/token_counts/.ATTRIBUTES/table-valuesB4layer_with_weights-5/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-5/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-6/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-8/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,											?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ?
4MutableHashTable_table_restore_1/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_1_lookuptableimportv2_mutablehashtable_1RestoreV2:tensors:2RestoreV2:tensors:3*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_1*
_output_shapes
 ?
4MutableHashTable_table_restore_2/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_2_lookuptableimportv2_mutablehashtable_2RestoreV2:tensors:4RestoreV2:tensors:5*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_2*
_output_shapes
 ?
4MutableHashTable_table_restore_3/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_3_lookuptableimportv2_mutablehashtable_3RestoreV2:tensors:6RestoreV2:tensors:7*	
Tin0*

Tout0	*%
_class
loc:@MutableHashTable_3*
_output_shapes
 ?
4MutableHashTable_table_restore_4/LookupTableImportV2LookupTableImportV2Gmutablehashtable_table_restore_4_lookuptableimportv2_mutablehashtable_4RestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0	*

Tout0	*%
_class
loc:@MutableHashTable_4*
_output_shapes
 \
IdentityIdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_1IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_2IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_3IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_mean_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_4IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_variance_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_5IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_count_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_6IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_mean_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_7IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_variance_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_8IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	^

Identity_9IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_mean_3Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_variance_3Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_3Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_4Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_5Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_6_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_7_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_7_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_6_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_6_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_7_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_7_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV25^MutableHashTable_table_restore_2/LookupTableImportV25^MutableHashTable_table_restore_3/LookupTableImportV25^MutableHashTable_table_restore_4/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV25^MutableHashTable_table_restore_1/LookupTableImportV25^MutableHashTable_table_restore_2/LookupTableImportV25^MutableHashTable_table_restore_3/LookupTableImportV25^MutableHashTable_table_restore_4/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV22l
4MutableHashTable_table_restore_1/LookupTableImportV24MutableHashTable_table_restore_1/LookupTableImportV22l
4MutableHashTable_table_restore_2/LookupTableImportV24MutableHashTable_table_restore_2/LookupTableImportV22l
4MutableHashTable_table_restore_3/LookupTableImportV24MutableHashTable_table_restore_3/LookupTableImportV22l
4MutableHashTable_table_restore_4/LookupTableImportV24MutableHashTable_table_restore_4/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable:+'
%
_class
loc:@MutableHashTable_1:+'
%
_class
loc:@MutableHashTable_2:+'
%
_class
loc:@MutableHashTable_3:+'
%
_class
loc:@MutableHashTable_4
?
.
__inference__destroyer_2317737
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
)__inference_model_3_layer_call_fn_2317284
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4	
inputs_5
inputs_6
inputs_7
inputs_8
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?P2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2316677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?
0
 __inference__initializer_2317780
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_restore_fn_2317911
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
__inference_save_fn_2318039
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2	

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0	*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0	*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
__inference_adapt_step_1271537
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2316300

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????PX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????N:??????????:?????????:?????????:?????????:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????N
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2317652
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*(
_output_shapes
:??????????PX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????N:??????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????N
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8
?
.
__inference__destroyer_2317785
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_23180629
5key_value_init659765_lookuptableimportv2_table_handle1
-key_value_init659765_lookuptableimportv2_keys3
/key_value_init659765_lookuptableimportv2_values	
identity??(key_value_init659765/LookupTableImportV2?
(key_value_init659765/LookupTableImportV2LookupTableImportV25key_value_init659765_lookuptableimportv2_table_handle-key_value_init659765_lookuptableimportv2_keys/key_value_init659765_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init659765/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init659765/LookupTableImportV2(key_value_init659765/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
H
__inference__creator_2317808
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_670324*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
 __inference__initializer_23178649
5key_value_init701865_lookuptableimportv2_table_handle1
-key_value_init701865_lookuptableimportv2_keys	3
/key_value_init701865_lookuptableimportv2_values	
identity??(key_value_init701865/LookupTableImportV2?
(key_value_init701865/LookupTableImportV2LookupTableImportV25key_value_init701865_lookuptableimportv2_table_handle-key_value_init701865_lookuptableimportv2_keys/key_value_init701865_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^key_value_init701865/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2T
(key_value_init701865/LookupTableImportV2(key_value_init701865/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
,
__inference_<lambda>_2318106
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_adapt_step_1271523
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
ReshapeReshapeIteratorGetNext:components:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
%__inference_signature_wrapper_2317170
category
	city_name
country
currency
days_of_campaign
description
goal
launch_month	
project_name
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17:	?P2

unknown_18:2

unknown_19:2

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcountry	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_nameunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20**
Tin#
!2						*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_2316125o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : ::::::::: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
category:RN
'
_output_shapes
:?????????
#
_user_specified_name	city_name:PL
'
_output_shapes
:?????????
!
_user_specified_name	country:QM
'
_output_shapes
:?????????
"
_user_specified_name
currency:YU
'
_output_shapes
:?????????
*
_user_specified_namedays_of_campaign:TP
'
_output_shapes
:?????????
%
_user_specified_namedescription:MI
'
_output_shapes
:?????????

_user_specified_namegoal:UQ
'
_output_shapes
:?????????
&
_user_specified_namelaunch_month:UQ
'
_output_shapes
:?????????
&
_user_specified_nameproject_name:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
?

?
D__inference_dense_6_layer_call_and_return_conditional_losses_2317672

inputs1
matmul_readvariableop_resource:	?P2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????P
 
_user_specified_nameinputs
?
,
__inference_<lambda>_2318080
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
<
__inference__creator_2317757
identity??
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name670291*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table"?L
saver_filename:0StatefulPartitionedCall_6:0StatefulPartitionedCall_78"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
category1
serving_default_category:0?????????
?
	city_name2
serving_default_city_name:0?????????
;
country0
serving_default_country:0?????????
=
currency1
serving_default_currency:0?????????
M
days_of_campaign9
"serving_default_days_of_campaign:0?????????
C
description4
serving_default_description:0?????????
5
goal-
serving_default_goal:0?????????
E
launch_month5
serving_default_launch_month:0	?????????
E
project_name5
serving_default_project_name:0?????????=
dense_72
StatefulPartitionedCall_5:0?????????tensorflow/serving/predict:Ӗ
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-0

layer-9
layer_with_weights-1
layer-10
layer_with_weights-2
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
b
lookup_table
token_counts
	keras_api
?_adapt_function"
_tf_keras_layer
b
 lookup_table
!token_counts
"	keras_api
?_adapt_function"
_tf_keras_layer
b
#lookup_table
$token_counts
%	keras_api
?_adapt_function"
_tf_keras_layer
b
&lookup_table
'token_counts
(	keras_api
?_adapt_function"
_tf_keras_layer
b
)lookup_table
*token_counts
+	keras_api
?_adapt_function"
_tf_keras_layer
?
,
_keep_axis
-_reduce_axis
._reduce_axis_mask
/_broadcast_shape
0mean
0
adapt_mean
1variance
1adapt_variance
	2count
3	keras_api
?_adapt_function"
_tf_keras_layer
?
4
_keep_axis
5_reduce_axis
6_reduce_axis_mask
7_broadcast_shape
8mean
8
adapt_mean
9variance
9adapt_variance
	:count
;	keras_api
?_adapt_function"
_tf_keras_layer
?
<
_keep_axis
=_reduce_axis
>_reduce_axis_mask
?_broadcast_shape
@mean
@
adapt_mean
Avariance
Aadapt_variance
	Bcount
C	keras_api
?_adapt_function"
_tf_keras_layer
?
D
_keep_axis
E_reduce_axis
F_reduce_axis_mask
G_broadcast_shape
Hmean
H
adapt_mean
Ivariance
Iadapt_variance
	Jcount
K	keras_api
?_adapt_function"
_tf_keras_layer
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_ratePm?Qm?Zm?[m?Pv?Qv?Zv?[v?"
	optimizer
?
05
16
27
88
99
:10
@11
A12
B13
H14
I15
J16
P17
Q18
Z19
[20"
trackable_list_wrapper
<
P0
Q1
Z2
[3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
m
j_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
m
k_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
m
l_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
m
m_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
m
n_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?P22dense_6/kernel
:22dense_6/bias
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :22dense_7/kernel
:2dense_7/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
{
05
16
27
88
99
:10
@11
A12
B13
H14
I15
J16"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
&:$	?P22Adam/dense_6/kernel/m
:22Adam/dense_6/bias/m
%:#22Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
&:$	?P22Adam/dense_6/kernel/v
:22Adam/dense_6/bias/v
%:#22Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
?2?
)__inference_model_3_layer_call_fn_2316391
)__inference_model_3_layer_call_fn_2317227
)__inference_model_3_layer_call_fn_2317284
)__inference_model_3_layer_call_fn_2316781?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_3_layer_call_and_return_conditional_losses_2317451
D__inference_model_3_layer_call_and_return_conditional_losses_2317625
D__inference_model_3_layer_call_and_return_conditional_losses_2316943
D__inference_model_3_layer_call_and_return_conditional_losses_2317105?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_2316125country	city_namecategorycurrencylaunch_monthgoaldays_of_campaigndescriptionproject_name	"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271523?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271537?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271551?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271565?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271579?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271626?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271673?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271720?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_adapt_step_1271767?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_concatenate_2_layer_call_fn_2317638?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2317652?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_6_layer_call_fn_2317661?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_6_layer_call_and_return_conditional_losses_2317672?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_3_layer_call_fn_2317677
+__inference_dropout_3_layer_call_fn_2317682?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317687
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317699?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_7_layer_call_fn_2317708?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_7_layer_call_and_return_conditional_losses_2317719?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2317170category	city_namecountrycurrencydays_of_campaigndescriptiongoallaunch_monthproject_name"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_2317724?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317732?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317737?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2317742?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317747?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317752?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_2317903checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_2317911restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
__inference__creator_2317757?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317765?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317770?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2317775?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317780?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317785?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_2317937checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_2317945restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
__inference__creator_2317790?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317798?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317803?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2317808?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317813?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317818?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_2317971checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_2317979restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
__inference__creator_2317823?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317831?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317836?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2317841?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317846?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317851?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_2318005checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_2318013restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
__inference__creator_2317856?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317864?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317869?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2317874?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_2317879?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2317884?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_2318039checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_2318047restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?	
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17
J

Const_18
J

Const_19
J

Const_20
J

Const_21
J

Const_22
J

Const_23
J

Const_24
J

Const_25
J

Const_26
J

Const_278
__inference__creator_2317724?

? 
? "? 8
__inference__creator_2317742?

? 
? "? 8
__inference__creator_2317757?

? 
? "? 8
__inference__creator_2317775?

? 
? "? 8
__inference__creator_2317790?

? 
? "? 8
__inference__creator_2317808?

? 
? "? 8
__inference__creator_2317823?

? 
? "? 8
__inference__creator_2317841?

? 
? "? 8
__inference__creator_2317856?

? 
? "? 8
__inference__creator_2317874?

? 
? "? :
__inference__destroyer_2317737?

? 
? "? :
__inference__destroyer_2317752?

? 
? "? :
__inference__destroyer_2317770?

? 
? "? :
__inference__destroyer_2317785?

? 
? "? :
__inference__destroyer_2317803?

? 
? "? :
__inference__destroyer_2317818?

? 
? "? :
__inference__destroyer_2317836?

? 
? "? :
__inference__destroyer_2317851?

? 
? "? :
__inference__destroyer_2317869?

? 
? "? :
__inference__destroyer_2317884?

? 
? "? C
 __inference__initializer_2317732???

? 
? "? <
 __inference__initializer_2317747?

? 
? "? C
 __inference__initializer_2317765 ???

? 
? "? <
 __inference__initializer_2317780?

? 
? "? C
 __inference__initializer_2317798#???

? 
? "? <
 __inference__initializer_2317813?

? 
? "? C
 __inference__initializer_2317831&???

? 
? "? <
 __inference__initializer_2317846?

? 
? "? C
 __inference__initializer_2317864)???

? 
? "? <
 __inference__initializer_2317879?

? 
? "? ?
"__inference__wrapped_model_2316125?#? ?#?&?)?????????PQZ[???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
? "1?.
,
dense_7!?
dense_7?????????p
__inference_adapt_step_1271523N?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_1271537N!?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_1271551N$?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_1271565N'?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_1271579N*?C?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_1271626N201C?@
9?6
4?1?
??????????IteratorSpec 
? "
 p
__inference_adapt_step_1271673N:89C?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_1271720NB@AC?@
9?6
4?1?
??????????	IteratorSpec 
? "
 p
__inference_adapt_step_1271767NJHIC?@
9?6
4?1?
??????????	IteratorSpec 
? "
 ?
J__inference_concatenate_2_layer_call_and_return_conditional_losses_2317652????
???
???
"?
inputs/0?????????
#? 
inputs/1??????????N
#? 
inputs/2??????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
? "&?#
?
0??????????P
? ?
/__inference_concatenate_2_layer_call_fn_2317638????
???
???
"?
inputs/0?????????
#? 
inputs/1??????????N
#? 
inputs/2??????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
? "???????????P?
D__inference_dense_6_layer_call_and_return_conditional_losses_2317672]PQ0?-
&?#
!?
inputs??????????P
? "%?"
?
0?????????2
? }
)__inference_dense_6_layer_call_fn_2317661PPQ0?-
&?#
!?
inputs??????????P
? "??????????2?
D__inference_dense_7_layer_call_and_return_conditional_losses_2317719\Z[/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_dense_7_layer_call_fn_2317708OZ[/?,
%?"
 ?
inputs?????????2
? "???????????
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317687\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
F__inference_dropout_3_layer_call_and_return_conditional_losses_2317699\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? ~
+__inference_dropout_3_layer_call_fn_2317677O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2~
+__inference_dropout_3_layer_call_fn_2317682O3?0
)?&
 ?
inputs?????????2
p
? "??????????2?
D__inference_model_3_layer_call_and_return_conditional_losses_2316943?#? ?#?&?)?????????PQZ[???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_2317105?#? ?#?&?)?????????PQZ[???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_2317451?#? ?#?&?)?????????PQZ[???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_2317625?#? ?#?&?)?????????PQZ[???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_3_layer_call_fn_2316391?#? ?#?&?)?????????PQZ[???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p 

 
? "???????????
)__inference_model_3_layer_call_fn_2316781?#? ?#?&?)?????????PQZ[???
???
???
!?
country?????????
#? 
	city_name?????????
"?
category?????????
"?
currency?????????
&?#
launch_month?????????	
?
goal?????????
*?'
days_of_campaign?????????
%?"
description?????????
&?#
project_name?????????
p

 
? "???????????
)__inference_model_3_layer_call_fn_2317227?#? ?#?&?)?????????PQZ[???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p 

 
? "???????????
)__inference_model_3_layer_call_fn_2317284?#? ?#?&?)?????????PQZ[???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????	
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
p

 
? "??????????{
__inference_restore_fn_2317911YK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_2317945Y!K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_2317979Y$K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_2318013Y'K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? {
__inference_restore_fn_2318047Y*K?H
A?>
?
restored_tensors_0	
?
restored_tensors_1	
? "? ?
__inference_save_fn_2317903?&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_2317937?!&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_2317971?$&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_2318005?'&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
__inference_save_fn_2318039?*&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor	
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
%__inference_signature_wrapper_2317170?#? ?#?&?)?????????PQZ[???
? 
???
.
category"?
category?????????
0
	city_name#? 
	city_name?????????
,
country!?
country?????????
.
currency"?
currency?????????
>
days_of_campaign*?'
days_of_campaign?????????
4
description%?"
description?????????
&
goal?
goal?????????
6
launch_month&?#
launch_month?????????	
6
project_name&?#
project_name?????????"1?.
,
dense_7!?
dense_7?????????