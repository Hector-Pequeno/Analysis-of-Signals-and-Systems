clear % Clear trash values
group = 1; % Number of our group
disp("Select the number with the option of your interest:"); % Display the menu
disp("1 - Square function"); % Display option 1
prompt = "2 - Display sawtooth graph"; % Display option 2
sel = input(prompt); % Read the input of the menu
x=0:.01:4*pi*group; % Create a range for the signals

if(sel==1) % Condition to select our interest option
  
   plot(x,2*square(x)); % Display the square  graph
   xlabel("Time (ms)"); % Label for x-axis
   ylabel("Voltage (V)"); % Label for y-axis
   title("Square Signal"); % Title for the graph
  
elseif(sel==2) % Second option selected
      
   plot(x,2*sawtooth(x)); % Display the sawtooth graph
   xlabel("Time (ms)"); % Label for x-axis
   ylabel("Voltage (V)"); % Label for y-axis
   title("Sawtooth Signal"); % Title for the graph
      
else % Last option selected
   disp("No valid option selected"); % Display error message
  
end % End of the If Status

