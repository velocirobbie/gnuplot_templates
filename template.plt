# ========= Line and Color Styles =====
load '~/git/colorbrew/qualitative/Set2.plt' 
# load '~/git/colorbrew/sequential/bupu.plt'
# load '~/git/colorbrew/diverging/rdbu.plt'

pl cos(x) t 'cosine'    ls 1 lw 2,\
   sin(x) t 'sine'      ls 2 lw 2,\
   tan(x) t 'tangent'   ls 3 lw 2

xmin = 0
xmax = 5
ymin = -1
ymax = 1
set xr[xmin:xmax]; set yr[ymin:ymax] 

set title 'Title'
set xlabel 'Angstroms / {\305}'
set ylabel 'Italic Greek / {/Symbol-Oblique Q}'
set key top right

# set xtics start,inc,end axis/border 
# set format x "%6.2f" # Floating point: 2 d.p 6 figures
# set xtics pi/2; set format x "%.1P {/Symbol p}"

# --------- Frills + Spills -----------
# ========= Objects ===================
# set style rect fc lt -1 fs solid 0.15 noborder; set obj rect from 1, graph 0 to 2, graph 1
# set arrow from 0,0 to 0,1 nohead

# ========= Axes + Grid Style =========
set border linewidth 1.5
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror out scale 0.75

# set style line 12 lc rgb'#808080' lt 0 lw 1
# set grid back ls 12

# ========= On Line Labels ============
#unset key
## Radio of x y ranges
#dx = xmax - xmin
#dy = ymax - ymin
#s1 = dx/dy
## Ratio of axes
#s2 = 3/2
## Fitting function
#f(x) = a*x + b
## Rotation function
#deg(x) = x/pi*180.0
##r(x) = deg(atan(s1*s2*x))
#
#fit [range:of x near label] [*:*] 'data.dat' u 1:2 via a,b
#set label 1 'rotated label' at 1,1 rotate by r(a) centre tc ls 1 

# ========= Output ====================
# set terminal x11 enhanced 

set terminal postscript eps enhanced color font 'Helvetica,15' linewidth 1.5
set encoding iso_8859_1
set output 'myplot.ps'

rep

# www.gnuplotting.org/
