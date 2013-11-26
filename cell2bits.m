function bits = cell2bits(str)
if str(1) == 'L'
    first_string = '00';
elseif str(1) == 'I'
    first_string = '01';
elseif str(1) == 'T'
    first_string = '10';
elseif str(1) == 'H'
    first_string = '11';
end

if str(2) == '0'
    second_string = '00';
elseif str(2) == '1'
    second_string = '01';
elseif str(2) == '2'
    second_string = '10';
elseif str(2) == '3'
    second_string = '11';
end

bits = [first_string second_string];