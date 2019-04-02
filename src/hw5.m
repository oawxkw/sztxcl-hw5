%% hw5
%

%% hw5-1
%
clc; clear; close all;
test1 = imread('.\pic\test1.pgm');
test2 = imread('.\pic\test2.tif');
test3 = imread('.\pic\test3_corrupt.pgm');
test4 = imread('.\pic\test4 copy.bmp');

figure(1);
[test1_F, test1_G25, test1_IF25, test1_r25] = BLPF(test1, 2, 25);
[~, test1_G50, test1_IF50, test1_r50] = BLPF(test1, 2, 50);
[~, test1_G75, test1_IF75, test1_r75] = BLPF(test1, 2, 75);
subplot(241); imshow(test1); title('\fontsize{24}test1 BLPF');
subplot(242); imshow(test1_IF25); title('\fontsize{24}test1_{IF} BLPF D_025');
subplot(243); imshow(test1_IF50); title('\fontsize{24}test1_{IF} BLPF D_050');
subplot(244); imshow(test1_IF75); title('\fontsize{24}test1_{IF} BLPF D_075');
subplot(245); imshow(abs(test1_F),[0,10000]); title('\fontsize{24}test1 BLPF');
subplot(246); imshow(abs(test1_G25),[0,10000]); title('\fontsize{24}test1_F BLPF D_025');
subplot(247); imshow(abs(test1_G50),[0,10000]); title('\fontsize{24}test1_F BLPF D_050');
subplot(248); imshow(abs(test1_G75),[0,10000]); title('\fontsize{24}test1_F BLPF D_075');
fprintf("test1_r25: %f, test1_r50: %f, test1_r75: %f.\n",test1_r25,test1_r50,test1_r75);

figure(2);
[test2_F, test2_G25, test2_IF25, test2_r25] = BLPF(test2, 2, 25);
[~, test2_G50, test2_IF50, test2_r50] = BLPF(test2, 2, 50);
[~, test2_G75, test2_IF75, test2_r75] = BLPF(test2, 2, 75);
subplot(241); imshow(test2); title('\fontsize{24}test2 BLPF');
subplot(242); imshow(test2_IF25); title('\fontsize{24}test2_{IF} BLPF D_025');
subplot(243); imshow(test2_IF50); title('\fontsize{24}test2_{IF} BLPF D_050');
subplot(244); imshow(test2_IF75); title('\fontsize{24}test2_{IF} BLPF D_075');
subplot(245); imshow(abs(test2_F),[0,10000]); title('\fontsize{24}test2 BLPF');
subplot(246); imshow(abs(test2_G25),[0,10000]); title('\fontsize{24}test2_F BLPF D_025');
subplot(247); imshow(abs(test2_G50),[0,10000]); title('\fontsize{24}test2_F BLPF D_050');
subplot(248); imshow(abs(test2_G75),[0,10000]); title('\fontsize{24}test2_F BLPF D_075');
fprintf("test2_r25: %f, test2_r50: %f, test2_r75: %f.\n",test2_r25,test2_r50,test2_r75);

figure(3);
[test1_F, test1_G25, test1_IF25, test1_r25] = GLPF(test1, 25);
[~, test1_G50, test1_IF50, test1_r50] = GLPF(test1, 50);
[~, test1_G75, test1_IF75, test1_r75] = GLPF(test1, 75);
subplot(241); imshow(test1); title('\fontsize{24}test1 GLPF');
subplot(242); imshow(test1_IF25); title('\fontsize{24}test1_{IF} GLPF D_025');
subplot(243); imshow(test1_IF50); title('\fontsize{24}test1_{IF} GLPF D_050');
subplot(244); imshow(test1_IF75); title('\fontsize{24}test1_{IF} GLPF D_075');
subplot(245); imshow(abs(test1_F),[0,10000]); title('\fontsize{24}test1 GLPF');
subplot(246); imshow(abs(test1_G25),[0,10000]); title('\fontsize{24}test1_F GLPF D_025');
subplot(247); imshow(abs(test1_G50),[0,10000]); title('\fontsize{24}test1_F GLPF D_050');
subplot(248); imshow(abs(test1_G75),[0,10000]); title('\fontsize{24}test1_F GLPF D_075');
fprintf("test1_r25: %f, test1_r50: %f, test1_r75: %f.\n",test1_r25,test1_r50,test1_r75);

figure(4);
[test2_F, test2_G25, test2_IF25, test2_r25] = GLPF(test2, 25);
[~, test2_G50, test2_IF50, test2_r50] = GLPF(test2, 50);
[~, test2_G75, test2_IF75, test2_r75] = GLPF(test2, 75);
subplot(241); imshow(test2); title('\fontsize{24}test2 GLPF');
subplot(242); imshow(test2_IF25); title('\fontsize{24}test2_{IF} GLPF D_025');
subplot(243); imshow(test2_IF50); title('\fontsize{24}test2_{IF} GLPF D_050');
subplot(244); imshow(test2_IF75); title('\fontsize{24}test2_{IF} GLPF D_075');
subplot(245); imshow(abs(test2_F),[0,10000]); title('\fontsize{24}test2 GLPF');
subplot(246); imshow(abs(test2_G25),[0,10000]); title('\fontsize{24}test2_F GLPF D_025');
subplot(247); imshow(abs(test2_G50),[0,10000]); title('\fontsize{24}test2_F GLPF D_050');
subplot(248); imshow(abs(test2_G75),[0,10000]); title('\fontsize{24}test2_F GLPF D_075');
fprintf("test2_r25: %f, test2_r50: %f, test2_r75: %f.\n",test2_r25,test2_r50,test2_r75);

%% hw5-2
%
figure(1);
[test3_F, test3_G25, test3_IF25, test3_r25] = BHPF(test3, 2, 25);
[~, test3_G50, test3_IF50, test3_r50] = BHPF(test3, 2, 50);
[~, test3_G75, test3_IF75, test3_r75] = BHPF(test3, 2, 75);
subplot(241); imshow(test3); title('\fontsize{24}test3 BHPF');
subplot(242); imshow(test3_IF25); title('\fontsize{24}test3_{IF} BHPF D_025');
subplot(243); imshow(test3_IF50); title('\fontsize{24}test3_{IF} BHPF D_050');
subplot(244); imshow(test3_IF75); title('\fontsize{24}test3_{IF} BHPF D_075');
subplot(245); imshow(abs(test3_F),[0,4000]); title('\fontsize{24}test3 BHPF');
subplot(246); imshow(abs(test3_G25),[0,4000]); title('\fontsize{24}test3_F BHPF D_025');
subplot(247); imshow(abs(test3_G50),[0,4000]); title('\fontsize{24}test3_F BHPF D_050');
subplot(248); imshow(abs(test3_G75),[0,4000]); title('\fontsize{24}test3_F BHPF D_075');
fprintf("test3_r25: %f, test3_r50: %f, test3_r75: %f.\n",test3_r25,test3_r50,test3_r75);

figure(2);
[test4_F, test4_G25, test4_IF25, test4_r25] = BHPF(test4, 2, 25);
[~, test4_G50, test4_IF50, test4_r50] = BHPF(test4, 2, 50);
[~, test4_G75, test4_IF75, test4_r75] = BHPF(test4, 2, 75);
subplot(241); imshow(test4); title('\fontsize{24}test4 BHPF');
subplot(242); imshow(test4_IF25); title('\fontsize{24}test4_{IF} BHPF D_025');
subplot(243); imshow(test4_IF50); title('\fontsize{24}test4_{IF} BHPF D_050');
subplot(244); imshow(test4_IF75); title('\fontsize{24}test4_{IF} BHPF D_075');
subplot(245); imshow(abs(test4_F),[0,10000]); title('\fontsize{24}test4 BHPF');
subplot(246); imshow(abs(test4_G25),[0,10000]); title('\fontsize{24}test4_F BHPF D_025');
subplot(247); imshow(abs(test4_G50),[0,10000]); title('\fontsize{24}test4_F BHPF D_050');
subplot(248); imshow(abs(test4_G75),[0,10000]); title('\fontsize{24}test4_F BHPF D_075');
fprintf("test4_r25: %f, test4_r50: %f, test4_r75: %f.\n",test4_r25,test4_r50,test4_r75);

figure(3);
[test3_F, test3_G25, test3_IF25, test3_r25] = GHPF(test3, 25);
[~, test3_G50, test3_IF50, test3_r50] = GHPF(test3, 50);
[~, test3_G75, test3_IF75, test3_r75] = GHPF(test3, 75);
subplot(241); imshow(test3); title('\fontsize{24}test3 GHPF');
subplot(242); imshow(test3_IF25); title('\fontsize{24}test3_{IF} GHPF D_025');
subplot(243); imshow(test3_IF50); title('\fontsize{24}test3_{IF} GHPF D_050');
subplot(244); imshow(test3_IF75); title('\fontsize{24}test3_{IF} GHPF D_075');
subplot(245); imshow(abs(test3_F),[0,4000]); title('\fontsize{24}test3 GHPF');
subplot(246); imshow(abs(test3_G25),[0,4000]); title('\fontsize{24}test3_F GHPF D_025');
subplot(247); imshow(abs(test3_G50),[0,4000]); title('\fontsize{24}test3_F GHPF D_050');
subplot(248); imshow(abs(test3_G75),[0,4000]); title('\fontsize{24}test3_F GHPF D_075');
fprintf("test3_r25: %f, test3_r50: %f, test3_r75: %f.\n",test3_r25,test3_r50,test3_r75);

figure(4);
[test4_F, test4_G25, test4_IF25, test4_r25] = GHPF(test4, 25);
[~, test4_G50, test4_IF50, test4_r50] = GHPF(test4, 50);
[~, test4_G75, test4_IF75, test4_r75] = GHPF(test4, 75);
subplot(241); imshow(test4); title('\fontsize{24}test4 GHPF');
subplot(242); imshow(test4_IF25); title('\fontsize{24}test4_{IF} GHPF D_025');
subplot(243); imshow(test4_IF50); title('\fontsize{24}test4_{IF} GHPF D_050');
subplot(244); imshow(test4_IF75); title('\fontsize{24}test4_{IF} GHPF D_075');
subplot(245); imshow(abs(test4_F),[0,10000]); title('\fontsize{24}test4 GHPF');
subplot(246); imshow(abs(test4_G25),[0,10000]); title('\fontsize{24}test4_F GHPF D_025');
subplot(247); imshow(abs(test4_G50),[0,10000]); title('\fontsize{24}test4_F GHPF D_050');
subplot(248); imshow(abs(test4_G75),[0,10000]); title('\fontsize{24}test4_F GHPF D_075');
fprintf("test4_r25: %f, test4_r50: %f, test4_r75: %f.\n",test4_r25,test4_r50,test4_r75);

%% hw5-3
%
figure(1);
[test3_F, test3_G, test3_IF, test3_r] = LHPF(test3, 1);
[test4_F, test4_G, test4_IF, test4_r] = LHPF(test4, 1);
subplot(241); imshow(test3); title('\fontsize{24}test3 LHPF');
subplot(242); imshow(test3_IF); title('\fontsize{24}test3_{IF} LHPF');
subplot(243); imshow(abs(test3_F),[0,10000]); title('\fontsize{24}test3_F LHPF');
subplot(244); imshow(abs(test3_G),[0,1000000000]); title('\fontsize{24}test3_G LHPF');
subplot(245); imshow(test4); title('\fontsize{24}test4 LHPF');
subplot(246); imshow(test4_IF); title('\fontsize{24}test4_{IF} LHPF');
subplot(247); imshow(abs(test4_F),[0,10000]); title('\fontsize{24}test4_F LHPF');
subplot(248); imshow(abs(test4_G),[0,1000000000]); title('\fontsize{24}test4_G LHPF');
% fprintf("test3_r: %f, test4_r: %f.\n",test3_r,test4_r);

figure(2);
[test3_F, test3_G, test3_IF, test3_r] = UHPF(test3, 1, 1, 25);
[test4_F, test4_G, test4_IF, test4_r] = UHPF(test4, 1, 1, 25);
subplot(241); imshow(test3); title('\fontsize{24}test3 UHPF');
subplot(242); imshow(test3_IF); title('\fontsize{24}test3_{IF} UHPF');
subplot(243); imshow(abs(test3_F),[0,10000]); title('\fontsize{24}test3_F UHPF');
subplot(244); imshow(abs(test3_G),[0,10000]); title('\fontsize{24}test3_G UHPF');
subplot(245); imshow(test4); title('\fontsize{24}test4 UHPF');
subplot(246); imshow(test4_IF); title('\fontsize{24}test4_{IF} UHPF');
subplot(247); imshow(abs(test4_F),[0,10000]); title('\fontsize{24}test4_F UHPF');
subplot(248); imshow(abs(test4_G),[0,10000]); title('\fontsize{24}test4_G UHPF');
% fprintf("test3_r: %f, test4_r: %f.\n",test3_r,test4_r);

%% Helper functions
%

% Helper function
function [image_F, image_G, image_IF, image_r] = BLPF(image, bn, D0)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = 1/(1+(image_D(u,v)/D0)^(2*bn));
            image_G(u,v) = image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end

% GLPF function
function [image_F, image_G, image_IF, image_r] = GLPF(image, D0)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = exp(-image_D(u,v)^2/(2*D0^2));
            image_G(u,v) = image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end

% BHPF function
function [image_F, image_G, image_IF, image_r] = BHPF(image, bn, D0)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = 1/(1+(D0/image_D(u,v))^(2*bn));
            image_G(u,v) = image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end

% GHPF function
function [image_F, image_G, image_IF, image_r] = GHPF(image, D0)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = 1-exp(-image_D(u,v)^2/(2*D0^2));
            image_G(u,v) = image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end

% LHPF function
function [image_F, image_G, image_IF, image_r] = LHPF(image, c)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = 1+c*4*pi^2*image_D(u,v)^2; 
            image_G(u,v) = image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end

% UHPF function
function [image_F, image_G, image_IF, image_r] = UHPF(image, k1, k2, D0)
    image_F = fftshift(fft2(double(image)));
    [P, Q] = size(image_F);
    image_Ft = 0; image_Gt = 0;
    image_D = zeros(P,Q); image_H = zeros(P,Q); image_G = zeros(P,Q);
    for u = 1:P
        for v = 1:Q
            image_D(u,v) = sqrt((u-fix(P/2))^2+(v-fix(Q/2))^2);
            image_H(u,v) = 1-exp(-image_D(u,v)^2/(2*D0^2));
            image_G(u,v) = k1+k2*image_H(u,v)*image_F(u,v);
            image_Fd = (abs(image_F(u,v)))^2;
            image_Ft = image_Ft+image_Fd;
            image_Gd = (abs(image_G(u,v)))^2;
            image_Gt = image_Gt+image_Gd;
        end
    end
    image_IF = uint8(real(ifft2(ifftshift(image_G))));
    image_r = image_Gt/image_Ft;
end