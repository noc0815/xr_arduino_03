'-------------------------------------------------------------------------------
'                ARDUINO-Duemilanove.BAS
'           Also tested with ARDUINO NANO V3.0
'              (c) 1995-2011, MCS Electronics
'  This is a sample file for the Mega328P based ARDUINO board
'  Select Programmer 'ARDUINO' , 57600 baud and the proper COM port
'-------------------------------------------------------------------------------
$regfile= "m328pdef.dat"   ' used micro
$crystal=16000000          ' used xtal
'$baud=19200                ' baud rate we want
config clockdiv=1          ' either use this or change the divider fuse byte
'-------------------------------------------------------------------------------

dim w as word,b as byte
dim s as string * 6, ar(6) as byte

config portD=output        ' make portb an output
do
  toggle portD             ' toggle level
  'waitms 1000              ' wait 1 sec

loop

