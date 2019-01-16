A user guide for this code is available from GPS Solutions.

https://link.springer.com/article/10.1007/s10291-018-0744-8


The code is also hosted by the GPS ToolBox website except when the 
US government is shut down.


--------------------------------------------------------------
The Matlab codes are in two folders.

Folder Maps has codes that create Fresnel zone plots,
both for a "plain" map and for google Earth.
The latter seems to work best when you open google
Earth first and then open the generated kml file.
This folder also has the code that generates the median average 
Nyquist frequency for a given site location and receiver sampling 
interval.  This is useful for setting up a new GNSS-IR site with 
the necessary sampling interval.

When making reflection zone maps, the code will need to know
the approximate azimuth angles of all rising and setting GPS tracks.
This information is stored in a file called ssss.txt where ssss 
is the 4 character ID of a station (usually lower case). If that file does not
exist, the user can create it using Matlab code do_azims.m

Folder gettingstarted, has sample snr files and some Lomb Scargle code.  

To run the test cases, add the two folders to your Matlab path:

addpath Maps
addpath gettingstarted

Test codes are:
test4maps_nyquists.m
sample_gnss_ir.m

What the codes are doing is described in the text submitted to GPS Solutions.
The Matlab codes are also extensively commented. 

If you are unfamiliar with the location of GPS nav messages, I usually pick
up the ones stored at UCSD.  get_navfile_script is a shellscript. If you don't
want to use it, you can at least use the information in it to write your own code
to pick them up.

Kristine M. Larson and Carolyn Roesler
Boulder, Colorado
March 10, 2018
updated May 11, 2018
posted to gitHub, January 16, 2019
kristinem.larson@gmail.com
