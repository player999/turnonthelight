function scheme = string2scheme(types,pos)
H = 5;
W = 5;
pos = uint8(pos)+48;
scheme = cell(H,W);
for i = 1:H
   for j = 1:W
       scheme{i,j} = bits2cell([types(((i-1)*W+j-1)*2+1:((i-1)*W+j-1)*2+2),pos(((i-1)*W+j-1)*2+1:((i-1)*W+j-1)*2+2)]);
   end
end
scheme = scheme';
