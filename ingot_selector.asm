alias IngotSelector d0 #r0 ingot selector
alias MinKMem d1       #r1 mink
alias MaxKMem d2       #r2 maxk
alias MinPMem d3       #r3 minp
alias MaxPMem d4       #r4 maxp
alias HashIDMem d5     #r5 hashid
WaitSelectionChange:   #r6 temp
yield
l r6 IngotSelector Setting
beq r0 r6 WaitSelectionChange
move r0 r6
move r3 100
move r4 100000
move r1 900
move r2 100000
yield
l r0 IngotSelector Setting
beq r0 1 36  #Copper
beq r0 2 38  #Gold
beq r0 3 40  #Iron
beq r0 4 42  #Lead
beq r0 5 44  #Nickel
beq r0 6 46  #Silicon
beq r0 7 48  #Silver
beq r0 8 50  #Constantan
beq r0 9 55  #Electrum
beq r0 10 60 #Invar
beq r0 11 66 #Solder
beq r0 12 70 #Steel
beq r0 13 73 #Astroloy
beq r0 14 79 #Hastelloy
beq r0 15 85 #Inconel
beq r0 16 91 #Stellite
beq r0 17 97 #Waspaloy
move r5 0    #unknown/none
j BufferMinMax
move r5 -404336834  #copper
j BufferMinMax
move r5 226410516   #gold
j BufferMinMax
move r5 -1301215609 #iron
j BufferMinMax
move r5 2134647745  #lead
j BufferMinMax
move r5 -1406385572 #nickel
j BufferMinMax
move r5 -290196476  #silicon
j BufferMinMax
move r5 -929742000  #silver
j BufferMinMax
move r3 1000        #constantan
move r1 1000
move r2 1300
move r5 1058547521
j BufferMinMax
move r3 800         #electrum
move r4 2400
move r1 600
move r5 502280180
j BufferMinMax
move r3 18000       #invar
move r4 20000
move r1 1200
move r2 1500
move r5 -297990285
j BufferMinMax
move r3 20000       #solder
move r1 350
move r5 -82508479
j BufferMinMax
move r3 1000        #steel
move r5 -654790771
j BufferMinMax
move r3 5000        #astroloy
move r4 6000
move r1 1200
move r2 1400
move r5 412924554
j BufferMinMax
move r3 2500        #hastelloy
move r4 3000
move r1 950
move r2 1000
move r5 1579842814
j BufferMinMax
move r3 4250        #inconel
move r4 4750
move r1 1150
move r2 1250
move r5 -787796599
j BufferMinMax
move r3 4000        #stellite
move r4 5000
move r1 1700
move r2 1900
move r5 -1897868623
j BufferMinMax
move r3 1250        #waspaloy
move r4 2750
move r1 875
move r2 1000
move r5 156348098
j BufferMinMax
BufferMinMax:
move r6 10
add r3 r3 r6
add r1 r1 r6
sub r4 r4 r6
sub r2 r2 r6
s MinKMem Setting r1
s MaxKMem Setting r2
s MinPMem Setting r3
s MaxPMem Setting r4
s HashIDMem Setting r5
j WaitSelectionChange
