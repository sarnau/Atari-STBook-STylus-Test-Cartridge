plan is too find the needed plug  10 pin dtype think its .76mm pads 
but ive never seen one or held one...
 
THE STBOOK can use any external keyboard unit {ie keyboard mouse joy in one} from the /mega /tt falcon 
to a stbook the TT or MEGA 
uses an external keyboard via a RJ11 connector bit like a telephone
so 
you can use any keyboard for atari...stx or any mega or tt board 
 
three pics so far 
 
the problem is how far back pins 1/6 and 5/10  occupy 
above the width and hight of the toung the rs 232 10 pin dtype this is 
but i think i need a cnc to cut the channels and perhaps the toung is shaped also  
=====================================================================================


so... two wires from inside and a 5v supply and connect the grounds if you use an extarnal supply
for TT/MEGA type keyboards
so  you only need 4 wires  +vcc  RX to TX  TX to RX and ground
the pictures have notes on them

i will be producing a little board design to connect the external books port
if i cant find the plug i cant... we cant

if you have some time too hunt for the right clip on and screw plug
please post details to stbook on facebook the plug is also used for rs232 link to other machines

above all if you connect at the IKBD chip pins 19 and 20 tx rx and 38 reset
then use three 220R resistors in series with each pin that connects to U703 
connect them to the cleaned pins of the socket carefully
connect your +5v supply to the capacitors at the back right   if needed
or find a local 5v supply too the front 
its up too you 
the data is easy  the supply i would take from the 1000uf caps at the back right two folded over ones + -
  
for ST and falcon internal keyboard reuse 8 pin sil {see jpg}
you need to add the reset line also to u703 IKBD chip
the reset pin is only needed when using an old internal st ste falcon keyboard
the TT and mega keyboards gen its own
so needs 5 wires 
