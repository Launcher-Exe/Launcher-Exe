--> UPDATED ! | > | ( VERSION: 2.9 )___| NADE BY UNKNOWNDEVF13 | ---- 17 |
local bit=bit or bit32 or(function()local a={_TYPE="\109\111\100\117\108\101",_NAME="\98\105\116\111\112\46\102\117\110\99\115",_VERSION="\49\46\48\45\48"}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return"\\"end;F=true;E=-E end;w=z(w,16^E-1)return("\37\48"..E..(F and"\88"or"\120")):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error"\111\117\116\32\111\102\32\114\97\110\103\101"end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error"\111\117\116\32\111\102\32\114\97\110\103\101"end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a.bit end)()if not table.create then function table.create(a)return{}end end;if not table.unpack then table.unpack=unpack end;if not table.pack then function table.pack(...)return{n=select("\35",...),...}end end;if not table.move then function table.move(b,c,d,e,f)for g=0,d-c do f[e+g]=b[c+g]end end end;local h;local i;local j;local k=50;local l={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local m={[0]="\65\66\67","\65\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\120","\65\66\67","\65\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\115\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\115\66\120","\65\115\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\120","\65\66\67"}local n={[0]={b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\82"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\78",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\78",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"}}local function o(b,p,q,r)local s=0;for g=p,q,r do local t=256^math.abs(g-p)s=s+t*string.byte(b,g,g)end;return s end;local function u(v,w,x,y)local z=(-1)^bit.rshift(y,7)local A=bit.rshift(x,7)+bit.lshift(bit.band(y,0x7F),1)local B=v+bit.lshift(w,8)+bit.lshift(bit.band(x,0x7F),16)local C=1;if A==0 then if B==0 then return z*0 else C=0;A=1 end elseif A==0x7F then if B==0 then return z*1/0 else return z*0/0 end end;return z*2^(A-127)*(1+C/2^23)end;local function D(v,w,x,y,E,F,G,H)local z=(-1)^bit.rshift(H,7)local A=bit.lshift(bit.band(H,0x7F),4)+bit.rshift(G,4)local B=bit.band(G,0x0F)*2^48;local C=1;B=B+F*2^40+E*2^32+y*2^24+x*2^16+w*2^8+v;if A==0 then if B==0 then return z*0 else C=0;A=1 end elseif A==0x7FF then if B==0 then return z*1/0 else return z*0/0 end end;return z*2^(A-1023)*(C+B/2^52)end;local function I(b,p,q)return o(b,p,q-1,1)end;local function J(b,p,q)return o(b,q-1,p,-1)end;local function K(b,p)return u(string.byte(b,p,p+3))end;local function L(b,p)local v,w,x,y=string.byte(b,p,p+3)return u(y,x,w,v)end;local function M(b,p)return D(string.byte(b,p,p+7))end;local function N(b,p)local v,w,x,y,E,F,G,H=string.byte(b,p,p+7)return D(H,G,F,E,y,x,w,v)end;local O={[4]={little=K,big=L},[8]={little=M,big=N}}local function P(Q)local R=Q.index;local S=string.byte(Q.source,R,R)Q.index=R+1;return S end;local function T(Q,U)local V=Q.index+U;local W=string.sub(Q.source,Q.index,V-1)Q.index=V;return W end;local function X(Q)local U=Q:s_szt()local W;if U~=0 then W=string.sub(T(Q,U),1,-2)end;return W end;local function Y(U,Z)return function(Q)local V=Q.index+U;local _=Z(Q.source,Q.index,V)Q.index=V;return _ end end;local function a0(U,Z)return function(Q)local a1=Z(Q.source,Q.index)Q.index=Q.index+U;return a1 end end;local function a2(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do local a4=Q:s_ins()local a5=bit.band(a4,0x3F)local a6=m[a5]local a7=n[a5]local a8={value=a4,op=l[a5],A=bit.band(bit.rshift(a4,6),0xFF)}if a6=="\65\66\67"then a8.B=bit.band(bit.rshift(a4,23),0x1FF)a8.C=bit.band(bit.rshift(a4,14),0x1FF)a8.is_KB=a7.b=="\79\112\65\114\103\75"and a8.B>0xFF;a8.is_KC=a7.c=="\79\112\65\114\103\75"and a8.C>0xFF elseif a6=="\65\66\120"then a8.Bx=bit.band(bit.rshift(a4,14),0x3FFFF)a8.is_K=a7.b=="\79\112\65\114\103\75"elseif a6=="\65\115\66\120"then a8.sBx=bit.band(bit.rshift(a4,14),0x3FFFF)-131071 end;a3[g]=a8 end;return a3 end;local function a9(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do local aa=P(Q)local ab;if aa==1 then ab=P(Q)~=0 elseif aa==3 then ab=Q:s_num()elseif aa==4 then ab=X(Q)end;a3[g]=ab end;return a3 end;local function ac(Q,b)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=j(Q,b)end;return a3 end;local function ad(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=Q:s_int()end;return a3 end;local function ae(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]={varname=X(Q),startpc=Q:s_int(),endpc=Q:s_int()}end;return a3 end;local function af(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=X(Q)end;return a3 end;function j(Q,ag)local ah={}local b=X(Q)or ag;ah.source=b;Q:s_int()Q:s_int()ah.num_upval=P(Q)ah.num_param=P(Q)P(Q)ah.max_stack=P(Q)ah.code=a2(Q)ah.const=a9(Q)ah.subs=ac(Q,b)ah.lines=ad(Q)ae(Q)af(Q)for a,ai in ipairs(ah.code)do if ai.is_K then ai.const=ah.const[ai.Bx+1]else if ai.is_KB then ai.const_B=ah.const[ai.B-0xFF]end;if ai.is_KC then ai.const_C=ah.const[ai.C-0xFF]end end end;return ah end;function h(b)local aj;local ak;local al;local am;local an;local ao;local ap;local aq={index=1,source=b}assert(T(aq,4)=="\27\76\117\97","\105\110\118\97\108\105\100\32\76\117\97\32\115\105\103\110\97\116\117\114\101")assert(P(aq)==0x51,"\105\110\118\97\108\105\100\32\76\117\97\32\118\101\114\115\105\111\110")assert(P(aq)==0,"\105\110\118\97\108\105\100\32\76\117\97\32\102\111\114\109\97\116")ak=P(aq)~=0;al=P(aq)am=P(aq)an=P(aq)ao=P(aq)ap=P(aq)~=0;aj=ak and I or J;aq.s_int=Y(al,aj)aq.s_szt=Y(am,aj)aq.s_ins=Y(an,aj)if ap then aq.s_num=Y(ao,aj)elseif O[ao]then aq.s_num=a0(ao,O[ao][ak and"\108\105\116\116\108\101"or"\98\105\103"])else error("\117\110\115\117\112\112\111\114\116\101\100\32\102\108\111\97\116\32\115\105\122\101")end;return j(aq,"\64\118\105\114\116\117\97\108")end;local function ar(a3,as)for g,at in pairs(a3)do if at.index>=as then at.value=at.store[at.index]at.store=at;at.index="\118\97\108\117\101"a3[g]=nil end end end;local function au(a3,as,av)local aw=a3[as]if not aw then aw={index=as,store=av}a3[as]=aw end;return aw end;local function ax(ay,az)local b=ay.source;local aA=ay.lines[ay.pc-1]error(string.format("\37\115\58\37\105\58\32\37\115",b,aA,az),0)end;local function aB(aC,aD,aE)local aF=aC.code;local aG=aC.subs;local aH=aC.vararg;local aI=-1;local aJ={}local av=aC.memory;local aK=aC.pc;while true do local aL=aF[aK]local a5=aL.op;aK=aK+1;if a5<18 then if a5<8 then if a5<3 then if a5<1 then for g=aL.A,aL.B do av[g]=nil end elseif a5>1 then local at=aE[aL.B]av[aL.A]=at.store[at.index]else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM+aN end elseif a5>3 then if a5<6 then if a5>4 then local aO=aL.A;local aP=aL.B;local as;if aL.is_KC then as=aL.const_C else as=av[aL.C]end;av[aO+1]=av[aP]av[aO]=av[aP][as]else av[aL.A]=aD[aL.const]end elseif a5>6 then local as;if aL.is_KC then as=aL.const_C else as=av[aL.C]end;av[aL.A]=av[aL.B][as]else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM-aN end else av[aL.A]=av[aL.B]end elseif a5>8 then if a5<13 then if a5<10 then aD[aL.const]=av[aL.A]elseif a5>10 then if a5<12 then local aO=aL.A;local aP=aL.B;local aQ=aL.C;local aR;if aP==0 then aR=aI-aO else aR=aP-1 end;local aS=table.pack(av[aO](table.unpack(av,aO+1,aO+aR)))local aT=aS.n;if aQ==0 then aI=aO+aT-1 else aT=aQ-1 end;table.move(aS,1,aT,aO,av)else local at=aE[aL.B]at.store[at.index]=av[aL.A]end else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM*aN end elseif a5>13 then if a5<16 then if a5>14 then local aO=aL.A;local aP=aL.B;local aR;if aP==0 then aR=aI-aO else aR=aP-1 end;ar(aJ,0)return av[aO](table.unpack(av,aO+1,aO+aR))else local as,aU;if aL.is_KB then as=aL.const_B else as=av[aL.B]end;if aL.is_KC then aU=aL.const_C else aU=av[aL.C]end;av[aL.A][as]=aU end elseif a5>16 then av[aL.A]={}else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM/aN end else av[aL.A]=aL.const end else local aO=aL.A;local aV=av[aO+2]local as=av[aO]+aV;local aW=av[aO+1]local aX;if aV==math.abs(aV)then aX=as<=aW else aX=as>=aW end;if aX then av[aO]=as;av[aO+3]=as;aK=aK+aL.sBx end end elseif a5>18 then if a5<28 then if a5<23 then if a5<20 then av[aL.A]=#av[aL.B]elseif a5>20 then if a5<22 then local aO=aL.A;local aP=aL.B;local U;if aP==0 then U=aI-aO+1 else U=aP-1 end;ar(aJ,0)return table.unpack(av,aO,aO+U-1)else local aP=aL.B;local W=av[aP]for g=aP+1,aL.C do W=W..av[g]end;av[aL.A]=W end else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM%aN end elseif a5>23 then if a5<26 then if a5>24 then ar(aJ,aL.A)else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM==aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 end elseif a5>26 then local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM<aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM^aN end else av[aL.A]=aL.B~=0;if aL.C~=0 then aK=aK+1 end end elseif a5>28 then if a5<33 then if a5<30 then local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM<=aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 elseif a5>30 then if a5<32 then local aY=aG[aL.Bx+1]local aZ=aY.num_upval;local a_;if aZ~=0 then a_={}for g=1,aZ do local b0=aF[aK+g-1]if b0.op==l[0]then a_[g-1]=au(aJ,b0.B,av)elseif b0.op==l[4]then a_[g-1]=aE[b0.B]end end;aK=aK+aZ end;av[aL.A]=i(aY,aD,a_)else local aO=aL.A;local aP=aL.B;if not av[aP]~=(aL.C~=0)then av[aO]=av[aP]aK=aK+aF[aK].sBx end;aK=aK+1 end else av[aL.A]=-av[aL.B]end elseif a5>33 then if a5<36 then if a5>34 then local aO=aL.A;local U=aL.B;if U==0 then U=aH.len;aI=aO+U-1 end;table.move(aH.list,1,U,aO,av)else local aO=aL.A;local b1,aW,aV;b1=assert(tonumber(av[aO]),"\96\102\111\114\96\32\105\110\105\116\105\97\108\32\118\97\108\117\101\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")aW=assert(tonumber(av[aO+1]),"\96\102\111\114\96\32\108\105\109\105\116\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")aV=assert(tonumber(av[aO+2]),"\96\102\111\114\96\32\115\116\101\112\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")av[aO]=b1-aV;av[aO+1]=aW;av[aO+2]=aV;aK=aK+aL.sBx end elseif a5>36 then local aO=aL.A;local aQ=aL.C;local U=aL.B;local b2=av[aO]local e;if U==0 then U=aI-aO end;if aQ==0 then aQ=aL[aK].value;aK=aK+1 end;e=(aQ-1)*k;table.move(av,aO+1,aO+U,e+1,b2)else av[aL.A]=not av[aL.B]end else if not av[aL.A]~=(aL.C~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 end else local aO=aL.A;local b3=aO+3;local b4={av[aO](av[aO+1],av[aO+2])}table.move(b4,1,aL.C,b3,av)if av[b3]~=nil then av[aO+2]=av[b3]aK=aK+aF[aK].sBx end;aK=aK+1 end else aK=aK+aL.sBx end;aC.pc=aK end end;function i(ah,aD,b5)local function b6(...)local b7=table.pack(...)local av=table.create(ah.max_stack)local aH={len=0,list={}}table.move(b7,1,ah.num_param,0,av)if ah.num_param<b7.n then local b8=ah.num_param+1;local U=b7.n-ah.num_param;aH.len=U;table.move(b7,b8,b8+U-1,1,aH.list)end;local aC={vararg=aH,memory=av,code=ah.code,subs=ah.subs,pc=1}local b9=table.pack(pcall(aB,aC,aD,b5))if b9[1]then return table.unpack(b9,2,b9.n)else local ay={pc=aC.pc,source=ah.source,lines=ah.lines}ax(ay,b9[2])return end end;return b6 end;return(function(ba,aD)ba=string.gsub(ba,"\46\46",function(bb)return string.char(tonumber(bb,16))end)local aC=h(ba)local Z=i(aC,aD)return Z end)("1B4C756151000104080408000E0000000000000040636F6D70696C65642D6C75610000000000000000000000021D070100000A00000A4500000085400000C580000005C100004501010085410100C581010005C201004502020085420200C582020005C302004303800685030300C54303000584030006C4430845C4030085040400C54404000585040045C5040085050500C5450500058605002240000C45C0050080000000C30080011640028083010003C50105000002800245420500A4020000000000035C020001DC81000080018003A30100006180000016C0FC7F450006004640C6005A00000016800080458006005C4080001600FF7F4500000085000600CA80000024410000C900818DC900C7805C4080014A00000181400700C180070062400001A480000000008000E4C000000000000105C107001A410000164000800581030006C1430264010100000080010000000247C10700450108005A410000164000804581030046C1C302A44101000000800100008002870108008A8100008981C8908901C991C5010600C641C903C6C101031780C90316800080C5C1020001C20900DC410001C5010600C641C903C6C101031780C80316802580C5C1020001020A00DC410001C5410A00C681CA03C6C1CA0305420A0006824A0406C24A0406024B0445420A004B42CB04C1820B005C8280014BC2CB045C82000185420A0086824A0586C24A0586024C05C5420A00CB42CC0541430700DC82800105C3020042038000A4830100000000039A43000016800080C5430A00CB83CC07DC430001C1C30C00000480044004000580048005C0040004000580044005000580058005D5848509000580074005000880058008C005000915C5050A65050001170085091640068080050006C1050D0001460D004006000481860D00D585860B9C45000185C50200C5450A00CB45CB0B41C60D00DC8580010606CE0B0B464E0CA4C601000000000B1C46800105860E0045460A004B46CC0CC18607005C0680011C8600001C468000A305000016C0058080050006C1C50E0001060F004006000481460F00D585860B9C45000185850F008685460BC1C50F009C4500011780C806168002808B05D003050606000646500C9C45800185850F008685460BC18510009C45000185450A008B854C0B9C450001C983C8A10984C8A14984C8A18984C8A1C984C8A14980C8A10980C8A185050500C505050005460500640602001C0600019C45000085051100C50506009C05010116000280C54611000007000DDC8600015780D10D16C000805700C60C16400080C5060600C986C90CA18500001600FD7FE44302002484020064C40200A4040300E444030024850300A4C10300E402040064400400248004001780C8061600018080058009C005800A9C8500019E0500011680008080058009C1C511009C45000181011200898148A416400280C541120001821200DC410001C5810F00C681C60301821000DC410001C5410A00CB81CC03DC410001E4C10400DE0100011E0080004B000000040D000000000000007365746D6574617461626C6500040C000000000000005F5F6D6574617461626C6500040D000000000000006765746D6574617461626C650004050000000000000073656C66000406000000000000006572726F7200040E0000000000000072636F6E736F6C657072696E7400040D00000000000000736574636C6970626F61726400040C0000000000000072636F6E736F6C6565727200040D0000000000000072636F6E736F6C657761726E000405000000000000007761726E00040600000000000000436C6F6E65000406000000000000007072696E7400040A00000000000000777269746566696C650004090000000000000048747470506F73740004040000000000000073796E0004080000000000000072657175657374000408000000000000006865616465727300040600000000000000496E64657800040600000000000000696E6465780004040000000000000075726C00040D00000000000000686F6F6B66756E6374696F6E00040C000000000000006E657763636C6F737572650004060000000000000056616C7565000405000000000000006E657874000403000000000000005F47000403000000000000004944000405000000000000007761697400040B000000000000005F5F6E6577696E6465780004150000000000000054686973207461626C65206973206C6F636B65640004160000000000000068747470733A2F2F6170692E69706966792E6F72670004450000000000000068747470733A2F2F7261772E67697468756275736572636F6E74656E742E636F6D2F746F706974626F7069742F5265646C696E652F6D61696E2F6C6F616465722E6C756100040800000000000000687474704765740004090000000000000068747470506F7374000433000000000000007677346265356E7536776E346D6535726765366E37346566653436353736756E62653477366E773575366234777676353533000101043300000000000000434131573854327073697156677453654C467A614D696B434A7935726172696343346A3165724E6B314439626B42537872610001000404000000000000004B657900000417000000000000007C2046614C7345204B655920416B546976332021207C00041C000000000000007C2041434345535320504F494E542031205041535345442021207C0004050000000000000067616D6500040800000000000000506C617965727300040C000000000000004C6F63616C506C61796572000405000000000000004E616D6500040B000000000000004765745365727669636500041400000000000000526278416E616C79746963735365727669636500040C00000000000000476574436C69656E7449640004070000000000000055736572496400040800000000000000487474704765740004090000000000000073687574646F776E00041500000000000000414C545454545454545454545454545454543434000421000000000000007C202D205375636365737366756C6C792041757468656E74696361746564202100041100000000000000207C202B207C2057656C636F6D653A20000405000000000000002021207C0004110000000000000055736572496E7075745365727669636500040B00000000000000496E707574426567616E00040800000000000000436F6E6E65637400040B000000000000006C6F6164737472696E67000423000000000000007C202D20556E7375636365737366756C6C792041757468656E74696361746564202100040F00000000000000207C202B207C205572204761792000040E00000000000000204F6E2054686120536572696F000405000000000000007461736B000314AE47E17A14F23F0405000000000000004B69636B000402000000000000005F0003CDCCCCCCCCCCF43F04080000000000000053504F4F46454400040600000000000000706169727300040500000000000000747970650004090000000000000066756E6374696F6E000408000000000000004F46464C494E450004020000000000000031000403000000000000005F5800040E000000000000004143434553532044454E49454400140000000000000000000000040000000E0000000100030A260000004A000000A50000006240000085000000C00080000301000216C00580C541000000020003DC8100011780C00316800480C5C1000000028002DC810001CB01C10341420100DC818001DA41000016C00180C5C1000000020003DC810001CB01C10341420100DC818001DA01000016800080C5810100DC4180001600FF7FA18000001640F97F84000000E50000009D0000009E0000001E008000070000000405000000000000006E657874000405000000000000007479706500040700000000000000737472696E6700040900000000000000746F737472696E670004050000000000000066696E64000406000000000000006874747073000405000000000000007761697400000000002600000005000000050000000500000006000000060000000600000006000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000090000000900000009000000060000000B0000000D0000000D0000000D0000000D0000000E000000070000000400000000000000617267000000000025000000050000000000000061726773000300000025000000100000000000000028666F722067656E657261746F72290006000000210000000C0000000000000028666F72207374617465290006000000210000000E0000000000000028666F7220636F6E74726F6C2900060000002100000002000000000000006900070000001F00000002000000000000007600070000001F0000000100000004000000000000006F6C64000000000000000000180000001F000000000300070E000000C500000000018000DC8000011740C00116800080C5800000DC4080001600FF7FC5C00000000100004001800080010001DC4000021E00800004000000040900000000000000746F737472696E6700040300000000000000494400040500000000000000776169740004070000000000000072617773657400000000000E00000019000000190000001900000019000000190000001B0000001B0000001B0000001E0000001E0000001E0000001E0000001E0000001F0000000300000002000000000000007400000000000D00000002000000000000006900000000000D00000002000000000000007600000000000D000000000000000000000000000000250000002C000000010100091000000045000000840000005C000101168001808B414000000280029C8180011780400316400080820180009E010001618000001680FD7F420000005E0000011E008000030000000407000000000000006970616972730004050000000000000066696E640003000000000000F03F0000000010000000260000002600000026000000260000002700000027000000270000002700000027000000280000002800000026000000290000002B0000002B0000002C0000000600000005000000000000006C696E6B00000000000F000000100000000000000028666F722067656E657261746F722900030000000D0000000C0000000000000028666F722073746174652900030000000D0000000E0000000000000028666F7220636F6E74726F6C2900030000000D00000002000000000000005F00040000000B000000040000000000000075726C00040000000B000000010000000A0000000000000077686974656C6973740000000000000000002E0000003700000001000309170000004A000000A50000006240000085000000C00080000301000216000380C541000000020003DC8100011780C00316C00180C401000000020003DC810001DA41000016800080C5C10000DC4180001600FF7FA18000001600FC7F1E008000040000000405000000000000006E657874000405000000000000007479706500040700000000000000737472696E6700040500000000000000776169740000000000170000002F0000002F0000002F0000003000000030000000300000003000000031000000310000003100000031000000310000003100000031000000310000003100000031000000330000003300000033000000300000003500000037000000070000000400000000000000617267000000000016000000050000000000000061726773000300000016000000100000000000000028666F722067656E657261746F72290006000000160000000C0000000000000028666F72207374617465290006000000160000000E0000000000000028666F7220636F6E74726F6C29000600000016000000020000000000000069000700000014000000020000000000000076000700000014000000010000000E00000000000000697357686974656C69737465640000000000000000003A0000003D000000020103050900000084000000C00000009C40000184008000C0000000250100009D0000009E0000001E0080000000000000000000090000003B0000003B0000003B0000003C0000003C0000003C0000003C0000003C0000003D00000002000000040000000000000075726C0000000000080000000400000000000000617267000000000008000000020000000B00000000000000636865636B4C696E6B73000B000000000000006F6C64487474704765740000000000000000004000000043000000020103050900000084000000C00000009C40000184008000C0000000250100009D0000009E0000001E00800000000000000000000900000041000000410000004100000042000000420000004200000042000000420000004300000002000000040000000000000075726C0000000000080000000400000000000000617267000000000008000000020000000B00000000000000636865636B4C696E6B73000C000000000000006F6C6448747470506F73740000000000000000005C0000005C0000000101000306000000440000008500000086404001468080005E0000011E008000020000000403000000000000005F47000404000000000000004B65790000000000060000005C0000005C0000005C0000005C0000005C0000005C0000000100000003000000000000005F4C00000000000500000001000000070000000000000078317831783100000000000000000070000000700000000101000328000000460040008540000086004001868040011780800016C000804400000081C000005C40000116000780460040008540000086004001860041011780800016C0008044000000814001005C40000116800480460040008540000086004001868041011780800016C000804400000081C001005C4000011600028046004000854000008600400186004201178080001680008044000000814002005C4000011E0080000A0000000408000000000000004B6579436F646500040500000000000000456E756D000402000000000000005700040F000000000000004D6F76696E6720466F72776172640004020000000000000053000411000000000000004D6F76696E67204261636B57617264730004020000000000000044000415000000000000004D6F76696E6720546F20526967687420536964650004020000000000000041000414000000000000004D6F76696E6720546F204C656674205369646500000000002800000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000010000000C000000000000007831783178317831783178000000000027000000010000000C0000000000000078495849784978495849780000000000000000008000000080000000000107030C000000850000005780000016400180854000005780000016800080858000001780000016400080A40000009E0000011E008000030000000406000000000000007072696E74000405000000000000007761726E000406000000000000006572726F7200010000000000000000000000800000008000000000000702010000001E00800000000000000000000100000080000000010000000400000000000000617267000000000000000000000000000C0000008000000080000000800000008000000080000000800000008000000080000000800000008000000080000000800000000200000002000000000000006100000000000B000000040000000000000061726700000000000B0000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E74000000000004000000820000008200000082000000820000000100000004000000000000006172670000000000030000000000000000000000000000008200000082000000000003030400000045000000A50000005C4000001E008000010000000406000000000000007072696E740000000000040000008200000082000000820000008200000001000000040000000000000061726700000000000300000000000000000000000000000083000000830000000001000203000000640000005E0000011E008000000000000100000000000000000000008300000083000000000100030500000045000000854000004C8080005E0000011E0080000200000004020000000000000061000402000000000000006200000000000500000083000000830000008300000083000000830000000200000003000000000000005F4D00000000000400000004000000000000005F444B00030000000400000000000000030000008300000083000000830000000100000003000000000000005F4D000000000002000000000000000701000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000002000000020000000200000002000000030000000400000004000000040000000E0000000E00000004000000040000000E0000000E000000020000000E000000110000001100000011000000110000001300000013000000130000001700000017000000170000001F0000001F0000002000000017000000230000002300000023000000230000002C0000002C000000370000003700000039000000390000003900000039000000390000003D0000003D0000003D0000003D0000003F0000003F0000003F0000003F0000003F000000430000004300000043000000430000004500000046000000470000004B0000004B0000004B0000004B0000004B0000004C0000004C0000004C0000004F0000004F0000004F0000004F0000004F000000500000005000000050000000540000005400000054000000550000005500000055000000550000005600000056000000560000005600000056000000560000005700000057000000570000005700000058000000580000005800000058000000590000005A0000005C0000005C0000005C0000005C0000005C0000005C0000005C0000006100000062000000630000006400000067000000670000006700000067000000670000006800000068000000680000006800000068000000690000006C0000006C0000006E0000006E0000006E0000006E0000006E0000006E0000006E0000007000000070000000700000007000000070000000700000007000000070000000700000007000000071000000710000007100000071000000710000007100000071000000710000007100000077000000770000007700000077000000770000007700000077000000790000007900000079000000790000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007F0000007F0000007F0000007F0000007F0000007F0000007F000000800000008000000080000000800000008000000080000000810000008100000081000000810000008100000081000000810000008100000081000000810000008100000081000000810000008100000081000000820000008200000082000000820000008200000082000000820000008200000082000000820000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000830000008300000083000000230000000B00000000000000616E74695F637261636B001B00000006010000100000000000000028666F722067656E657261746F7229001E0000002B0000000C0000000000000028666F7220737461746529001E0000002B0000000E0000000000000028666F7220636F6E74726F6C29001E0000002B000000020000000000000069001F00000029000000020000000000000076001F0000002900000004000000000000006F6C640020000000280000000A0000000000000077686974656C697374003D000000060100000E00000000000000697357686974656C6973746564003F000000060100000B00000000000000636865636B4C696E6B730041000000060100000B000000000000006F6C64487474704765740046000000060100000C000000000000006F6C6448747470506F7374004F00000006010000070000000000000078317831783100560000000601000003000000000000005F4C0069000000F900000003000000000000005F4E006D000000F900000003000000000000005F480073000000F900000003000000000000005F490077000000F900000003000000000000005F50007B000000F900000003000000000000005F58007C000000F900000003000000000000005F46007D000000F9000000040000000000000049575F007F000000F900000003000000000000005F300085000000F900000003000000000000005F310086000000F900000003000000000000005F320087000000F900000003000000000000005F330088000000F900000003000000000000005F4D008D000000F900000003000000000000005F430092000000F900000003000000000000005F4B0093000000F90000000C000000000000007849584978497849584978009D000000AD000000040000000000000075697300A1000000AD000000100000000000000028666F722067656E657261746F722900D7000000E30000000C0000000000000028666F722073746174652900D7000000E30000000E0000000000000028666F7220636F6E74726F6C2900D7000000E300000002000000000000006B00D8000000E100000002000000000000007600D8000000E100000000000000",(getfenv or function()return(_ENV)or(_G)end)())()
-->
