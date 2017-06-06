#!/bin/bash
#
# Create a namelist
#
if [ $imem -eq 0 ]; then
    name="ctrl"
else
    name=$(printf "pert%03d" $imem)
fi
    
cat <<EOF > $SCRI/namelist.$name
&NAMDIM
NPROMA=0,
NUNDEFLD=0,
/
&NAMGFL
NERA40=0,
YQ_NL%LGP=true,
YQ_NL%LSP=false,
YL_NL%LGP=true,
YI_NL%LGP=true,
YA_NL%LGP=true,
YO3_NL%LGP=true,
YQ_NL%LGPINGP=true,
/
&NAMPAR0
LSTATS=true,
LDETAILED_STATS=false,
LSYNCSTATS=false,
LSTATSCPU=false,
NPRNT_STATS=32,
LBARRIER_STATS=false,
LBARRIER_STATS2=false,
NPROC=$NPROC,
NSPECRESMIN=256,
NOUTPUT=1,
MP_TYPE=2,
MBX_SIZE=128000000,
/
&NAMCT0
LNHDYN=false,
NCONF=1,
CTYPE="$CTYPE",
CNMEXP="$CNMEXP",
NSTOP=$NSTOP,
CFCLASS="rd",
LECMWF=true,
LARPEGEF=false,
LFDBOP=false,
NFPOS=2,
LSMSSIG=false,
LSPRT=true,
LSLAG=true,
LTWOTL=true,
LVERTFE=true,
LAPRXPK=true,
LPC_FULL=false,
LPC_CHEAP=false,
LPC_NESC=false,
LPC_NESCT=false,
LSLPHY=true,
LRFRIC=true,
N3DINI=0,
NFRDHP=12,
NFRDHFD=1,
NFRSDI=1,
NFRPOS=$NFRPOS,
NFRHIS=$NFRHIS,
NFRMASSCON=32767,
NPOSTS=$NPOSTS,
NHISTS=$NHISTS,
NMASSCONS=0,
NFRCO=0,
NFRDHFZ=48,
NDHFZTS=0,
NDHFDTS=0,
/
&NAMCVER
  LVERTFE=false,
/
&NAMPAR1
NOUTTYPE=1,
LSPLIT=true,
NFLDIN=0,
NSTRIN=1,
/
&NAMDYN
TSTEP=$TSTEP,
/
&NAEPHY
LEPHYS=true,
LEVDIF=true,
LESURF=true,
LECOND=true,
LECUMF=true,
LEPCLD=true,
LEEVAP=true,
LEVGEN=true,
LESSRO=true,
LECURR=false,
LEGWDG=true,
LEGWWMS=true,
LEOZOC=true,
LEQNGT=true,
LERADI=true,
LERADS=true,
LESICE=true,
LEO3CH=true,
LEDCLD=true,
LDUCTDIA=false,
LWCOU=false,
LWCOU2W=false,
NSTPW=3,
RDEGREW=0.5,
RSOUTW=-81.0,
RNORTW=81.0,
/
&NAERAD
CRTABLEDIR='./rtables/'
NRPROMA=0,
/
&NAMDDH
BDEDDH(1:6,1)=4.0,1.0,0.0,50.0,0.0,49.0,
NDHKD=120,
LHDZON=false,
LHDEFZ=false,
LHDDOP=false,
LHDEFD=false,
LHDGLB=true,
LHDPRG=true,
LHDHKS=true,
/
&NAMRES
NFRRES=1,
NRESTS(:)=-1,-32767,
/
&NAMDYNCORE
LAQUA=false,
/
&NAMIOS
CFRCF="./rcf",
CIOSPRF="./srf",
/
&NAMFPG
NFPLEV=$LEV,
NFPMAX=$NFPMAX,
/
&NAMFPC
CFPFMT="MODEL",
NFP3DFS=$NFP3DFS,
NFP3DFP=$NFP3DFP,
NFP3DFT=1,
NFP3DFV=1,
MFP3DFS(:)=$MFP3DFS,
MFP3DFP(:)=$MFP3DFP,
MFP3DFT=60,
MFP3DFV=133,
NFP2DF=$NFP2DF,
MFP2DF(:)=$MFP2DF,
NFPPHY=$NFPPHY,
MFPPHY(:)=$MFPPHY,
NRFP3S(:)=$NRFP3S,
RFP3P(:)=$RFP3P,
LFITT=false,
LFITV=false,
NFPCLI=0,
LFPQ=false,
LTRACEFP=false,
RFPCORR=60000.,
/
&NAMFPD
NLAT=256,
NLON=512,
/
  &NAMVAR
   LMODERR=.false.,
   LJCDFI=.false.,
   LUSEJCDFI=.false.,
  /
      &NAMMCC
          LMCCEC=true,
          LMCCIEC=false,
  /
  &NAMVV0
    LLFORCE_READ=false,
  /
&NAEAER
/
&NAEPHY
/
&NAERAD
CRTABLEDIR='./rtables/'
/
&NALBAR
/
&NALORI
/
&NAM_DISTRIBUTED_VECTORS
/
&NAM926
/
&NAMAFN
/
&NAMANA
/
&NAMARPHY
/
&NAMCA
/
&NAMCAPE
/
&NAMCFU
/
&NAMCHK
/
&NAMCHET
/
&NAMCLDP
/
&NAMCLTC
/
&NAMCOM
/
&NAMCOS
/
&NAMCTAN
/
&NAMCUMF
/
&NAMCUMFS
/
&NAMCT1
/
&NAMCVA
/
&NAMDDH
/
&NAMDFHD
/
&NAMDFI
/
&NAMDIF
/
&NAMDIM
/
&NAMDIMO
/
&NAMDMSP
/
&NAMDPHY
/
&NAMDYN
/
&NAMDYNA
/
&NAMDYNCORE
/
&NAMEMIS_CONF
/
&NAMENKF
/
&NAMFA
/
&NAMFFT
/
&NAMFPC
/
&NAMFPD
/
&NAMFPDY2
/
&NAMFPDYH
/
&NAMFPDYP
/
&NAMFPDYS
/
&NAMFPDYT
/
&NAMFPDYV
/
&NAMFPEZO
/
&NAMFPF
/
&NAMFPG
/
&NAMFPIOS
/
&NAMFPPHY
/
&NAMFPSC2
/
&NAMFPSC2_DEP
/
&NAMFY2
/
&NAMGEM
/
&NAMGFL
/
&NAMGMS
/
&NAMGOES
/
&NAMGOM
/
&NAMGRIB
/
&NAMGWD
/
&NAMGWWMS
/
&NAMHLOPT
/
&NAMINI
/
&NAMIOMI
/
&NAMIOS
/
&NAMJBCODES
/
&NAMJFH
/
&NAMJG
/
&NAMJO
/
&NAMKAP
/
&NAMLCZ
/
&NAMLEG
/
&NAMLFI
/
&NAMMCC
/
&NAMMCUF
/
&NAMMETEOSAT
/
&NAMMTS
/
&NAMMTSAT
/
&NAMMTT
/
&NAMMUL
/
&NAMNMI
/
&NAMNASA
/
&NAMNN
/
&NAMNPROF
/
&NAMNUD
/
&NAMOBS
/
&NAMONEDVAR
/
&NAMOPH
/
&NAMOPTCMEM
/
&NAMPAR0
/
&NAMPARAR
/
&NAMPAR1
NOUTTYPE=1,
/
&NAMPHY
/
&NAMPHY0
/
&NAMPHY1
/
&NAMPHY2
/
&NAMPHY3
/
&NAMPHYDS
/
&NAMPPC
/
&NAMPONG
/
&NAMRAD15
/
&NAMRADCMEM
/
&NAMRCOEF
/
&NAMRES
/
&NAMRINC
/
&NAMRIP
/
&NAMSATS
/
&NAMSCC
/
&NAMSCEN
/
&NAMSCM
/
&NAMSENS
/
&NAMSIMPHL
/
&NAMSKF
/
&NAMSPSDT
/
&NAMSSMI
/
&NAMSTA
/
&NAMSTOPH
/
&NAMTCWV
/
&NAMTESTVAR
/
&NAMTOPH
/
&NAMTOVS
/
&NAMTRAJP
/
&NAMTRANS
/
&NAMTRM
/
&NAMVAR
/
&NAMVARBC
/
&NAMVARBC_AIREP
/
&NAMVARBC_ALLSKY
/
&NAMVARBC_GBRAD
/
&NAMVARBC_RAD
/
&NAMVARBC_SFCOBS
/
&NAMVARBC_TCWV
/
&NAMVARBC_TO3
/
&NAMVAREPS
/
&NAMVDOZ
/
&NAMVFP
/
&NAMVRTL
/
&NAMVV0
/
&NAMVV1
/
&NAMVV2
/
&NAMVWRK
/
&NAMWAVELETJB
/
&NAMXFU
/
&NAMZDI
/
&NAPHLC
/
&NAV1IS
/
&NAEPHLI
/
&NAMPPVI
/
&NAMRLX
/
&NAMSPNG
/
EOF
