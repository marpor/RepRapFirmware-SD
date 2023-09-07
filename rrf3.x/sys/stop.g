; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

; Turn off heaters
M568 P0 A0
M568 P1 A0
M568 P2 A0
M568 P3 A0
;G10 P0 S0 R0
;G10 P1 S0 R0
;G10 P2 S0 R0
;G10 P3 S0 R0

; Turn off bed
M140 R0     ; Set bed standby temperature
M144        ; Bed standby

; Turn off part cooling fans
M106 P2 S0  ; Fan speed
M106 P4 S0  ; Fan speed
M106 P6 S0  ; Fan speed
M106 P8 S0  ; Fan speed

;T-1  ; Park tool (if any)
