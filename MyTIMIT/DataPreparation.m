% Load file
[signal,Fs] = audioread('gdx1.m4a');

% Judge silence by "0.05" rule
start_index = find(signal > max(signal)*0.05);
end_index = start_index(end);
start_index = start_index(1);

% Cut silence period, and decrease sampling rate to 16kHz
real_signal = signal(start_index:3:end_index);

% Normalize to (-1,1)
real_signal = real_signal./(max(real_signal));

% Write file
audiowrite('gdx', real_signal, 16000);

%% Batch Processing

for i = 1:8
    [signal,Fs] = audioread(sprintf("xfy%d.m4a", i));
    
    start_index = find(signal > max(signal)*0.05);
    end_index = start_index(end);
    start_index = start_index(1);
    
    real_signal = signal(start_index:3:end_index);
    real_signal = real_signal./abs(max(real_signal));
    audiowrite(sprintf("xfy%d.wav", i), real_signal, 16000);
end

