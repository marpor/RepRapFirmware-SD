M117 "Waiting for extruder to heat"
;M568 S210 R180 ; set active and standby temperatures 
;M116 ; wait for extruder temp

M109 S210
;G1 X0 Y210 F7200

M83 ; extruder relative mode

; Shape end of filament (to avoid long string)
;G1 E2 F5000
;G1 E2 F5500
;G1 E2 F6000
;G1 E-15.0000 F5800
;G1 E-20.0000 F5500
;G1 E10.0000 F3000
;G1 E-10.0000 F3100
;G1 E10.0000 F3150
;G1 E-10.0000 F3250
;G1 E10.0000 F3300

G1 E-5 F6000 ; First a quick pull to separate the filament

; "Shake" it a few times to try and get rid of any strings
G1 E4
G1 E-4

G1 E3
G1 E-3

G1 E2
G1 E-2

G1 E1
G1 E-1

G1 E-25 F300 ; Slow rest of the way, so it can cool before reaching the gears

;M702 ; Unload filament - runs unload.g in active filament directory

;G4 ; wait
M104 S0 ; turn off temperature
;M140 S0 ; turn off heatbed
M107 ; turn off fan

M84 E0 ; Turn off extruder motor so it can be fed by hand
