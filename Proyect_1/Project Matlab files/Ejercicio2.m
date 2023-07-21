clear % Clean program info
HR = textread('ecg.txt', '%f'); % We read and save the information of the ECG, to the HR (Heart Rate) variable
prompt = 'Introduce the group number'; % Communicate to the user an input, related to the group
aux = input(prompt); % Received the user input to use in the formula "(2+ 2*aux)"
x = 1:(2 + 2*aux):1000; % Define and save the X axis = Time(ms) from 1 to 1000 (ms)
y = HR(x,1); % Define and save the HR info to be displayed on the graph
plot(x,y); % Display the Graph
xlabel('Time (ms)'); % Label the x-axis on the graph
ylabel('Magnitude'); % Label the y-axis on the graph
title('HRV'); % Create a title for the graph