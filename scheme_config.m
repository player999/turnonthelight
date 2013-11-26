function cells = scheme_config(path)
H = 5;
W = 5;
f = fopen(path, 'r');
line = string(uint8(fread(f))');
cells = strsplit(line);
cells = cells(1:H * W);
cells = reshape(cells, [W,H])';
