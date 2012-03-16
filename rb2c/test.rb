
# chennai
# top_long = 80.28
# top_lat = 13.08
# top_alt = 29

#printf("date: %02d.%02d.%d at 0:00 Universal time\n", jday, jmon, jyear)
#printf("planet \tlongitude\tlatitude\tdistance\tspeed long.\n")
# for p in (SE_SUN..SE_CHIRON)
#   next unless p != SE_EARTH
#   iflgret = SweLib.swe_calc_ut(tjd_ut, p, iflag, x2, serr)
#   foo = SweLib.swe_get_planet_name(p, snam)
#   #SweLib.swe_set_topo(top_long,top_lat,top_alt)
#   arr = x2.get_array_of_double(0, 5)
#   printf("%10s\t%11.7f\t%10.7f\t%10.7f\t%10.7f\n",foo, arr[0], arr[1], arr[2], arr[3]);
# end



 
 #  for (p = SE_SUN; p <= SE_CHIRON; p++) {
 #      if (p == SE_EARTH) continue;
 #  /*
 #  * do the coordinate calculation for this planet p
 #  */
 #      iflgret = swe_calc_ut(tjd_ut, p, iflag, x2, serr);
 #  /* Swisseph versions older than 1.60 require the following
 #  * statement instead */
 #  /* iflgret = swe_calc(te, p, iflag, x2, serr); */
 #  /*
 #  * if there is a problem, a negative value is returned and an
 #  * error message is in serr.
 #  */
 #  if (iflgret < 0)
 #  printf("error: %s\n", serr);
 #  /*
 #  * get the name of the planet p
 #  */
 #      swe_get_planet_name(p, snam);
 #  /*
 #  * print the coordinates
 #  */
 #      printf("%10s\t%11.7f\t%10.7f\t%10.7f\t%10.7f\n",
 #      snam, x2[0], x2[1], x2[2], x2[3]);
 # }
 # }