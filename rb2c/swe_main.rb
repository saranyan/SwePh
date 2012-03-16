require 'ffi'
require './swe.rb'
require './nakshatra.rb'

def get_p_position(planet, jday, jmon, jyear)
  serr = ""
  snam = ""
  jut = 0.0
  tjd_ut = 0.0
  te = 0.0
  x2 = FFI::MemoryPointer.new(:double, 6)
  #iflag = SEFLG_SPEED
  iflag = SEFLG_SIDEREAL
  #iflag = SEFLG_TOPOCTR | SEFLG_SIDEREAL 
  #iflag = SEFLG_TOPOCTR
  SweLib.swe_set_ephe_path("/Users/Saranyan/ScratchPad/sweph_18")
  SweLib.swe_set_sid_mode(SE_SIDM_RAMAN,0,1)
  #date of birth
  tjd_ut = SweLib.swe_julday(jyear,jmon,jday,jut,SE_GREG_CAL)
  te = tjd_ut + SweLib.swe_deltat(tjd_ut)
  
  iflgret = SweLib.swe_calc_ut(tjd_ut, planet, iflag, x2, serr)
  arr = x2.get_array_of_double(0, 5)
  return arr[0]
end

def get_nak(planet, jday, jmon, jyear)
  planet_degree = get_p_position(planet, jday, jmon, jyear)
  nak = (planet_degree/N_DIVISOR).floor + 1
  return nak
end

def get_nak_name(nak_number)
  return NAK[nak_number]
end

def get_nak_pada(planet, jday, jmon, jyear)
  planet_degree = get_p_position(planet, jday, jmon, jyear)
  nak = planet_degree/N_DIVISOR
  npada = ((nak - nak.floor)/0.25).ceil
  return npada
end

def get_nak_ruler(nak_number)
  return NAK_RULERS[nak_number]
end

d = 4
m = 12
y = 1948
#lat =  41.2
#lng = -80.6
#alt = 359
#SweLib.swe_set_topo(lat, lng, alt); 
(SE_SUN..SE_TRUE_NODE).each do |p|
  pl =  get_p_position(p, d, m, y)
  nak =  get_nak(p,d, m, y)
  nak_name = get_nak_name(nak)
  nak_pada = get_nak_pada(p,d, m, y)
  nak_ruler = get_nak_ruler(nak)

  printf("planet(%s): %f, nakshatra: %s, pada: %d, nak ruler: %s\n",SweLib.swe_get_planet_name(p, ""), pl, nak_name,nak_pada,nak_ruler )
end