clear all
clc
num = [1]
denom = [1,5]
f = tf(num,denom)
subplot(2,1,1)
impulse(f)
title('Impulse Graph')
subplot(2,1,2)
step(f)
title('Step Graph')
