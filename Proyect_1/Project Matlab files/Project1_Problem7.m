%a.
clear %Clear the console
groupnum=input('Enter your group number: '); %Ask the user for their group #
l= -121/2:121/2 %length of the signal
w = (40+groupnum)*2 %width of the signal
y=5*rectpuls(l,w) %rectangular pulse
figure(1)
stem(l,y) %plot of the signal
xlim([(-40-groupnum) (40+groupnum)]) % x limits
ylim([0.5,6]) %y limits
title('Problem 7') %title of the graph
xlabel('ms') %x label for the graph
ylabel('volts') %y label for the graph

%b.
l1= -121/2:121/2 %length of the signal
w1 = (40+groupnum)*2 %width of the signal
delay=10
y1=5*rectpuls(l1+delay,w1) %rectangular pulse
figure(2)
stem(l1,y1) %plot of the signal
xlim([(-40-groupnum) (40+groupnum)]) % x limits
ylim([0.5,6]) %y limits
title('Problem 7') %title of the graph
xlabel('ms') %x label for the graph
ylabel('volts') %y label for the graph

%c.
l2= -121/2:121/2 %length of the signal
w2 = ((40+groupnum)*2)/4 %width of the signal
delay1=20
y2=5*rectpuls(l2+delay1,w2) %rectangular pulse
figure(3)
stem(l2,y2) %plot of the signal
xlim([(-40-groupnum) (40+groupnum)]) % x limits
ylim([0.5,6]) %y limits
title('Problem 7') %title of the graph
xlabel('ms') %x label for the graph
ylabel('volts') %y label for the graph

