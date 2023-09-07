; purge tool
;M98 P"purge.g"

G91 					; use relative positioning
;G1 E-3                  ; Retract filament
G1 Z5 F5000		    ; lift Z
G90 					; back to absolute positioning

T-1 					; park tool
