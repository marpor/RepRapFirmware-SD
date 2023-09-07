; tpost2.g
; called after tool 2 has been selected

;heatup
;M116 P2

;Move Out
G53 G1 Y150 F4000

; Raise bed again (since tfree)
G91 ; Relative coords
G1 Z-4 F1000
G90 ; Absolute coords

;prime nozzle
;M98 P"prime.g"

M106 R1	; restore print cooling fan speed
