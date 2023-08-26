; homec.g
; called to home the C axis (coupler)

G91 						; Relative positioning
M400						; Wait for current moves to finish
M913 C70					; Set motor percentage of normal current
G1 H2 C-500 F5000			; Move with H2=Ignore endstops while moving. Also ignore if axis has not been homed
G92 C-45					; Set Position
G90							; Absolute positioning
M913 C100					; XY MOTORS TO 100% CURRENT

;Open Coupler
M98 P"/macros/Coupler - Unlock"
