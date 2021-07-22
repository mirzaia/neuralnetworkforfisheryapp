Kode Program Prediksi Ikan
clc;clear;close all;

% load jaringan yang sudah dibuat pada proses pelatihan load net.mat

% Proses membaca data uji dari excel
filename = 'Data Interpolasi Suhu Teluk Dodinga.xlsx'; sheet = 1;
xlRange = 'D78';

Data = xlsread(filename, sheet, xlRange); data_uji = Data(:,1)';
[m,n] = size(data_uji);

% Hasil prediksi 

hasil_uji = sim(net_keluaran,data_uji); max_data = 4100;

min_data = 0;
hasil_uji = ((hasil_uji-0.1)*(max_data-min_data)/0.8)+min_data


Kode Program Prediksi Suhu Permukaan Laut
clc;clear;close all;

% load jaringan yang sudah dibuat pada proses pelatihan load net.mat

% Proses membaca data uji dari excel filename = 'Data.xlsx';

sheet = 2;
xlRange = 'S29:AD29';

Data = xlsread(filename, sheet, xlRange); data_uji = Data(:,1:12)';

[m,n] = size(data_uji);

% Hasil prediksi

hasil_uji = sim(net_keluaran,data_uji);

max_data = 30.48000915;
min_data = 27.78993596;
hasil_uji = ((hasil_uji-0.1)*(max_data-min_data)/0.8)+min_data;



