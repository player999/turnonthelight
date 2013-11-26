pole1 = scheme_config('light.txt');
pole2 = solve_scheme(pole1);
img1 = draw_scheme(pole1);
img2 = draw_scheme(pole2);
figure;
subplot(1,2,1);
imshow(img1);
subplot(1,2,2);
imshow(img2);