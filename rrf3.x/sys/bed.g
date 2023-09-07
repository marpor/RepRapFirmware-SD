; Bed Mesh Leveling

G1 S2 Z3 F5000		; lift Z

G29					; (S0 implied) Probe the bed, save the height map in a file on the SD card, and activate mesh bed compensation. The height map is stored in file is /sys/heightmap.csv.

G29 S2				;disable mesh leveling, needs to be enabled at the start of your print and disabled again when finished.

G1 S2 Z10 F5000		; lift Z

G1 X150 Y-49 F50000	; Park the head
