; tpre1.g
; called before tool 1 is selected

;Drop the bed
G91
G1 Z4 F1000
G90

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"

;Move In
G53 G1 X77.5 Y150 F50000
G53 G1 Y227 F2500

;Close Coupler
M98 P"/macros/Coupler - Lock"
