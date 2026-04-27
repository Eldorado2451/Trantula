G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G28 X0 Y0 ;move X/Y to min endstops
G28 Z0 ;move Z to min endstops

; --- Your Custom Purge Logic Starts Here ---
G92 E0		; Reset extruder
G1 Z30 F9000
G1 E20 F150		; Extrude "poop" coil hanging off the edge
M400		; Wait for extrusion to finish
M0 Click to Start Print	; PAUSE: Wait for user to click knob
; --- Your Custom Purge Logic Ends Here ---

M420 S1 ;ADDED MESH LOAD MANUALLY
;G1 Z15.0 F9000 ;move the platform down 15mm
;G92 E0 ;zero the extruded length
;G1 F200 E3 ;extrude 3mm of feed stock
G92 E0 ;zero the extruded length again
G1 F9000
;Put printing message on LCD screen
M117 Printing...