pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
p=12800k=poke
function f(c)add(b,{b=ceil(rnd(4)),y=c,x=20+rnd(88)})
if(v<1.2)v+=.03
end::g::u={"⬅️","➡️","⬆️","⬇️"}b={}s=0l=3v=.4_set_fps(60)for i=3,0,-1 do
k(p+i,8*i+21)k(p+68+i,32-4*i)k(p+136+i,24-2*i)k(p+65+68*i,6*i+2)f(10*i)end::_::cls()
for i=0,l-1 do
?"♥",7*i,8,8
end
?s,116,8,10
if l==0then
?"again? 🅾️",45,60,7
sfx(2)while not btnp(4)do flip()end
goto g
end
for i=0,3 do
a=b[4-i]
?u[a.b],a.x,a.y,2*a.b+4
a.y+=v
end
if btnp(a.b-1)then
sfx(1)s+=1del(b,a)f(5)
if(s%10<1)l+=1
elseif band(btnp(),15)>0or a.y>120then
l-=1if(l>0)sfx(0)del(b,a)f(5)
end
flip()goto _
