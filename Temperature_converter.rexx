/* Temperature conversion program in Rexx. by Bill*/

OptionsDisplay:

SAY "----------------------------"

    SAY "Temperature converter"
    SAY "----------==OPTIONS==----------"
	SAY "1 - Celsius => Fahrenheit conversion"
    SAY "2 - Celsius => Kelvin conversion"
    SAY "3 - Fahrenheit => Celsius conversion"
    SAY "4 - Fahrenheit => Kelvin conversion"
    SAY "5 - Kelvin => Celsius conversion"
    SAY "6 - Kelvin => Fahrenheit conversion"
    SAY "7 - Quit"

	SAY " What option would like to use?"
	PULL choice
select 
when (choice = 1) then 
 CALL CeltoFah

when (choice = 2 ) then 
 CALL CeltoKel
  
when (choice = 3) then 
CALL FahtoCel

when (choice = 4 ) then 
 CALL FahtoKel
  
when (choice = 5) then 
CALL KeltoCel

when (choice = 6) then 
CALL KeltoFah

when (choice = 7) then
exit
otherwise 
SAY "Please choose an appropriate option"
CALL OptionsDisplay 
 end
CeltoFah:
SAY "Enter the temperature you would like to convert"
  PULL celsius
   fahrenheit = (9/5) * celsius + (32)
  SAY celsius "Celsius degrees is" fahrenheit "Fahrenheit degrees" 
  CALL OptionsDisplay
CeltoKel:
SAY "Enter the temperature you would like to convert"
  PULL celsius2
   kelvin = celsius2+273.15
   SAY celsius2 "Celsius degrees is" kelvin "Kelvin degrees" 
   CALL OptionsDisplay
FahtoCel:
SAY "Enter the temperature you would like to convert"
  PULL Fahrenheit2
   celsius3 = (5/9)*(Fahrenheit2-32)
   SAY Fahrenheit2 "Fahrenheit degrees is" celsius3 "Celsius degrees" 
   CALL OptionsDisplay
FahtoKel:
SAY "Enter the temperature you would like to convert"
  PULL Fahrenheit3
  kelvin2 = (fahrenheit3 -32) * (5/9) + 273.15
  SAY fahrenheit3 "Fahrenheit degrees is" kelvin2 "Kelvin degrees" 
  CALL OptionsDisplay
KeltoCel:
SAY "Enter the temperature you would like to convert"
  PULL kelvin3
    celsius4 = kelvin3-273.15
	SAY kelvin3 "Kelvin degrees is" celsius4 "Celsius degrees"
	CALL OptionsDisplay 
KeltoFah:
SAY "Enter the temperature you would like to convert"
  PULL kelvin4
  fahrenheit4 = (kelvin4 -273.15 ) *(9/5) + 32
   SAY kelvin4 "Kelvin degrees is" fahrenheit4 "Fahrenheit degrees" 
   CALL OptionsDisplay



