pcl_file = "BRaTWorDS.pcl"; 					# pcl file name geven
scenario = "BRaTWorDS"; 						# for log-file

#Scenario configuration
write_codes = true; 								# send codes to the acquisition devices
pulse_width = 10;									# determines the length of time that tøhe codes remain on the port
active_buttons = 1;								# 1 button active
button_codes = 33;								# Code that is send if the button (def: enter)is pressed.

begin;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		
		text
		{
			caption = "place holder:";
			font_size = 30;
		} instruction_text;
		x = 0; y = 0;
	};
	
} instruction;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		text
		{
			caption = "place holder:";
			font_size = 30;
		} pause_text;
		x = 0; y = 0;
	};
	time = 1000;
	port_code = EXPARAM("Stop Marker");
} pause;