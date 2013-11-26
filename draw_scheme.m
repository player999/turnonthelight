function bitmap = draw_scheme(scheme)
bitmap = zeros(size(scheme,1)*3, size(scheme,2)*3);
for i = 1:size(scheme,1)
    for j = 1:size(scheme,2)
        bitmap((i-1)*3+1:(i-1)*3+3,(j-1)*3+1:(j-1)*3+3) = draw_cell(scheme{i,j});
    end
end
bitmap = 255 * uint8(bitmap);
bitmap = imresize(bitmap,16,'nearest');