function y_bin = binarizeData(y)
%BinarizeData Mapps y values to 0 and 1
%   p = BINARIZEDATA(Y) Mapps y values to 0 (Apartment and Others) and 1
%   (House)

y_bin = string(y);

y_bin(y_bin == 'Wohnung') = 0;
y_bin(y_bin == 'Sonstiges') = 0;
y_bin(y_bin == 'Einfamilienhaus') = 1;
y_bin(y_bin == 'Mehrfamilienhaus') = 1;

y_bin = str2num(char(y_bin));

% =========================================================================


end
