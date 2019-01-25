function letters = loadLetters()
%% load recorded letters
[y_a,Fs] = audioread('letters/a.wma');
[y_b,Fs] = audioread('letters/b.wma');
[y_c,Fs] = audioread('letters/c.wma');
[y_d,Fs] = audioread('letters/d.wma');
[y_e,Fs] = audioread('letters/e.wma');
[y_f,Fs] = audioread('letters/f.wma');
[y_g,Fs] = audioread('letters/g.wma');
[y_h,Fs] = audioread('letters/h.wma');
[y_ch,Fs] = audioread('letters/ch.wma');
[y_i,Fs] = audioread('letters/i.wma');
[y_j,Fs] = audioread('letters/j.wma');
[y_k,Fs] = audioread('letters/k.wma');
[y_l,Fs] = audioread('letters/l.wma');
[y_m,Fs] = audioread('letters/m.wma');
[y_n,Fs] = audioread('letters/n.wma');
[y_o,Fs] = audioread('letters/o.wma');
[y_p,Fs] = audioread('letters/p.wma');
[y_r,Fs] = audioread('letters/r.wma');
[y_s,Fs] = audioread('letters/s.wma');
[y_t,Fs] = audioread('letters/t.wma');
[y_u,Fs] = audioread('letters/u.wma');
[y_v,Fs] = audioread('letters/v.wma');
[y_x,Fs] = audioread('letters/x.wma');
[y_y,Fs] = audioread('letters/y.wma');
[y_z,Fs] = audioread('letters/z.wma');

%% cut out letter audio signal
a = y_a(24200:30350,:);
b = y_b(10960:16240,:);
c = y_c(23580:30210,:);
d = y_d(16500:26300,:);
e = y_e(31310:36870,:);
f = y_f(24500:31300,:);
g = y_g(15700:21600,:);
h = y_h(17670:23340,:);
ch = y_ch(19000:27700,:);
i = y_i(18000:24190,:);
j = y_j(24000:34000,:);
k = y_k(30400:35940,:);
l = y_l(20000:29630,:);
m = y_m(9770:17200,:);
n = y_n(5800:14400,:);
o = y_o(26760:34000,:);
p = y_p(14100:17870,:);
r = y_r(20000:25360,:);
s = y_s(4200:12300,:) * 1.2;
t = y_t(800:5274,:) * 0.8;
u = y_u(24980:29840,:);
v = y_v(18080:26130,:);
x = y_x(20270:28000,:);
y = y_y(15690:20000,:);
z = y_z(20420:29340,:);

letters = struct('a',a,'b',b,'c',c,'d',d,'e',e,'f',f,'g',g,'h',h,'ch',ch,'i',i,'j',j,'k',k,'l',l,'m',m,'n',n,'o',o,'p',p,'r',r,'s',s,'t',t,'u',u,'v',v,'w',v,'x',x,'y',y,'z',z);
%% testing letter quality
% plot(y_s)
% sound(s, Fs)
end

