::(c)::©
::(r)::®
::(tm)::™
::cents*::¢
::pounds*::£
::yen*::¥
::plusminus::±
:*:eur*::€

; Work
::jbdd*::Jeffrey Borns, Deputy Director
::ead*::Elizabeth Andersen, Director
::rcpm*:: Ryder Cobean, Program Manager

:R*?:dd0:: ; today's date
FormatTime, CurrentDateTime,, MM/dd/yyyy
SendInput %CurrentDateTime%
return

:R*?:ddaa:: ; today's date spelled
FormatTime, CurrentDateTime,, MMMM dd, yyyy
SendInput %CurrentDateTime%
return

::dd-1:: ; yesterday's date
today = %a_now%
today += -1, days
FormatTime, today, %today%, MM/dd/yyyy
SendInput %today% 
return

::dd-a:: ; yesterday's date spelled
today = %a_now%
today += -1, days
FormatTime, today, %today%, MMMM dd, yyyy
SendInput %today% 
return

::dd+1:: ; tomorrow's date
today = %a_now%
today += +1, days
FormatTime, today, %today%, MM/dd/yyyy
SendInput %today% 
return

::dd+a:: ; tomorrow's date spelled
today = %a_now%
today += +1, days
FormatTime, today, %today%, MMMM dd, yyyy
SendInput %today% 
return