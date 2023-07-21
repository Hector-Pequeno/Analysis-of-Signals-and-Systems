clear % Clear console

% Signal 1, variables:

double Y1; % Amplitude of the signal 1
double X1; % Period1
double group1; % Group Number
double signal1; % Auxiliar to display the signal
double group1; % Variable to calculate the group

% Signal 2, variables:

double Y2; % Amplitude of the signal 2
double X2; % Period signal 2
double group2; % Variable to calculate the group
double signal2; % Auxiliar to display the signal


% Signal 3, variables:

double Y3; % Amplitude of the signal 3
double X3; % Period signal 2
double group3; % Variable to calculate the group
double signal3; % Auxiliar to display the signal

% Program setup
prompt = "Introduce the number of the group"; % Solicit the group
group = input(prompt); % We read the group
group1 = 1  + group; % Compute group of signal 1
group2 = 2  + group; % Compute group of signal 2
group3 = 3  + group; % Compute group of signal 3
X = 1:.1:100; % Create de X-axis of the signal

% Signal 1 - Operation
disp("This is the amplitude of the signal 1"); % We display the message
Y1 = (3 + 2*group1); % Compute the amplitude of the signal by A = Y = (3 + 2*GROUP)
disp(Y1); % We display the amplitude
signal1 = Y1*sin(X/group1); % Asing the created signal to a variable, just to have controlled the signals


% Signal 2 -Operation
disp("This is the amplitude of the signal 2"); % We display the message
Y2 = (3 + 2*group2); % Compute the amplitude of the signal by A = Y = (3 + 2*GROUP)
disp(Y2); % We display the amplitude
signal2 = Y2 * sin(X/group2);% Asing the created signal to a variable, just to have controlled the signals


% Signal 3 -Operation
disp("This is the amplitude of the signal 3"); % We display the message
Y3 = (3 + 2*group3); % Compute the amplitude of the signal by A = Y = (3 + 2*GROUP)
disp(Y3); % We display the amplitude
signal3 = Y3 * sin(X/group3); % Asing the created signal to a variable, just to have controlled the signals


TotalSignal = signal3 + signal2 + signal1; % Compute the summatory of the signal

% Display the menu in the console
disp("Introduce the corresponding # for your interest option");
disp("1 - Display the signal 1 into the graph");
disp("2 - Display the signal 2 into the graph");
disp("3 - Display the signal 3 into the graph");
disp("4 - Display the summatory of signals into the graph");
disp("5 - Display the all the signals into the graph");
prompt = "If you select other option the program will end";
sel = input(prompt); % Read the input of the user

% Select what to display, following the "sel" variable
if (sel==1) % Display first graph
    plot(X,signal1); % Display the signal 1 into the graph
    xlabel("time (ms) "); % Label the x-axis
    ylabel("Volts (mV) "); % Label the y-axis
    title("Sum of signals"); % We name our graph
elseif(sel == 2) % Display second graph
    plot(X,signal2); % Display the signal 2 into the graph
    xlabel("time (ms) "); % Label the x-axis
    ylabel("Volts (mV) "); % Label the y-axis
    title("Sum of signals"); % We name our graph

elseif(sel == 3) % Display the third graph
    plot(X,signal3); % Display the signal 3 into the graph
    xlabel("time (ms) "); % Label the x-axis
    ylabel("Volts (mV) "); % Label the y-axis
    title("Sum of signals"); % We name our graph
elseif(sel == 4) % Display the summatory graph
    plot(X,TotalSignal); % Display the summatory of the signal
    xlabel("time (ms) "); % Label the x-axis
    ylabel("Volts (mV) "); % Label the y-axis
    title("Sum of signals"); % We name our graph
elseif(sel == 5) % Display all the graphs graph
    plot(X,signal1); % Display the signal 1 into the graph
    hold on; % Maintain the signal in the graph
    plot(X,signal2); % Display the signal 2 into the graph
    hold on; % Maintain the signal in the graph
    plot(X,signal3); % Display the signal 3 into the graph
    hold on; % Maintain the signal in the graph
    plot(X,TotalSignal); % Display the summatory of the signal
    hold on; % Maintain the signal in the graph
    xlabel("time (ms) "); % Label the x-axis
    ylabel("Volts (mV) "); % Label the y-axis
    title("Sum of signals"); % We name our graph
else
    disp("Invalid option"); % Display error message
end
