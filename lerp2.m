function [ xy ] = lerp2( x, y, ox, oy, w, h, quantity )
%LERP Summary of this function goes here
%   Detailed explanation goes here


x = min(max(x - ox, 1.0), w - 0.001);
y = min(max(y - oy, 1.0), h - 0.001);
ix = floor(x);
iy = floor(y);
x = x - ix;
y = y - iy;

x00 = quantity(getIdx(ix, iy, w));
x10 = quantity(getIdx(ix+1, iy, w));
x01 = quantity(getIdx(ix, iy+1, w));
x11 = quantity(getIdx(ix+1, iy+1, w));

xy = lerp(lerp(x00, x10, x), lerp(x01, x11, x), y);

end

