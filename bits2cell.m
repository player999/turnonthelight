function cl = bits2cell(bits)
if bits(1:2) == '00'
    first_string = 'L';
elseif bits(1:2) == '01'
    first_string = 'I';
elseif bits(1:2) == '10'
    first_string = 'T';
elseif bits(1:2) == '11'
    first_string = 'H';
end

if bits(3:4) == '00'
    second_string = '0';
elseif bits(3:4) == '01'
    second_string = '1';
elseif bits(3:4) == '10'
    second_string = '2';
elseif bits(3:4) == '11'
    second_string = '3';
end

cl = [first_string second_string];