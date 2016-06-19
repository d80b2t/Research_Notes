;+
; NAME:
;   program_name
;
; PURPOSE:
;   Purpose here. 
;
;   Sample average extinction curves plotted along with the ``average’
;   Milky Way curve (CCM with RV=3.1; Cardelli, J. A., Clayton, G. C.,
;   & Mathis, J. S. 1989, ApJ, 345, 245).
;-

readcol, '../data/Gordon_2003_ApJ_594_279_Table4.dat', $
         lambda, inv_Lam, SMC, SMC_err, LMC2, LMC2_err, LMCaver, LMCaver_err

;;
;; Colour Table
;; http://ham.space.umn.edu/johnd/ct/ct-names.html
clr_table =13
loadct, clr_table

;; Colours for clr_table =13
black      =   0
purple     =  32
deep_blue  =  48
blue       =  64
light_blue =  80
turquiose  = 128
green      = 150
yellow     = 210
orange     = 232
red        = 254

charsize=2.6
charthick=4.8
thick=3.8
xthick=4
ythick=4
XTICKLEN  = 0.03
YTICKLEN  = 0.03

;; positions...
xpos_min = 0.20
xpos_max = 0.98
ypos_min = 0.20
ypos_max = 0.98

;; x-ranges
xmin = -0.200
xmax =  9.000

;; y-ranges
ymin = -0.4
ymax =  9.0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; FULL N(z)'s
;;
set_plot, 'ps'
device, filename='Gordon_2003_Fig10_temp.eps', $
        xsize=10.0, ysize=7.0, $
        xoffset=0.2, yoffset=0.2, $
        /inches, /color, /encapsulated

plotsym, 0, 0.4, /fill
plot, inv_Lam, $
      SMC, $
      psym=8, $
      position=[xpos_min, ypos_min, xpos_max, ypos_max], $
      xrange=[xmin, xmax], $
      yrange=[ymin, ymax], $
      xstyle=1, ystyle=1, $
      xthick=xthick, ythick=ythick, $
      XTICKLEN=XTICKLEN, YTICKLEN=YTICKLEN, $
      charsize=charsize, $
      charthick=charthick, $
      thick=thick,$ 
      /nodata, $
      xtitle='!6 1/!7k!6 [!7l!6]', $
      ytitle='!6A(!7k!6)/A(V)', $
      color=black

plotsym, 0, 1.0, /fill
oplot, inv_Lam, SMC,      ps=8, color=black
oplot, inv_Lam, LMC2,     ps=8, color=red
oplot, inv_Lam, LMCaver,  ps=8, color=blue

xyouts, xmax*0.20, ymax*0.80, 'SMC Bar',         charsize=charsize, charthick=charthick, color=color
xyouts, xmax*0.20, ymax*0.70, 'LMC2 Supershell', charsize=charsize, charthick=charthick, color=red
xyouts, xmax*0.20, ymax*0.60, 'LMC Average',     charsize=charsize, charthick=charthick, color=blue
;xyouts, xmax*0.80, ymax*0.80, No_of_words,  charsize=charsize, charthick=charthick, color=color

plotsym, 0, 1.6, /fill
legend, pos=[xmax*0.15, ymax*0.85], ' ',   box=0, thick=14, psym=8, charsize=1.2, color=black
legend, pos=[xmax*0.15, ymax*0.75], ' ',   box=0, thick=14, psym=8, charsize=1.2, color=red
legend, pos=[xmax*0.15, ymax*0.65], ' ',   box=0, thick=14, psym=8, charsize=1.2, color=blue
;xyouts,      -25.0, -7.8,  'PLE', charsize=2.2, charthick=8.


device, /close
set_plot, 'X'     

end
