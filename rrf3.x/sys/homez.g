; homez.g
; called to home the Z axis

M98 P"/macros/Coupler - Unlock"	; Open Coupler

G91 							; Relative mode
G1 H2 Z5 F5000					; Lower the bed
G90								; back to absolute positioning

G1 X150 Y150 F50000				; Position the endstop above the bed centre

M913 Z40						; drop motor current - this avoids bending the tool if it is still mounted

M558 F1000						; Set Z probe type (speed)
G30								; Probe the bed at the current XY position. When the probe is triggered, set the Z coordinate to the probe trigger height.
M558 F300						; Set Z probe type (speed)
G30								; Probe the bed at the current XY position. When the probe is triggered, set the Z coordinate to the probe trigger height.

M913 Z50 						; current back up - we don't need full current, ever
