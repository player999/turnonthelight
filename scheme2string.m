function [type pos] = scheme2string(scheme)
scheme = scheme(:);
type = '';
pos = '';
for i = 1:length(scheme)
    bits = cell2bits(scheme{i});
    type = [type bits(1:2)];
    pos = [pos bits(3:4)];
end