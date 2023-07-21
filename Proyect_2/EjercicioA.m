% We create an object to record audio from an input, like a microphone
% This are the following features of the recording object
% Sampling frequency Fs = 8000 hertz = 8kHz
% Bits per sample nBits = 8
% Number of channels nChannels = 1
recorder= audiorecorder; % Audio recorder Object, to hear the words
disp("Say your password"); % We display the message to begin
recordblocking(recorder,2); % We record for to seconds the audio
disp("End analysis") % We display the message to begin
play(recorder); % We reproduce what we hear
int8Array = getaudiodata(recorder, 'int8'); % We save the audio data into an array
espectro(int8Array,8000);
title('Audio Signal (int 8)'); % Asignamos un titulo
