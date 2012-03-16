require 'ffi'
# values for gregflag in swe_julday() and swe_revjul() 
SE_JUL_CAL =	0
SE_GREG_CAL =	1

SE_ECL_NUT = -1      

SE_SUN  =        0       
SE_MOON =        1       
SE_MERCURY =      2       
SE_VENUS =        3       
SE_MARS =         4       
SE_JUPITER =      5       
SE_SATURN =      6       
SE_URANUS =      7       
SE_NEPTUNE =      8       
SE_PLUTO =        9       
SE_MEAN_NODE =    10      
SE_TRUE_NODE =   11
SE_MEAN_APOG =    12      
SE_OSCU_APOG =    13    
SE_EARTH =        14      
SE_CHIRON =      15      
SE_PHOLUS =      16      
SE_CERES =        17      
SE_PALLAS =       18      
SE_JUNO =        19      
SE_VESTA =       20      
SE_INTP_APOG =    21      
SE_INTP_PERG =    22    

SE_NPLANETS =    23      

SE_AST_OFFSET =  10000
SE_VARUNA =   (SE_AST_OFFSET + 20000)

SE_FICT_OFFSET = 	40
SE_FICT_OFFSET_1 = 	39
SE_FICT_MAX = 	       999 
SE_NFICT_ELEM =          15

SE_COMET_OFFSET = 1000

SE_NALL_NAT_POINTS =     (SE_NPLANETS + SE_NFICT_ELEM)

# Hamburger or Uranian "planets" 
SE_CUPIDO =      	40
SE_HADES =       	41
SE_ZEUS =        	42
SE_KRONOS =      	43
SE_APOLLON =     	44
SE_ADMETOS =      	45
SE_VULKANUS =     	46
SE_POSEIDON =    	47
# other fictitious bodies 
SE_ISIS =        	48
SE_NIBIRU =      	49
SE_HARRINGTON =          50
SE_NEPTUNE_LEVERRIER =    51
SE_NEPTUNE_ADAMS =       52
SE_PLUTO_LOWELL=         53
SE_PLUTO_PICKERING =      54
SE_VULCAN =     		55
SE_WHITE_MOON =  		56
SE_PROSERPINA =  		57
SE_WALDEMATH = 		58

SE_FIXSTAR =     -10

SE_ASC =			0
SE_MC	=		1
SE_ARMC	=		2
SE_VERTEX	=	3
SE_EQUASC = 		4	#"equatorial ascendant" 
SE_COASC1	=	5	#"co-ascendant" (W. Koch) 
SE_COASC2	=	6	# "co-ascendant" (M. Munkasey) 
SE_POLASC	=	7	# "polar ascendant" (M. Munkasey) 
SE_NASCMC	=	8
SEFLG_JPLEPH =   1       # use JPL ephemeris 
SEFLG_SWIEPH =   2       # use SWISSEPH ephemeris 
SEFLG_MOSEPH =   4       # use Moshier ephemeris 

SEFLG_HELCTR =	8      # return heliocentric position 
SEFLG_TRUEPOS =	16     # return true positions, not apparent 
SEFLG_J2000 =	32     # no precession, i.e. give J2000 equinox 
SEFLG_NONUT =	64     # no nutation, i.e. mean equinox of date 
SEFLG_SPEED3 =	128     # speed from 3 positions (do not use it,
#SEFLG_SPEED is faster and more precise.) 
SEFLG_SPEED =	256     # high precision speed  
SEFLG_NOGDEFL =	512     # turn off gravitational deflection 
SEFLG_NOABERR =	1024    # turn off 'annual' aberration of light 
SEFLG_EQUATORIAL = (2*1024)    # equatorial positions are wanted 
SEFLG_XYZ =	(4*1024)    # cartesian, not polar, coordinates 
SEFLG_RADIANS =	(8*1024)    # coordinates in radians, not degrees 
SEFLG_BARYCTR =	(16*1024)   # barycentric positions 
SEFLG_TOPOCTR =	(32*1024)   # topocentric positions 
SEFLG_SIDEREAL =	(64*1024)   # sidereal positions 
SEFLG_ICRS =	(128*1024)   # ICRS (DE406 reference frame) 

SE_SIDBITS	=	256
# for projection onto ecliptic of t0 
SE_SIDBIT_ECL_T0 =       256
# for projection onto solar system plane 
SE_SIDBIT_SSY_PLANE  =   512

# sidereal modes (ayanamsas) 
SE_SIDM_FAGAN_BRADLEY =    0
SE_SIDM_LAHIRI =          1
SE_SIDM_DELUCE =          2
SE_SIDM_RAMAN  =          3
SE_SIDM_USHASHASHI =       4
SE_SIDM_KRISHNAMURTI =     5
SE_SIDM_DJWHAL_KHUL =      6
SE_SIDM_YUKTESHWAR =      7
SE_SIDM_JN_BHASIN  =      8
SE_SIDM_BABYL_KUGLER1 =    9
SE_SIDM_BABYL_KUGLER2 =   10
SE_SIDM_BABYL_KUGLER3 =   11
SE_SIDM_BABYL_HUBER =    	12
SE_SIDM_BABYL_ETPSC =    	13
SE_SIDM_ALDEBARAN_15TAU = 14
SE_SIDM_HIPPARCHOS =      15
SE_SIDM_SASSANIAN  =     16
SE_SIDM_GALCENT_0SAG =   17
SE_SIDM_J2000 =           18
SE_SIDM_J1900 =           19
SE_SIDM_B1950 =           20
SE_SIDM_USER  =           255

SE_NSIDM_PREDEF =	  	    21

# used for swe_nod_aps(): 
SE_NODBIT_MEAN =		1   # mean nodes/apsides 
SE_NODBIT_OSCU =		2   # osculating nodes/apsides 
SE_NODBIT_OSCU_BAR =	4   # same, but motion about solar system barycenter is considered 
SE_NODBIT_FOPOINT =	256   # focal point of orbit instead of aphelion 

# default ephemeris used when no ephemeris flagbit is set 
SEFLG_DEFAULTEPH = SEFLG_SWIEPH

SE_MAX_STNAME =		256	
# maximum size of fixstar name;
# the parameter star in swe_fixstar
# must allow twice this space for
# the returned star name.
#s for eclipse computations 

SE_ECL_CENTRAL =		1
SE_ECL_NONCENTRAL =	2
SE_ECL_TOTAL =		4
SE_ECL_ANNULAR =		8
SE_ECL_PARTIAL =		16
SE_ECL_ANNULAR_TOTAL =	32
SE_ECL_PENUMBRAL =	64
SE_ECL_ALLTYPES_SOLAR =   (SE_ECL_CENTRAL|SE_ECL_NONCENTRAL|SE_ECL_TOTAL|SE_ECL_ANNULAR|SE_ECL_PARTIAL|SE_ECL_ANNULAR_TOTAL)
SE_ECL_ALLTYPES_LUNAR =   (SE_ECL_TOTAL|SE_ECL_PARTIAL|SE_ECL_PENUMBRAL)
SE_ECL_VISIBLE =		128
SE_ECL_MAX_VISIBLE =	256
SE_ECL_1ST_VISIBLE =	512
SE_ECL_2ND_VISIBLE =	1024
SE_ECL_3RD_VISIBLE =	2048
SE_ECL_4TH_VISIBLE =	4096
SE_ECL_ONE_TRY =         (32*1024) 
# check if the next conjunction of the moon with
# a planet is an occultation; don't search further 
# for swe_rise_transit() 
SE_CALC_RISE	=	1
SE_CALC_SET =		2
SE_CALC_MTRANSIT =	4
SE_CALC_ITRANSIT =	8
SE_BIT_DISC_CENTER =      256 
# to be or'ed to SE_CALC_RISE/SET,
# if rise or set of disc center is 
# required 
SE_BIT_DISC_BOTTOM =     8192 
# to be or'ed to SE_CALC_RISE/SET,
# if rise or set of lower limb of 
# disc is requried 
SE_BIT_NO_REFRACTION  =   512 
# to be or'ed to SE_CALC_RISE/SET, 
#if refraction is to be ignored 
SE_BIT_CIVIL_TWILIGHT   = 1024 # to be or'ed to SE_CALC_RISE/SET 
SE_BIT_NAUTIC_TWILIGHT  =  2048 # to be or'ed to SE_CALC_RISE/SET 
SE_BIT_ASTRO_TWILIGHT   =  4096 # to be or'ed to SE_CALC_RISE/SET 
SE_BIT_FIXED_DISC_SIZE = (16*1024) # or'ed to SE_CALC_RISE/SET:
#neglect the effect of distance on
# disc size 


# for swe_azalt() and swe_azalt_rev() 
SE_ECL2HOR	 =	0
SE_EQU2HOR	 =	1
SE_HOR2ECL	 =	0
SE_HOR2EQU	 =	1

# for swe_refrac() 
SE_TRUE_TO_APP =	0
SE_APP_TO_TRUE =	1

#
# only used for experimenting with various JPL ephemeris files
# which are available at Astrodienst's internal network

SE_DE_NUMBER =    406
SE_FNAME_DE200 =  "de200.eph"
SE_FNAME_DE403 =  "de403.eph"
SE_FNAME_DE404  = "de404.eph"
SE_FNAME_DE405  = "de405.eph"
SE_FNAME_DE406  = "de406.eph"
SE_FNAME_DFT  =   SE_FNAME_DE406
SE_STARFILE_OLD = "fixstars.cat"
SE_STARFILE =     "sefstars.txt"
SE_ASTNAMFILE =   "seasnam.txt"
SE_FICTFILE =     "seorbel.txt"

#
# * ephemeris path
# * this defines where ephemeris files are expected if the function
# * swe_set_ephe_path() is not called by the application.
# * Normally, every application should make this call to define its
# * own place for the ephemeris files.


#if MSDOS
#ifdef PAIR_SWEPH
#  define SE_EPHE_PATH    "\\pair\\ephe\\"
#else
#  define SE_EPHE_PATH    "\\sweph\\ephe\\"
#endif
#else
# ifdef MACOS
#  define SE_EPHE_PATH	":ephe:"
# else
#  define SE_EPHE_PATH    ".:/users/ephe2/:/users/ephe/"
# At Astrodienst, we maintain two ephemeris areas for
#  the thousands of asteroid files: 
#   the short files in /users/ephe/ast*,
#   the long file in /users/ephe2/ast*. 
# endif
#endif
SE_EPHE_PATH =   ".:/users/ephe2/:/users/ephe/"


SE_SPLIT_DEG_ROUND_SEC  =   1
SE_SPLIT_DEG_ROUND_MIN =    2
SE_SPLIT_DEG_ROUND_DEG =    4
SE_SPLIT_DEG_ZODIACAL =     8
SE_SPLIT_DEG_KEEP_SIGN =   16	
# don't round to next sign, 
# * e.g. 29.9999999 will be rounded
# * to 29d59'59" (or 29d59' or 29d) 
SE_SPLIT_DEG_KEEP_DEG  =   32	
# don't round to next degree
# * e.g. 13.9999999 will be rounded
# * to 13d59'59" (or 13d59' or 13d) 

# for heliacal functions 
SE_HELIACAL_RISING	 =	1
SE_HELIACAL_SETTING =		2
SE_MORNING_FIRST	 =	SE_HELIACAL_RISING
SE_EVENING_LAST =			SE_HELIACAL_SETTING
SE_EVENING_FIRST =		3
SE_MORNING_LAST =			4
SE_ACRONYCHAL_RISING =		5  # still not implemented 
SE_ACRONYCHAL_SETTING =		6  # still not implemented 
SE_COSMICAL_SETTING =		SE_ACRONYCHAL_SETTING

SE_HELFLAG_LONG_SEARCH = 	128
SE_HELFLAG_HIGH_PRECISION = 	256
SE_HELFLAG_OPTICAL_PARAMS =	512
SE_HELFLAG_NO_DETAILS =		1024
SE_HELFLAG_SEARCH_1_PERIOD =	(1 << 11)  #  2048 
SE_HELFLAG_VISLIM_DARK =		(1 << 12)  #  4096 
SE_HELFLAG_VISLIM_NOMOON =	(1 << 13)  #  8192 
SE_HELFLAG_VISLIM_PHOTOPIC =	(1 << 14)  # 16384 
SE_HELFLAG_AVKIND_VR = 		(1 << 15)  # 32768 
SE_HELFLAG_AVKIND_PTO = 		(1 << 16)
SE_HELFLAG_AVKIND_MIN7 = 		(1 << 17)
SE_HELFLAG_AVKIND_MIN9 = 		(1 << 18)
SE_HELFLAG_AVKIND = (SE_HELFLAG_AVKIND_VR|SE_HELFLAG_AVKIND_PTO|SE_HELFLAG_AVKIND_MIN7|SE_HELFLAG_AVKIND_MIN9)
TJD_INVALID =		 	99999999.0
SIMULATE_VICTORVB =               1

SE_PHOTOPIC_FLAG =		0
SE_SCOTOPIC_FLAG =		1
SE_MIXEDOPIC_FLAG =		2
module SweLib
  extend FFI::Library
  ffi_lib "libswe.so"
  
  #attach_function :test_function_2, [:double, :pointer, :string], :int
  attach_function :swe_heliacal_ut, [:double, :pointer, :pointer, :pointer, :string, :int32, :int32, :pointer, :string], :int32
  #ext_def(int32) swe_heliacal_ut(double tjdstart_ut, double *geopos, double *datm, double *dobs, char *ObjectName, int32 TypeEvent, int32 iflag, double *dret, char *serr);
  attach_function :swe_heliacal_pheno_ut, [:double, :pointer, :pointer, :pointer, :string, :int32, :int32, :pointer, :string], :int32
  #ext_def(int32) swe_heliacal_pheno_ut(double tjd_ut, double *geopos, double *datm, double *dobs, char *ObjectName, int32 TypeEvent, int32 helflag, double *darr, char *serr);
  attach_function :swe_vis_limit_mag, [:double, :pointer, :pointer, :pointer, :string, :int32, :int32, :pointer, :string], :int32
  #ext_def(int32) swe_vis_limit_mag(double tjdut, double *geopos, double *datm, double *dobs, char *ObjectName, int32 helflag, double *dret, char *serr);
  # the following are secret, for Victor Reijs' 
  attach_function :swe_heliacal_angle, [:double, :pointer, :pointer, :pointer, :int32, :double, :double, :double, :double, :double, :pointer, :string], :int32
  #ext_def(int32) swe_heliacal_angle(double tjdut, double *dgeo, double *datm, double *dobs, int32 helflag, double mag, double azi_obj, double azi_sun, double azi_moon, double alt_moon, double *dret, char *serr);
  attach_function :swe_topo_arcus_visionis, [:double, :pointer, :pointer, :pointer, :int32, :double, :double, :double, :double, :double, :double, :pointer, :string], :int32
  #ext_def(int32) swe_topo_arcus_visionis(double tjdut, double *dgeo, double *datm, double *dobs, int32 helflag, double mag, double azi_obj, double alt_obj, double azi_sun, double azi_moon, double alt_moon, double *dret, char *serr);
  
  #ext_def(char *) swe_version(char *);
  attach_function :swe_version, [:string], :string
  
  #/* planets, moon, nodes etc. */
  # ext_def( int32 ) swe_calc(
  #           double tjd, int ipl, int32 iflag, 
  #           double *xx,
  #           char *serr);
  attach_function :swe_calc, [:double, :int, :int32, :pointer, :string], :int32
  
  # ext_def(int32) swe_calc_ut(double tjd_ut, int32 ipl, int32 iflag, 
  #     double *xx, char *serr);
  attach_function :swe_calc_ut, [:double, :int32, :int32, :pointer, :string], :int32

  # /* fixed stars */
  #   ext_def( int32 ) swe_fixstar(
  #           char *star, double tjd, int32 iflag, 
  #           double *xx,
  #           char *serr);
  attach_function :swe_fixstar, [:string, :double, :int32, :pointer, :string], :int32
  
  # ext_def(int32) swe_fixstar_ut(char *star, double tjd_ut, int32 iflag, 
  #     double *xx, char *serr);
  attach_function :swe_fixstar_ut, [:string, :double, :int32, :pointer, :string], :int32

  #ext_def(int32) swe_fixstar_mag(char *star, double *mag, char *serr);
  attach_function :swe_fixstar_mag, [:string, :pointer, :string], :int32
  
  # /* close Swiss Ephemeris */
  #   ext_def( void ) swe_close(void);
  # 
  attach_function :swe_close, [], :void
  #   /* set directory path of ephemeris files */
  #   ext_def( void ) swe_set_ephe_path(char *path);
  attach_function :swe_set_ephe_path,[:string], :void
  # 
  #   /* set file name of JPL file */
  #   ext_def( void ) swe_set_jpl_file(char *fname);
  attach_function :swe_set_jpl_file, [:string], :void
  # 
  #   /* get planet name */
  #   ext_def( char *) swe_get_planet_name(int ipl, char *spname);
  attach_function :swe_get_planet_name, [:int, :string], :string
  
  #   /* set geographic position of observer */
  #   ext_def (void) swe_set_topo(double geolon, double geolat, double geoalt);
  attach_function :swe_set_topo, [:double, :double, :double], :void
  # 
  #   /* set sidereal mode */
  #   ext_def(void) swe_set_sid_mode(int32 sid_mode, double t0, double ayan_t0);
  attach_function :swe_set_sid_mode, [:int32, :double, :double], :void
  # 
  #   /* get ayanamsa */
  #   ext_def(double) swe_get_ayanamsa(double tjd_et);
  attach_function :swe_get_ayanamsa, [:double], :double
  # 
  #   ext_def(double) swe_get_ayanamsa_ut(double tjd_ut);
  attach_function :swe_get_ayanamsa_ut, [:double], :double
  # 
  #   ext_def( char *) swe_get_ayanamsa_name(int32 isidmode);
  attach_function :swe_get_ayanamsa_name, [:int32], :string
  # 
  #   /**************************** 
  #    * exports from swedate.c 
  #    ****************************/
  # 
  #   ext_def( int ) swe_date_conversion(
  #           int y , int m , int d ,         /* year, month, day */
  #           double utime,   /* universal time in hours (decimal) */
  #           char c,         /* calendar g[regorian]|j[ulian] */
  #           double *tjd);
  attach_function :swe_date_conversion, [:int, :int, :int, :double, :char, :pointer], :int
  # 
  #   ext_def( double ) swe_julday(
  #           int year, int month, int day, double hour, 
  #           int gregflag);
  attach_function :swe_julday, [:int, :int, :int, :double, :int], :double
  # 
  #   ext_def( void ) swe_revjul (
  #           double jd, 
  #           int gregflag,
  #           int *jyear, int *jmon, int *jday, double *jut);
  attach_function :swe_revjul, [:double, :int, :pointer, :pointer, :pointer, :pointer], :void
  # 
  #   ext_def(int32) swe_utc_to_jd(
  #           int32 iyear, int32 imonth, int32 iday, 
  #     int32 ihour, int32 imin, double dsec, 
  #     int32 gregflag, double *dret, char *serr);
  attach_function :swe_utc_to_jd, [:int32, :int32, :int32, :int32, :int32, :double, :int32, :pointer, :string], :int32
  # 
  #   ext_def(void) swe_jdet_to_utc(
  #           double tjd_et, int32 gregflag, 
  #     int32 *iyear, int32 *imonth, int32 *iday, 
  #     int32 *ihour, int32 *imin, double *dsec);
  attach_function :swe_jdet_to_utc, [:double, :int32, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :void
  # 
  #   ext_def(void) swe_jdut1_to_utc(
  #           double tjd_ut, int32 gregflag, 
  #     int32 *iyear, int32 *imonth, int32 *iday, 
  #     int32 *ihour, int32 *imin, double *dsec);
  attach_function :swe_jdut1_to_utc, [:double, :int32, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :void
  # 
  #   ext_def(void) swe_utc_time_zone(
  #           int32 iyear, int32 imonth, int32 iday,
  #     int32 ihour, int32 imin, double dsec,
  #     double d_timezone,
  #     int32 *iyear_out, int32 *imonth_out, int32 *iday_out,
  #     int32 *ihour_out, int32 *imin_out, double *dsec_out);
  attach_function :swe_utc_time_zone, [:int32, :int32, :int32, :int32, :int32, :double, :double, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :void
  
  # /**************************** 
  #    * exports from swehouse.c 
  #    ****************************/
  # 
  #   ext_def( int ) swe_houses(
  #           double tjd_ut, double geolat, double geolon, int hsys, 
  #     double *cusps, double *ascmc);
  attach_function :swe_houses, [:double, :double, :double, :int, :pointer, :pointer], :int
  # 
  #   ext_def( int ) swe_houses_ex(
  #           double tjd_ut, int32 iflag, double geolat, double geolon, int hsys, 
  #     double *cusps, double *ascmc);
  attach_function :swe_houses_ex, [:double, :int32, :double, :double, :int, :pointer, :pointer], :int
  # 
  #   ext_def( int ) swe_houses_armc(
  #           double armc, double geolat, double eps, int hsys, 
  #     double *cusps, double *ascmc);
  attach_function :swe_houses_armc, [:double, :double, :double, :int, :pointer, :pointer], :int
  # 
  #   ext_def(double) swe_house_pos(
  #     double armc, double geolat, double eps, int hsys, double *xpin, char *serr);
  attach_function :swe_house_pos, [:double, :double, :double, :int, :pointer, :string], :double
  
  # /**************************** 
  #    * exports from swecl.c 
  #    ****************************/
  # 
  #   ext_def(int32) swe_gauquelin_sector(double t_ut, int32 ipl, char *starname, int32 iflag, int32 imeth, double *geopos, double atpress, double attemp, double *dgsect, char *serr);
  attach_function :swe_gauquelin_sector, [:double, :int32, :string, :int32, :int32, :pointer, :double, :double, :pointer, :string], :int32
  # 
  #   /* computes geographic location and attributes of solar 
  #    * eclipse at a given tjd */
  #   ext_def (int32) swe_sol_eclipse_where(double tjd, int32 ifl, double *geopos, double *attr, char *serr);
  attach_function :swe_sol_eclipse_where, [:double, :int32, :pointer, :pointer, :string], :int32
  # 
  #   ext_def (int32) swe_lun_occult_where(double tjd, int32 ipl, char *starname, int32 ifl, double *geopos, double *attr, char *serr);
  attach_function :swe_lun_occult_where, [:double, :int32, :string, :int32, :pointer, :pointer, :string], :int32
  # 
  #   /* computes attributes of a solar eclipse for given tjd, geolon, geolat */
  #   ext_def (int32) swe_sol_eclipse_how(double tjd, int32 ifl, double *geopos, double *attr, char *serr);
  attach_function :swe_sol_eclipse_how, [:double, :int32, :pointer, :pointer, :string], :int32
  # 
  #   /* finds time of next local eclipse */
  #   ext_def (int32) swe_sol_eclipse_when_loc(double tjd_start, int32 ifl, double *geopos, double *tret, double *attr, int32 backward, char *serr);
  attach_function :swe_sol_eclipse_when_loc, [:double, :int32, :pointer, :pointer, :pointer, :int32, :string], :int32
  # 
  #   ext_def (int32) swe_lun_occult_when_loc(double tjd_start, int32 ipl, char *starname, int32 ifl,
  #        double *geopos, double *tret, double *attr, int32 backward, char *serr);
  attach_function :swe_lun_occult_when_loc, [:double, :int32, :string, :int32, :pointer, :pointer, :pointer, :int32, :string], :int32
  # 
  #   /* finds time of next eclipse globally */
  #   ext_def (int32) swe_sol_eclipse_when_glob(double tjd_start, int32 ifl, int32 ifltype,
  #        double *tret, int32 backward, char *serr);
  attach_function :swe_sol_eclipse_when_glob, [:double, :int32, :int32, :pointer, :int32, :string], :int32
  # 
  #   /* finds time of next occultation globally */
  #   ext_def (int32) swe_lun_occult_when_glob(double tjd_start, int32 ipl, char *starname, int32 ifl, int32 ifltype,
  #        double *tret, int32 backward, char *serr);
  attach_function :swe_lun_occult_when_glob, [:double, :int32, :string, :int32, :int32, :pointer, :int32, :string], :int32
  # 
  #   /* computes attributes of a lunar eclipse for given tjd */
  #   ext_def (int32) swe_lun_eclipse_how(
  #             double tjd_ut, 
  #             int32 ifl,
  #             double *geopos, 
  #             double *attr, 
  #             char *serr);
  attach_function :swe_lun_eclipse_how, [:double, :int32, :pointer, :pointer, :string], :int32
  # 
  #   ext_def (int32) swe_lun_eclipse_when(double tjd_start, int32 ifl, int32 ifltype,
  #        double *tret, int32 backward, char *serr);
  attach_function :swe_lun_eclipse_when, [:double, :int32, :int32, :pointer, :int32, :string], :int32
  # 
  #   /* planetary phenomena */
  #   ext_def (int32) swe_pheno(double tjd, int32 ipl, int32 iflag, double *attr, char *serr);
  attach_function :swe_pheno, [:double, :int32, :int32, :pointer, :string], :int32
  # 
  #   ext_def(int32) swe_pheno_ut(double tjd_ut, int32 ipl, int32 iflag, double *attr, char *serr);
  attach_function :swe_pheno_ut, [:double, :int32, :int32, :pointer, :string], :int32
  #
  #   ext_def (double) swe_refrac(double inalt, double atpress, double attemp, int32 calc_flag);
  attach_function :swe_refrac, [:double, :double, :double, :int32], :double
  # 
  #   ext_def (double) swe_refrac_extended(double inalt, double geoalt, double atpress, double attemp, double lapse_rate, int32 calc_flag, double *dret);
  attach_function :swe_refrac_extended, [:double, :double, :double, :double, :double, :double, :int32, :pointer], :double
  # 
  #   ext_def (void) swe_set_lapse_rate(double lapse_rate);
  attach_function :swe_set_lapse_rate, [:double], :void
  # 
  #   ext_def (void) swe_azalt(
  #         double tjd_ut,
  #         int32 calc_flag,
  #         double *geopos,
  #         double atpress,
  #         double attemp,
  #         double *xin, 
  #         double *xaz); 
  attach_function :swe_azalt, [:double, :int32, :pointer, :double, :double, :double, :pointer, :pointer], :void
  # 
  #   ext_def (void) swe_azalt_rev(
  #         double tjd_ut,
  #         int32 calc_flag,
  #         double *geopos,
  #         double *xin, 
  #         double *xout); 
  attach_function :swe_azalt_rev, [:double, :int32, :pointer, :pointer, :pointer], :void
  # 
  #   ext_def (int32) swe_rise_trans(
  #                  double tjd_ut, int32 ipl, char *starname, 
  #            int32 epheflag, int32 rsmi,
  #                  double *geopos, 
  #            double atpress, double attemp,
  #                  double *tret,
  #                  char *serr);
  attach_function :swe_rise_trans, [:double, :int32, :string, :int32, :int32, :pointer, :double, :double, :pointer, :string], :int32
  # 
  #   ext_def (int32) swe_nod_aps(double tjd_et, int32 ipl, int32 iflag, 
  #                         int32  method,
  #                         double *xnasc, double *xndsc, 
  #                         double *xperi, double *xaphe, 
  #                         char *serr);
  attach_function :swe_nod_aps, [:double, :int32, :int32, :int32, :pointer, :pointer, :pointer, :pointer, :string], :int32
  # 
  #   ext_def (int32) swe_nod_aps_ut(double tjd_ut, int32 ipl, int32 iflag, 
  #                         int32  method,
  #                         double *xnasc, double *xndsc, 
  #                         double *xperi, double *xaphe, 
  #                         char *serr);
  attach_function :swe_nod_aps_ut, [:double, :int32, :int32, :int32, :pointer, :pointer, :pointer, :pointer, :string], :int32
  # 
  # 
  #   /**************************** 
  #    * exports from swephlib.c 
  #    ****************************/
  # 
  #   /* delta t */
  #   ext_def( double ) swe_deltat(double tjd);
  attach_function :swe_deltat, [:double], :double
  # 
  #   /* equation of time */
  #   ext_def( int ) swe_time_equ(double tjd, double *te, char *serr);
  attach_function :swe_time_equ, [:double, :pointer, :string], :int
  # 
  #   /* sidereal time */
  #   ext_def( double ) swe_sidtime0(double tjd_ut, double eps, double nut);
  attach_function :swe_sidtime0, [:double, :double, :double], :double
  #   ext_def( double ) swe_sidtime(double tjd_ut);
  attach_function :swe_sidtime, [:double], :double
  # 
  #   /* coordinate transformation polar -> polar */
  #   ext_def( void ) swe_cotrans(double *xpo, double *xpn, double eps);
  attach_function :swe_cotrans, [:pointer, :pointer, :double], :void
  #   ext_def( void ) swe_cotrans_sp(double *xpo, double *xpn, double eps);
  attach_function :swe_cotrans_sp, [:pointer, :pointer, :double], :void
  # 
  #   /* tidal acceleration to be used in swe_deltat() */
  #   ext_def( double ) swe_get_tid_acc(void);
  attach_function :swe_get_tid_acc, [], :double
  #   ext_def( void ) swe_set_tid_acc(double t_acc);
  attach_function :swe_set_tid_acc,[:double], :void
  # 
  #   ext_def( double ) swe_degnorm(double x);
  attach_function :swe_degnorm,[:double], :double
  #   ext_def( double ) swe_radnorm(double x);
  attach_function :swe_radnorm, [:double], :double
  #   ext_def( double ) swe_rad_midp(double x1, double x0);
  attach_function :swe_rad_midp, [:double, :double], :double
  #   ext_def( double ) swe_deg_midp(double x1, double x0);
  attach_function :swe_deg_midp, [:double, :double], :double
  # 
  #   ext_def( void ) swe_split_deg(double ddeg, int32 roundflag, int32 *ideg, int32 *imin, int32 *isec, double *dsecfr, int32 *isgn);
  attach_function :swe_split_deg, [:double, :int32, :pointer, :pointer, :pointer, :pointer, :pointer], :void
  # 
  #   /******************************************************* 
  #    * other functions from swephlib.c;
  #    * they are not needed for Swiss Ephemeris,
  #    * but may be useful to former Placalc users.
  #    ********************************************************/
  # 
  #   /* normalize argument into interval [0..DEG360] */
  #   ext_def( centisec ) swe_csnorm(centisec p);
  # 
  #   /* distance in centisecs p1 - p2 normalized to [0..360[ */
  #   ext_def( centisec ) swe_difcsn (centisec p1, centisec p2);
  # 
  #   ext_def( double ) swe_difdegn (double p1, double p2);
  # 
  #   /* distance in centisecs p1 - p2 normalized to [-180..180[ */
  #   ext_def( centisec ) swe_difcs2n(centisec p1, centisec p2);
  # 
  #   ext_def( double ) swe_difdeg2n(double p1, double p2);
  #   ext_def( double ) swe_difrad2n(double p1, double p2);
  # 
  #   /* round second, but at 29.5959 always down */
  #   ext_def( centisec ) swe_csroundsec(centisec x);
  # 
  #   /* double to int32 with rounding, no overflow check */
  #   ext_def( int32 ) swe_d2l(double x);
  # 
  #   /* monday = 0, ... sunday = 6 */
  #   ext_def( int ) swe_day_of_week(double jd);
  # 
  #   ext_def( char *) swe_cs2timestr(CSEC t, int sep, AS_BOOL suppressZero, char *a);
  # 
  #   ext_def( char *) swe_cs2lonlatstr(CSEC t, char pchar, char mchar, char *s);
  # 
  #   ext_def( char *) swe_cs2degstr(CSEC t, char *a);
end