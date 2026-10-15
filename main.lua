end;
local K,Y,D=_[2]:GetService("Players").LocalPlayer,rawget(getgenv and(getgenv())or _G,h[2]),rawget(getgenv and(getgenv())or _G,h[3]);
if K and Y and not D then
    local w=tostring(Y):lower():gsub(h[4],h[5]):gsub(h[6],h[5]);
    if K.Name:lower()==w or K.DisplayName:lower()==w then
        warn(h[7]..h[8]);
        return;
    end;
end;
if not _[2]:IsLoaded()then
    _[2].Loaded:Wait();
end;
local w=_[2].Players.LocalPlayer;
if Script~=h[9]then
    _[2].Players.LocalPlayer:Kick(h[10]);
    return;
end;
Y=tostring(Owner or h[5]):gsub(h[4],h[5]):gsub(h[6],h[5]);
local Q;
if Y~=h[5]then
    K=Y:lower();
    for W,W in ipairs(_[2].Players:GetPlayers())do
        if W.Name:lower()==K or W.DisplayName:lower()==K then
            Q=W;
            break;
        end;
    end;
end;
if Q and _[2].Players.LocalPlayer==Q then
    warn(h[11]..Q.Name..h[12]..h[13]);
    return;
end;
if Y~=h[5]and(_[2].Players.LocalPlayer.Name:lower()==Y:lower()or _[2].Players.LocalPlayer.DisplayName:lower()==Y:lower())then
    warn(h[14]);
    return;
end;
if _[2]:GetService(h[15]):FindFirstChild(h[16])then
    return;
end;
if not Q then
    warn(h[17]..Y..h[18]);
    return;
end;
Owner=Q.Name;
if getgenv then
    pcall(
    function()getgenv().Owner=Q.Name;
    end);
end;
marker=Instance.new(h[19]);
marker.Name=h[16];
marker.Parent=_[2]:GetService(h[15]);
local Q=_[2]:GetService("Players");
local W=Q.LocalPlayer;
_[2]:GetService(h[20]);
local O,q={
    [W.Name]=W.Name
}
,Q.LocalPlayer;
if not(q.Character)then
    q.CharacterAdded:Wait();
end;
local p,s,Z=1,{
    rifle={
        toolName=h[21],shopName=h[22]
    }
    ,aug={
        toolName=h[23],shopName=h[24]
    }
    ,flintlock={
        toolName=h[25],shopName=h[26]
    }
    ,lmg={
        toolName=h[27],shopName=h[28]
    }
    ,db={
        toolName=h[29],shopName=h[30]
    }
    ,flamethrower={
        toolName=h[31],shopName=h[31]
    }
}
,_[2]:GetService("RunService");
if DisableRendering then
    Z:Set3dRenderingEnabled(false);
end;
_[2]:GetService("Lighting").GlobalShadows=false;
for B,B in pairs(workspace:GetDescendants())do
    if B:IsA(h[34])or(B:IsA(h[35]))then
        B.Enabled=false;
    end;
end;
workspace.StreamingEnabled=true;
getgenv().enabled=false;
getgenv().enabled1=false;
local B,F,L,T=11,4,math.random()*3.141592653589793*2;
local S,l,J,X,x,c,n,o,P,t,e,a,H,b,j=false,false,false,false,false,{
}
,1,true,true,false,false,false,false,false;
local G,N,E,r,k,f,d=0,false,false,false,false,false;
local I=false;
Q=_[2]:GetService("Players");
Z=_[2]:GetService("RunService");
w=_[2].Players.LocalPlayer;
D=_[2].Players.LocalPlayer.Character;
W=Q.LocalPlayer;
local D,g,A=_[2]:GetService(h[36]),_[2]:GetService("Workspace"),workspace.CurrentCamera;
pcall(
function()return A.CFrame:ToOrientation();
end);
getgenv().whitelist={
}
;
getgenv().sentryprotected={
}
;
getgenv().sentryStomp=false;
getgenv().sentrywhitelisted={
}
;
getgenv().protectedwhitelist={
}
;
getgenv().protectedwhitelist[Owner]=true;
getgenv().auraHoldUntil=0;
getgenv().auraCommitAt=0;
getgenv().godmodePauseUntil=0;
getgenv().antiSeatOffUntil=0;
getgenv().godmodeActive=false;
getgenv().godmodeOn=false;
getgenv().godmodeReArming=false;
getgenv().downonly=false;
local function A(z)return z and(getgenv().whitelist[z.Name]or getgenv().protectedwhitelist[z.Name]);
end;
Y,K=Vector3.new(87240,29628,-482290),Instance.new("Part");
K.Name=h[39];
K.Anchored=true;
K.CanCollide=true;
K.Transparency=1;
K.Size=Vector3.new(30,10,30);
K.Position=Y;
K.Parent=workspace;
local z=Instance.new("Part");
z.Name=h[40];
z.Anchored=true;
z.CanCollide=true;
z.Transparency=1;
z.Size=Vector3.new(32,10,1);
z.Position=Y+Vector3.new(0,5,15.5);
z.Parent=workspace;
z=Instance.new("Part");
z.Name=h[41];
z.Anchored=true;
z.CanCollide=true;
z.Transparency=1;
z.Size=Vector3.new(32,10,1);
z.Position=Y+Vector3.new(0,5,-15.5);
z.Parent=workspace;
z=Instance.new("Part");
z.Name=h[42];
z.Anchored=true;
z.CanCollide=true;
z.Transparency=1;
z.Size=Vector3.new(1,10,30);
z.Position=Y+Vector3.new(-15.5,5,0);
z.Parent=workspace;
z=Instance.new("Part");
z.Name=h[43];
z.Anchored=true;
z.CanCollide=true;
z.Transparency=1;
z.Size=Vector3.new(1,10,30);
z.Position=Y+Vector3.new(15.5,5,0);
z.Parent=workspace;
z=Instance.new("Part");
z.Name=h[44];
z.Anchored=true;
z.CanCollide=true;
z.Transparency=1;
z.Size=Vector3.new(32,1,32);
z.Position=Y+Vector3.new(0,10.5,0);
z.Parent=workspace;
Q=_[2]:GetService("Players");
W=Q.LocalPlayer;
local z,u,v=Vector3.new(20,10,20),K.Position,20;
function getRandomPositionInZone()local M=z/2;
    local m,V,R=u.X+math.random()*z.X-M.X,u.Z+math.random()*z.Z-M.Z,u.Y+M.Y+3;
    return Vector3.new(m,R,V);
end;
function teleportPlayerRandomly()local z=W.Character;
    if not z then
        return;
    end;
    local M=z:FindFirstChild("HumanoidRootPart");
    if not M then
        return;
    end;
    M.Velocity=Vector3.new(0.0,0.0,0.0);
    M.RotVelocity=Vector3.new(0.0,0.0,0.0);
    M.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
    M.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
    z=getRandomPositionInZone();
    M.CFrame=CFrame.new(z);
    M.Velocity=Vector3.new(0.0,0.0,0.0);
    M.RotVelocity=Vector3.new(0.0,0.0,0.0);
    M.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
    M.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
end;
function _posSafe(z)if not z then
        return false;
    end;
    if z~=z then
        return false;
    end;
    return math.abs(z.X)<50000 and math.abs(z.Y)<50000 and math.abs(z.Z)<50000;
end;
function isPlayerNearPosition(z,M,m)local V=z.Character;
    if not V then
        return false;
    end;
    z=V:FindFirstChild("HumanoidRootPart");
    if not z then
        return false;
    end;
    return(z.Position-M).Magnitude<=m;
end;
function checkWhitelistNearPosition()for z,z in pairs(Q:GetPlayers())do
        if isPlayerNearPosition(z,u,v)then
            if not getgenv().whitelist[z.Name]then
                getgenv().whitelist[z.Name]=true;
            end;
        end;
    end;
end;
local z;
local u=false;
getgenv().downonly=false;
local v,M,m,V=false,false,false;
local R,y,i,U,C,_L,hL=h[46],false,false,false,h[47],false,{
}
;
do
    local KL,YL,DL,wL=false,false;
    hL.bagkillWasFlame=false;
    hL.BUY_BUDGET=8;
    hL.bagTries=0;
    hL.bagTryAt=0;
    hL.bagMaxTries=3;
    hL.bagTryGap=0.5;
    hL.meleeMoveEvery=0.4;
    hL.meleeDist=3;
    hL.meleeAngle=0;
    hL.meleeAt=0;
    hL.meleeCFrame=
    function(QL)local WL=os.clock();
        if WL-(hL.meleeAt or 0)>=(hL.meleeMoveEvery or 0.4)then
            hL.meleeAt=WL;
            hL.meleeAngle=((hL.meleeAngle or 0)+math.random(1,3)*90)%360;
        end;
        return QL.CFrame*CFrame.Angles(0,math.rad(hL.meleeAngle or 0),0)*CFrame.new(0,0,hL.meleeDist or 3);
    end;
    hL.asBurst=5;
    hL.asGap=0.02;
    hL.asDone=nil;
    hL.bagBoughtAt=0;
    hL.bagBuyDelay=0.5;
    hL.bagEquippedAt=0;
    hL.bagEquipDelay=0.2;
    hL.bagPosAt=0;
    hL.bagPosDelay=2.5;
    hL.bagLastClick=0;
    hL.bagClickDelay=0.35;
    hL.bagRange=9;
    hL.bagTgtLastPos=nil;
    hL.bagTgtMove=0;
    hL.bagStillMove=3;
    hL.bagJumpMaxWait=5;
    hL.bagFFSeen=false;
    hL.bagResetTimers=
    function()hL.bagFFSeen=false;
        hL.bagEquippedAt=0;
        hL.bagPosAt=0;
        hL.bagLastClick=0;
        hL.bagTgtLastPos=nil;
        hL.bagTgtMove=0;
    end;
    hL.watchRmb=
    function(QL)if QL==DL then
            return;
        end;
        if wL then
            pcall(
            function()wL:Disconnect();
            end);
        end;
        DL,wL=QL,nil;
        if QL then
            wL=QL.Deactivated:Connect(
            function()YL=false;
            end);
        end;
    end;
    local DL,wL,QL,WL,OL,qL,pL,sL,ZL=Color3.fromRGB(255,255,255),6,3,2,{
    }
    ,false;
    local BL=false;
    local function FL()if ZL then
            return true;
        end;
        return pcall(
        function()local LL=getrawmetatable(_[2]);
            local TL,SL=LL.__newindex,{
            }
            ;
            for lL,JL in pairs(LL)do
                if lL~=h[48]then
                    SL[lL]=JL;
                end;
            end;
            SL.__newindex=newcclosure(
            function(lL,JL,XL)if not checkcaller()and JL==h[49]then
                    return;
                end;
                return TL(lL,JL,XL);
            end);
            sL,ZL=LL,SL;
        end)and ZL~=nil;
    end;
    local function LL()local TL=_[2]:GetService("Players").LocalPlayer:FindFirstChildOfClass(h[50]);
        local SL=TL and(TL:WaitForChild(h[51],5));
        TL=SL and(SL:WaitForChild(h[52],5));
        if not TL then
            return;
        end;
        pL=TL;
        if FL()then
            pcall(setrawmetatable,pL,ZL);
        end;
        pcall(
        function()pL.Visible=false;
        end);
    end;
    local function ZL()if not pL then
            return;
        end;
        if sL then
            pcall(setrawmetatable,pL,sL);
        end;
        pcall(
        function()local sL=_[2]:GetService("Players").LocalPlayer.Character;
            pL.Visible=sL and sL:FindFirstChildOfClass("Tool")~=nil or false;
            pL.Rotation=0;
        end);
        pL=nil;
    end;
    local function pL(sL,FL)local TL=Drawing.new(h[54]);
        TL.Size=Vector2.new(sL,FL);
        TL.Filled=true;
        TL.Thickness=1;
        TL.Color=DL;
        TL.Visible=false;
        return TL;
    end;
    local function sL()for FL=#OL,1,-1 do
            pcall(
            function()OL[FL]:Remove();
            end);
            OL[FL]=nil;
        end;
    end;
    hL.setCrosshair=
    function(FL)BL=FL and true or false;
    end;
    if Drawing and getrawmetatable and setrawmetatable and newcclosure and checkcaller then
        _[2]:GetService("Players").LocalPlayer.CharacterAdded:Connect(
        function()task.wait(1);
            if qL then
                LL();
            end;
        end);
        _[2]:GetService("RunService").RenderStepped:Connect(
        function()if not BL then
                if qL then
                    qL=false;
                    ZL();
                    sL();
                end;
                return;
            end;
            if not qL then
                qL=true;
                LL();
                OL={
                    pL(WL+2,WL+2),pL(WL,wL),pL(wL,WL),pL(wL,WL),pL(WL,wL)
                }
                ;
            end;
            local qL,pL=_[2]:GetService(h[20]):GetMouseLocation(),QL+wL;
            OL[1].Size=Vector2.new(WL+2,WL+2);
            OL[1].Position=qL-Vector2.new((WL+2)/2,(WL+2)/2);
            OL[2].Size=Vector2.new(WL,wL);
            OL[2].Position=qL+Vector2.new(-WL/2,QL);
            OL[3].Size=Vector2.new(wL,WL);
            OL[3].Position=qL+Vector2.new(-pL,-WL/2);
            OL[4].Size=Vector2.new(wL,WL);
            OL[4].Position=qL+Vector2.new(QL,-WL/2);
            OL[5].Size=Vector2.new(WL,wL);
            OL[5].Position=qL+Vector2.new(-WL/2,-pL);
            for wL,wL in ipairs(OL)do
                wL.Color=DL;
                wL.Visible=true;
            end;
        end);
    end;
    hL.setRmb=
    function(DL)if DL then
            if KL and YL then
                return;
            end;
            KL,YL=true,true;
            pcall(
            function()if mouse2press then
                    mouse2press();
                elseif mouse2down then
                    mouse2down();
                end;
            end);
        elseif KL then
            KL,YL=false,false;
            pcall(
            function()if mouse2release then
                    mouse2release();
                elseif mouse2up then
                    mouse2up();
                end;
            end);
        end;
    end;
end;
local KL,YL,DL,wL=false,false,false,true;
Q=_[2]:GetService("Players");
w=Q.LocalPlayer;
local QL,WL,OL,qL=true,0,3;
Q=_[2]:GetService("Players");
w=Q.LocalPlayer;
local pL=(w.Character or(w.CharacterAdded:Wait())):WaitForChild("HumanoidRootPart");
task.spawn(
function()while true do
        if QL and not V and not getgenv().godmodeActive and not(S or l or J)then
            local sL,ZL=math.random()*3.141592653589793*2,720000+math.random()*240000;
            pL.CFrame=CFrame.new(math.cos(sL)*ZL,300000+math.random()*120000,math.sin(sL)*ZL);
        end;
        task.wait(0.1);
    end;
end);
w.CharacterAdded:Connect(
function(sL)pL=sL:WaitForChild("HumanoidRootPart");
    task.spawn(
    function()task.wait(1);
        wL=true;
    end);
end);
g.FallenPartsDestroyHeight=-1000000;
pcall(
function()loadstring(_[2]:HttpGet(h[55]))();
end);
local sL,ZL=false,_[2]:GetService(h[56]);
local BL=ZL.TextChannels:FindFirstChild(h[57]);
ZL.ChatWindowConfiguration.Enabled=true;
function sendMessage(FL)if BL and FL then
        pcall(
        function()BL:SendAsync(FL);
        end);
    end;
end;
function startFollowingTarget(BL)z=_[2].Players:FindFirstChild(BL);
    if not z then
        return;
    end;
end;
function reloadTool()local BL=_[2].Players.LocalPlayer.Character;
    if BL then
        for FL,FL in ipairs(BL:GetChildren())do
            if FL:IsA("Tool")and(FL:FindFirstChild(h[58]))then
                D.MainEvent:FireServer(h[59],FL);
            end;
        end;
    end;
end;
function resetstate()T,u,v,M=nil,false,false,false;
    getgenv().downonly=false;
    m,QL,N,y,i,U,KL,YL,DL,V=false,false,false,false,false,false,false,false,false,nil;
end;
local function BL()local FL=KL or YL;
    if FL then
        T=nil;
    end;
end;
function handleFlameCommand(FL,LL)local TL=tick();
    if TL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(TL-WL),
        function()qL=nil;
            handleFlameCommand(FL,LL);
        end);
        return;
    end;
    WL=TL;
    FL=FL:lower();
    if LL then
        LL=LL:lower();
    end;
    TL=Q.LocalPlayer;
    if not TL then
        return;
    end;
    for SL,lL in pairs(O)do
        if TL.Name:lower()==lL:lower()then
            if LL and not SL:lower():find(LL,1,true)then
                return;
            end;
            reloadTool();
            resetstate();
            _L=true;
            for LL,LL in ipairs(Q:GetPlayers())do
                local TL,SL=LL.Name:lower(),LL.DisplayName:lower();
                if TL:find(FL,1,true)or(SL:find(FL,1,true))then
                    T=LL;
                    return;
                end;
            end;
        end;
    end;
end;
autobuyarmor=false;
buyingActive=false;
selectedarmor=h[60];
local function FL()local LL=w.Character;
    if not LL or buyingActive or S or not autobuyarmor then
        return;
    end;
    local TL=LL:FindFirstChild("BodyEffects");
    local SL=TL and(TL:FindFirstChild(h[62]));
    if SL and SL.Value<=100 then
        TL=workspace:FindFirstChild(h[63])and(workspace.Ignored:FindFirstChild(h[64]));
        if not TL then
            return;
        end;
        local SL=TL:FindFirstChild(selectedarmor);
        if SL and(SL:FindFirstChild("Humanoid"))then
            local TL,lL=SL:FindFirstChildOfClass(h[66]),LL:FindFirstChild("HumanoidRootPart");
            if TL and lL then
                buyingActive=true;
                S,QL=true,false;
                lL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                lL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                lL.CFrame=SL.Head.CFrame;
                task.wait(0.3);
                fireclickdetector(TL);
                task.wait(0.3);
                QL=true;
                buyingActive=false;
                S=false;
            end;
        end;
    end;
end;
task.spawn(
function()local LL=_[2]:GetService("RunService");
    while true do
        LL.Heartbeat:Wait();
        if autobuyarmor then
            local LL=w.Character;
            if LL and(LL:FindFirstChild("HumanoidRootPart"))then
                pcall(FL);
            end;
        end;
    end;
end);
local FL,LL,TL=false;
local SL,lL=false;
local JL,XL=0,0;
task.spawn(
function()while task.wait()do
        if FL and LL then
            local xL=LL.Character;
            local cL,nL=xL and(xL:FindFirstChild("HumanoidRootPart")),q.Character;
            local oL,PL,tL=nL and(nL:FindFirstChild("HumanoidRootPart")),false,not xL or not cL;
            if tL then
                PL=true;
            else
                nL=xL:FindFirstChild("BodyEffects");
                local xL,eL,aL=nL and(nL:FindFirstChild(h[67]))and nL[h[67]].Value,cL.Position.Y<-100,tick()-JL>=5;
                PL=if xL or eL or aL then
                true
                else
                PL;
            end;
            if PL then
                FL,X,QL=false,false,true;
                if oL and TL then
                    oL.CFrame=TL;
                    TL=nil;
                end;
                if not SL and getgenv().godmodeOn and handleFixCommand then
                    task.spawn(
                    function()pcall(handleFixCommand);
                    end);
                end;
                if SL and lL then
                    LL=nil;
                    task.spawn(
                    function()local xL=lL;
                        while SL and xL and xL.Parent do
                            local nL=xL.Character;
                            if nL then
                                local PL=nL:FindFirstChild("BodyEffects");
                                local eL=PL and(PL:FindFirstChild(h[67]))and PL[h[67]].Value;
                                if nL:FindFirstChild("HumanoidRootPart")and not eL then
                                    TL,LL,FL=nil,xL,true;
                                    JL,QL,X=tick(),false,true;
                                    return;
                                end;
                            end;
                            task.wait(0.5);
                        end;
                        QL,X=true,false;
                    end);
                else
                    LL=nil;
                end;
            elseif oL and cL then
                tL=TL;
                if not tL then
                    TL=oL.CFrame;
                end;
                pcall(
                function()XL=XL%6+1;
                    local xL=if XL==1 then
                    (Vector3.new(0,0,0))
                    else
                    if XL==2 then
                    (Vector3.new(0,1.5,0))
                    else
                    if XL==3 then
                    (Vector3.new(1.5,0,0))
                    else
                    if XL==4 then
                    (Vector3.new(-1.5,0,0))
                    else
                    if XL==5 then
                    (Vector3.new(0,0,1.5))
                    else
                    (Vector3.new(0,0,-1.5));
                    if not oL.CanCollide then
                        oL.CanCollide=true;
                    end;
                    if oL.Anchored then
                        oL.Anchored=false;
                    end;
                    oL.CFrame=CFrame.new(cL.Position+xL);
                end);
            end;
        end;
    end;
end);
Z.Heartbeat:Connect(
function()local XL=q.Character;
    if not XL then
        return;
    end;
    local xL=XL:FindFirstChild("HumanoidRootPart");
    if not xL then
        return;
    end;
    if FL then
        local XL,cL=xL.AssemblyLinearVelocity,xL.AssemblyAngularVelocity;
        task.spawn(
        function()pcall(
            function()xL.AssemblyLinearVelocity=Vector3.new(99999999,99999999,99999999);
                xL.AssemblyAngularVelocity=Vector3.new(99999999,99999999,99999999);
                Z.RenderStepped:Wait();
                if xL.Parent then
                    xL.AssemblyLinearVelocity=XL;
                    xL.AssemblyAngularVelocity=cL;
                end;
            end);
        end);
    end;
end);
function stopFling()local XL=FL or SL;
    FL,LL,SL,lL,X,QL=false,nil,false,nil,false,true;
    if XL and getgenv().godmodeOn and handleFixCommand then
        task.spawn(
        function()pcall(handleFixCommand);
        end);
    end;
    XL=q.Character;
    local xL=XL and(XL:FindFirstChild("HumanoidRootPart"));
    if xL then
        xL.Velocity=Vector3.new(0.0,0.0,0.0);
        xL.RotVelocity=Vector3.new(0.0,0.0,0.0);
        xL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
        xL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
        if TL then
            xL.CFrame=TL;
        end;
        xL.Velocity=Vector3.new(0.0,0.0,0.0);
        xL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
    end;
    TL=nil;
end;
function handleFlingCommand(TL)TL=TL:lower();
    stopFling();
    if getgenv().godmodeOn then
        local XL=TL;
        if setGodmode then
            setGodmode(false);
        end;
        task.spawn(
        function()if handleFixCommand then
                pcall(handleFixCommand);
            end;
            local xL=os.clock()+15;
            repeat
                local cL;
                task.wait(0.2);
                local nL=_[2].Players.LocalPlayer.Character;
                local oL=nL and(nL:FindFirstChildOfClass("Humanoid"));
                cL=oL and(nL and(nL:FindFirstChild("HumanoidRootPart")))and oL.Health>0;
            until cL or os.clock()>xL;
            task.wait(0.5);
            handleFlingCommand(XL);
            xL=os.clock()+5;
            repeat
                task.wait(0.1);
            until FL or SL or os.clock()>xL;
            repeat
                task.wait(0.25);
            until not(FL or SL);
            task.wait(1);
            if setGodmode then
                setGodmode(true);
            end;
        end);
        return;
    end;
    for XL,XL in ipairs(Q:GetPlayers())do
        local xL,cL=XL.Name:lower(),XL.DisplayName:lower();
        if xL:find(TL,1,true)or(cL:find(TL,1,true))then
            LL,FL=XL,true;
            JL,SL,lL,QL,X=tick(),false,nil,false,true;
            return;
        end;
    end;
end;
function handleLoopFlingCommand(TL)TL=TL:lower();
    stopFling();
    if getgenv().godmodeOn then
        local XL=TL;
        if setGodmode then
            setGodmode(false);
        end;
        task.spawn(
        function()if handleFixCommand then
                pcall(handleFixCommand);
            end;
            local xL=os.clock()+15;
            repeat
                local cL;
                task.wait(0.2);
                local nL=_[2].Players.LocalPlayer.Character;
                local oL=nL and(nL:FindFirstChildOfClass("Humanoid"));
                cL=oL and(nL and(nL:FindFirstChild("HumanoidRootPart")))and oL.Health>0;
            until cL or os.clock()>xL;
            task.wait(0.5);
            handleLoopFlingCommand(XL);
            xL=os.clock()+5;
            repeat
                task.wait(0.1);
            until FL or SL or os.clock()>xL;
            repeat
                task.wait(0.25);
            until not(FL or SL);
            task.wait(1);
            if setGodmode then
                setGodmode(true);
            end;
        end);
        return;
    end;
    for XL,XL in ipairs(Q:GetPlayers())do
        local xL,cL=XL.Name:lower(),XL.DisplayName:lower();
        if xL:find(TL,1,true)or(cL:find(TL,1,true))then
            LL,FL=XL,true;
            JL,SL,lL,QL,X=tick(),true,XL,false,true;
            return;
        end;
    end;
end;
function handleBringCommand(TL,lL,JL)local XL=tick();
    if XL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(XL-WL),
        function()qL=nil;
            handleBringCommand(TL,lL,JL);
        end);
        return;
    end;
    WL,d=XL,JL;
    TL=TL:lower();
    if lL then
        lL=lL:lower();
    end;
    XL=Q.LocalPlayer;
    if not XL then
        return;
    end;
    for JL,xL in pairs(O)do
        if XL.Name:lower()==xL:lower()then
            if lL and not JL:lower():find(lL,1,true)then
                return;
            end;
            reloadTool();
            resetstate();
            v=true;
            for lL,lL in ipairs(Q:GetPlayers())do
                local JL,XL=lL.Name:lower(),lL.DisplayName:lower();
                if JL:find(TL,1,true)or(XL:find(TL,1,true))then
                    T=lL;
                    return;
                end;
            end;
        end;
    end;
end;
local TL,lL;
function handleTakeCommand(JL,XL)JL,XL,TL,lL=JL:lower(),XL and(XL:lower())or nil,nil,nil;
    for xL,cL in ipairs(_[2].Players:GetPlayers())do
        local nL,oL=cL.Name:lower(),cL.DisplayName:lower();
        xL=nL:find(JL,1,true)or(oL:find(JL,1,true));
        if xL then
            TL=cL;
        end;
        xL=XL and(nL:find(XL,1,true)or(oL:find(XL,1,true)));
        if xL then
            lL=cL;
        end;
        if TL and(not XL or lL)then
            break;
        end;
    end;
    if TL and lL then
        reloadTool();
        U,u,v=true,false,false;
        getgenv().downonly=false;
        m,QL,M,V,N,y=false,false,false,nil,false,false;
    end;
end;
function handleStompCommand(JL,XL)local xL=tick();
    if xL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(xL-WL),
        function()qL=nil;
            handleStompCommand(JL,XL);
        end);
        return;
    end;
    WL=xL;
    JL=JL:lower();
    if XL then
        XL=XL:lower();
    end;
    xL=Q.LocalPlayer;
    if not xL then
        return;
    end;
    for cL,nL in pairs(O)do
        if xL.Name:lower()==nL:lower()then
            if XL and not cL:lower():find(XL,1,true)then
                return;
            end;
            reloadTool();
            T,u,v,M=nil,true,false,false;
            getgenv().downonly=false;
            m,QL,V,N,U=false,false,nil,false,false;
            for XL,XL in ipairs(Q:GetPlayers())do
                local xL,cL=XL.Name:lower(),XL.DisplayName:lower();
                if xL:find(JL,1,true)or(cL:find(JL,1,true))then
                    T=XL;
                    return;
                end;
            end;
        end;
    end;
end;
global=global or{
    vars={
    }
    ,teleporting={
    }
    ,loops={
    }
}
;
local JL=false;
function tpwheels()local XL=_[2]:GetService("Workspace").OldVehicles:FindFirstChild(W.Name..h[69]);
    if not XL then
        return;
    end;
    local xL=XL:FindFirstChild(h[70]);
    if not xL then
        return;
    end;
    local cL,nL,oL,PL,tL=xL.Position,XL:FindFirstChild(h[71]),XL:FindFirstChild(h[72]),XL:FindFirstChild(h[73]),XL:FindFirstChild(h[74]);
    if nL then
        nL.CFrame=CFrame.new(cL);
    end;
    if oL then
        oL.CFrame=CFrame.new(cL);
    end;
    if PL then
        PL.CFrame=CFrame.new(cL);
    end;
    if tL then
        tL.CFrame=CFrame.new(cL);
    end;
end;
local XL=false;
function teleport(xL,cL)if XL then
        return;
    end;
    XL=true;
    pcall(
    function()local nL=W.Character;
        if not nL or not nL:FindFirstChild("HumanoidRootPart")then
            return;
        end;
        local oL;
        local PL,tL=typeof(global.teleporting.place),h[75];
        if PL==tL then
            oL=(CFrame.new(global.teleporting.place));
        else
            local eL,aL=typeof(global.teleporting.place),h[76];
            if eL==aL then
                oL=global.teleporting.place;
            elseif global.teleporting.place and global.teleporting.place.Character then
                local eL=global.teleporting.place.Character:FindFirstChild("HumanoidRootPart");
                oL=if eL then
                eL.CFrame
                else
                oL;
            end;
        end;
        if xL==h[77]then
            tL=W.Name..h[69];
            PL=g.OldVehicles:FindFirstChild(tL);
            if not PL then
                local xL=g.Ignored.Shop:FindFirstChild(h[78]);
                if xL and(xL:FindFirstChild("Humanoid"))and(xL:FindFirstChild(h[66]))then
                    S,QL=true,false;
                    local eL=0;
                    while eL<6 do
                        nL.HumanoidRootPart.CFrame=xL.Head.CFrame;
                        task.wait(0.05);
                        fireclickdetector(xL.ClickDetector);
                        task.wait(0.15);
                        eL+=0.2;
                        PL=g.OldVehicles:FindFirstChild(tL);
                        if PL then
                            break;
                        end;
                    end;
                    S=false;
                end;
            end;
            if PL and(PL:FindFirstChild("VehicleSeat"))then
                local xL=PL.VehicleSeat;
                if not xL:FindFirstChildWhichIsA(h[80])then
                    local eL=nL:FindFirstChildOfClass("Humanoid");
                    if eL then
                        eL:SetStateEnabled(Enum.HumanoidStateType.Seated,true);
                    end;
                    nL.HumanoidRootPart.CFrame=xL.CFrame;
                    eL=0;
                    while eL<2 do
                        task.wait(0.05);
                        eL+=0.05;
                        if xL:FindFirstChildWhichIsA(h[80])then
                            break;
                        end;
                    end;
                end;
            end;
            task.wait(0.05);
            PL=g.OldVehicles:FindFirstChild(tL);
            if PL and(PL:FindFirstChild("VehicleSeat"))and(PL.VehicleSeat:FindFirstChildWhichIsA(h[80]))then
                local xL=PL:FindFirstChild(h[70]);
                if not xL then
                    return;
                end;
                local nL=cL and cL.Character;
                if not xL:FindFirstChildWhichIsA(h[80])and not JL then
                    if nL and(nL:FindFirstChild("UpperTorso"))then
                        xL.CFrame=nL.UpperTorso.CFrame;
                        pcall(tpwheels);
                    end;
                elseif oL then
                    JL=true;
                    xL.CFrame=oL;
                    pcall(tpwheels);
                    task.delay(0.5,
                    function()JL=false;
                    end);
                end;
            end;
        end;
    end);
    XL=false;
end;
local XL,xL;
function handleGotoCommand(cL,nL)local oL=Q:FindFirstChild(cL);
    if not oL then
        return;
    end;
    nL=nL:lower();
    xL=({
        rifle=CFrame.new(-265,52,-220),armor=CFrame.new(-933,-25,570),lmg=CFrame.new(-618,23,-299),mil=CFrame.new(36,50,-830),military=CFrame.new(36,50,-830),rev=CFrame.new(-639,21,-125),revolver=CFrame.new(-639,21,-125),food=CFrame.new(-327,23,-291),food2=CFrame.new(305,49,-622),roof=CFrame.new(-326,80,-293),bank=CFrame.new(-467,39,-284),school=CFrame.new(-587,68,330),rpg=CFrame.new(113,-27,-268),uphill=CFrame.new(503,48,-591),downhill=CFrame.new(-563,8,-716),warehouse=CFrame.new(445.57,48.29,18.52),casino=CFrame.new(-930.42,22.01,-163.52)
    }
    )[nL];
    if not xL then
        return;
    end;
    if getgenv().godmodeOn then
        local PL=nL;
        xL=nil;
        if setGodmode then
            setGodmode(false);
        end;
        getgenv().antiSeatOffUntil=os.clock()+75;
        getgenv().auraHoldUntil=os.clock()+90;
        task.spawn(
        function()if handleFixCommand then
                pcall(handleFixCommand);
            end;
            local nL=os.clock()+15;
            repeat
                local tL;
                task.wait(0.2);
                local eL=_[2].Players.LocalPlayer.Character;
                local aL=eL and(eL:FindFirstChildOfClass("Humanoid"));
                tL=aL and(eL and(eL:FindFirstChild("HumanoidRootPart")))and aL.Health>0;
            until tL or os.clock()>nL;
            task.wait(0.5);
            handleGotoCommand(cL,PL);
            nL=os.clock()+5;
            repeat
                task.wait(0.1);
            until U or os.clock()>nL;
            nL=os.clock()+45;
            repeat
                task.wait(0.25);
            until not U or os.clock()>nL;
            task.wait(1);
            getgenv().antiSeatOffUntil=0;
            getgenv().auraHoldUntil=0;
            if setGodmode then
                setGodmode(true);
            end;
        end);
        return;
    end;
    XL=oL;
    reloadTool();
    T,u,v=nil,false,false;
    getgenv().downonly=false;
    m,QL,X,M,U,V,N,y=false,false,false,false,true,nil,false,false;
end;
local cL;
function handleSkyCommand(nL)local oL=tick();
    if oL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(oL-WL),
        function()qL=nil;
            handleSkyCommand(nL);
        end);
        return;
    end;
    WL=oL;
    oL=Q:FindFirstChild(nL);
    if not oL then
        return;
    end;
    cL,T=oL,oL;
    reloadTool();
    u,v=false,false;
    getgenv().downonly=false;
    m,QL,M,V,N,y,U=false,false,true,nil,false,false,false;
end;
function handleDownCommand(nL,oL)local PL=tick();
    if PL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(PL-WL),
        function()qL=nil;
            handleDownCommand(nL,oL);
        end);
        return;
    end;
    WL=PL;
    nL=nL:lower();
    if oL then
        oL=oL:lower();
    end;
    PL=Q.LocalPlayer;
    if not PL then
        return;
    end;
    for tL,eL in pairs(O)do
        if PL.Name:lower()==eL:lower()then
            if oL and not tL:lower():find(oL,1,true)then
                return;
            end;
            reloadTool();
            resetstate();
            getgenv().downonly=true;
            for oL,oL in ipairs(Q:GetPlayers())do
                local PL,tL=oL.Name:lower(),oL.DisplayName:lower();
                if PL:find(nL,1,true)or(tL:find(nL,1,true))then
                    T=oL;
                    return;
                end;
            end;
        end;
    end;
end;
function handleFixCommand(nL)nL=nL and(nL:lower());
    local oL=_[2].Players.LocalPlayer;
    if not oL then
        return;
    end;
    for PL,tL in pairs(O)do
        if oL.Name:lower()==tL:lower()then
            if nL and not PL:lower():find(nL,1,true)then
                return;
            end;
            getgenv().enabled=false;
            getgenv().enabled1=false;
            c,T,j={
            }
            ,nil,nil;
            getgenv().sentryStomp=false;
            G,x,S,l,J,QL,V,N,_L,y,U,I=0,false,false,false,false,true,nil,false,false,false,false,false;
            local nL,oL=getgenv().godmodeOn==true,_[2].Players.LocalPlayer.Character;
            if oL and(oL:FindFirstChild("Humanoid"))then
                oL.Humanoid.Health=0;
            end;
            if nL and setGodmode and not getgenv().godmodeReArming then
                getgenv().godmodeReArming=true;
                task.delay(40,
                function()getgenv().godmodeReArming=false;
                end);
                task.spawn(
                function()if setGodmode then
                        setGodmode(false);
                    end;
                    local nL=os.clock()+15;
                    repeat
                        local oL;
                        task.wait(0.2);
                        local PL=_[2].Players.LocalPlayer.Character;
                        local tL=PL and(PL:FindFirstChildOfClass("Humanoid"));
                        oL=tL and(PL and(PL:FindFirstChild("HumanoidRootPart")))and tL.Health>0;
                    until oL or os.clock()>nL;
                    task.wait(1);
                    if setGodmode then
                        setGodmode(true);
                    end;
                    getgenv().godmodeReArming=false;
                end);
            end;
        end;
    end;
end;
function handleSkyCommand(nL)local oL=tick();
    if oL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(oL-WL),
        function()qL=nil;
            handleSkyCommand(nL);
        end);
        return;
    end;
    WL=oL;
    oL=_[2]:GetService("Players"):FindFirstChild(nL);
    if not oL then
        return;
    end;
    cL,T=oL,oL;
    reloadTool();
    u,v=false,false;
    getgenv().downonly=false;
    m,QL,M,V,N,y,U=false,false,true,nil,false,false,false;
end;
function handleOPKillCommand(nL,oL)local PL=tick();
    if PL-WL<OL then
        if qL then
            task.cancel(qL);
            qL=nil;
        end;
        qL=task.delay(OL-(PL-WL),
        function()qL=nil;
            handleOPKillCommand(nL,oL);
        end);
        return;
    end;
    WL=PL;
    nL=nL:lower();
    if oL then
        oL=oL:lower();
    end;
    PL=Q.LocalPlayer;
    if not PL then
        return;
    end;
    for qL,tL in pairs(O)do
        if PL.Name:lower()==tL:lower()then
            if oL and not qL:lower():find(oL,1,true)then
                return;
            end;
            reloadTool();
            T,u,v,M=nil,false,false,false;
            getgenv().downonly=false;
            m,QL,V,N,y,U=true,false,nil,false,false,false;
            for qL,qL in ipairs(Q:GetPlayers())do
                local oL,PL=qL.Name:lower(),qL.DisplayName:lower();
                if oL:find(nL,1,true)or(PL:find(nL,1,true))then
                    T=qL;
                    return;
                end;
            end;
        end;
    end;
end;
local qL={
    [h[82]]=h[83],[h[84]]=h[85],[h[86]]=h[87],[h[88]]=h[89],[h[90]]=h[91]
}
;
w=_[2].Players.LocalPlayer;
local nL,oL,PL=w.Character;
local tL,eL=false,false;
local function aL(HL)HL.BreakJointsOnDeath=false;
    HL.RequiresNeck=false;
end;
function playAnimation(HL)local bL=w.Character;
    if not bL then
        return;
    end;
    local jL=bL:WaitForChild("Humanoid",10);
    if not jL then
        return;
    end;
    aL(jL);
    local GL=jL:WaitForChild("Animator",10);
    if not GL then
        return;
    end;
    if oL then
        oL:Stop();
        oL=nil;
    end;
    local jL=Instance.new("Animation");
    jL.AnimationId=HL;
    HL,bL=pcall(
    function()return GL:LoadAnimation(jL);
    end);
    if not HL or not bL then
        return;
    end;
    bL.Looped=true;
    bL.Priority=Enum.AnimationPriority.Action4;
    bL:Play();
    oL=bL;
end;
function stopDance()tL=false;
    if PL then
        task.cancel(PL);
        PL=nil;
    end;
    if oL then
        oL:Stop();
        oL=nil;
    end;
end;
function startEmoteLoop()if tL then
        return;
    end;
    tL=true;
    PL=task.spawn(
    function()while tL do
            local PL=w.Character;
            if not PL or not PL.Parent then
                task.wait(1);
                continue;
            end;
            PL={
            }
            ;
            for tL,tL in pairs(qL)do
                table.insert(PL,tL);
            end;
            playAnimation(PL[math.random(1,#PL)]);
            task.wait(30);
        end;
    end);
end;
if nL then
    K="Humanoid";
    Y=nL:FindFirstChild(K);
    if Y then
        aL(Y);
    end;
    startEmoteLoop();
end;
w.CharacterAdded:Connect(
function(Y)nL=Y;
    aL((nL:WaitForChild("Humanoid")));
    stopDance();
    startEmoteLoop();
end);
task.spawn(
function()while true do
        if _L and(T or j)then
            stopDance();
        elseif not eL then
            startEmoteLoop();
        end;
        task.wait(0.2);
    end;
end);
function handleTeleportCommand(Y,qL)getgenv().enabled=false;
    c,T,QL={
    }
    ,nil,false;
    V=Q:FindFirstChild(Y);
end;
function handleHideCommand(Y)stopFling();
    Y=Y and(Y:lower());
    local qL=_[2].Players.LocalPlayer;
    if not qL then
        return;
    end;
    for nL,PL in pairs(O)do
        if qL.Name:lower()==PL:lower()then
            if Y and not nL:lower():find(Y,1,true)then
                return;
            end;
            getgenv().enabled=false;
            c,T,QL,V={
            }
            ,nil,true,nil;
            reloadTool();
        end;
    end;
end;
task.spawn(
function()while true do
        if getgenv().enabled and z and w.Character and z.Character and not(S or l or J)then
            local Y,qL=w.Character:FindFirstChild("HumanoidRootPart"),z.Character:FindFirstChild("HumanoidRootPart");
            if Y and qL then
                Y.Velocity=Vector3.new(0.0,0.0,0.0);
                Y.RotVelocity=Vector3.new(0.0,0.0,0.0);
                Y.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                Y.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                L+=B*Z.RenderStepped:Wait();
                local Y,B=math.cos(L)*F,math.sin(L)*F;
                local F=qL.Position+Vector3.new(Y,0,B);
                pL.CFrame=CFrame.new(F,F*2-qL.Position);
            end;
        end;
        task.wait();
    end;
end);
Q=_[2]:GetService("Players");
local Y=_[2].Players.LocalPlayer;
w=_[2].Players.LocalPlayer;
local B,F=w.Character or(w.CharacterAdded:Wait()),"Humanoid";
B:FindFirstChildOfClass(F);
Y.CharacterAdded:Connect(
function(w)B=w;
end);
function teleportToTarget(w)local B=_[2].Players:FindFirstChild(w);
    if B and B.Character and(B.Character:FindFirstChild("HumanoidRootPart"))then
        w=B.Character.HumanoidRootPart.Position;
        if w~=w or math.abs(w.X)>=50000 or math.abs(w.Y)>=50000 or math.abs(w.Z)>=50000 then
            return;
        end;
        local B=_[2].Players.LocalPlayer.Character and(_[2].Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));
        if B then
            T,QL,V=nil,false,nil;
            B.Velocity=Vector3.new(0.0,0.0,0.0);
            B.RotVelocity=Vector3.new(0.0,0.0,0.0);
            B.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
            B.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
            B.CFrame=CFrame.new(w.X+-5,w.Y,w.Z);
            B.Velocity=Vector3.new(0.0,0.0,0.0);
            B.RotVelocity=Vector3.new(0.0,0.0,0.0);
            B.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
            B.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
        end;
    end;
end;
function teleportToPosition(w)local B=_[2].Players.LocalPlayer;
    if not B or not B.Character then
        return;
    end;
    local F=B.Character:FindFirstChild("HumanoidRootPart");
    if not F then
        return;
    end;
    F.Velocity=Vector3.new(0.0,0.0,0.0);
    F.RotVelocity=Vector3.new(0.0,0.0,0.0);
    F.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
    F.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
    F.CFrame=CFrame.new(w);
    F.Velocity=Vector3.new(0.0,0.0,0.0);
    F.RotVelocity=Vector3.new(0.0,0.0,0.0);
    F.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
    F.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
end;
Q=_[2]:GetService("Players");
W=Q.LocalPlayer;
local w,B=W.Character or(W.CharacterAdded:Wait()),_[2]:GetService(h[94]);
W.CharacterAdded:Connect(
function(F)w=F;
    w:WaitForChild("Humanoid");
end);
function equipTool(w)local F=_[2].Players.LocalPlayer.Backpack:FindFirstChild(w);
    F=if not F then
    (_[2].Players.LocalPlayer:FindFirstChild(w))
    else
    F;
    if F then
        _[2].Players.LocalPlayer.Character.Humanoid:EquipTool(F);
    end;
end;
local w,F={
}
,{
}
;
ZL=_[2]:GetService(h[56]);
local L,z=loadstring(_[2]:HttpGet(h[95]))(),loadstring(_[2]:HttpGet(h[96]))();
pcall(
function()local qL={
        L,z
    }
    ;
    for pL,pL in ipairs(qL)do
        for qL,nL in pairs(pL)do
            getgenv().protectedwhitelist[qL]=true;
        end;
    end;
end);
function isAuthorized(qL)return qL.Name==Owner or w[qL.Name];
end;
function isPremium(qL)return L[qL.UserId]==true;
end;
function isBypassPremium(qL)return z[qL.UserId]==true;
end;
function isProtected(qL)return isPremium(qL)or(isBypassPremium(qL));
end;
function removeOldListeners()for qL in pairs(F)do
        F[qL]=nil;
    end;
end;
benxActive=false;
TweenService=_[2]:GetService(h[97]);
function startBenx(qL)if not qL.Character or not qL.Character:FindFirstChild("HumanoidRootPart")then
        return;
    end;
    T,QL=nil,false;
    benxActive=true;
    local pL=TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut);
    task.spawn(
    function()while benxActive do
            local nL,PL=W.Character,qL.Character;
            if nL and(nL:FindFirstChild("HumanoidRootPart"))and PL and(PL:FindFirstChild("HumanoidRootPart"))then
                local qL,tL=nL.HumanoidRootPart,PL.HumanoidRootPart;
                local nL,PL=tL.CFrame*CFrame.new(0,0,-1),tL.CFrame*CFrame.new(0,0,-4);
                tL=TweenService:Create(qL,pL,{
                    CFrame=nL
                }
                );
                tL:Play();
                tL.Completed:Wait();
                nL=TweenService:Create(qL,pL,{
                    CFrame=PL
                }
                );
                nL:Play();
                nL.Completed:Wait();
            end;
            if not benxActive then
                break;
            end;
        end;
    end);
end;
function updateDisplayName(qL)if not qL.Character then
        return;
    end;
    local pL=qL.Character:WaitForChild("Humanoid");
    if pL then
        if isPremium(qL)then
            pL.DisplayName=h[98]..qL.Name;
        elseif isBypassPremium(qL)then
            pL.DisplayName=h[99]..qL.Name;
        end;
    end;
end;
function setupDisplayNameListener(qL)if qL.Character then
        updateDisplayName(qL);
    end;
    qL.CharacterAdded:Connect(
    function()task.wait(0.1);
        updateDisplayName(qL);
    end);
end;
function getOwnerId()local qL,pL=pcall(
    function()return _[2].Players:GetUserIdFromNameAsync(Owner);
    end);
    return qL and pL or nil;
end;
function send_hook(qL)if qL.PacketId==27 then
        local pL=qL.AsBuffer;
        buffer.writeu32(pL,1,4294967295);
        buffer.writeu32(pL,5,4294967295);
        buffer.writeu32(pL,9,4294967295);
        qL:SetData(pL);
    end;
end;
function recv_hook(qL)if qL.PacketId==27 or qL.PacketId==134 then
        qL:Drop();
    end;
end;
local qL,pL,nL=h[100]..W.Name..h[101],h[102]..W.Name..h[101],h[5];
if not pcall(
function()return readfile(qL);
end)then
writefile(qL,h[103]);
else
    pcall(
    function()local PL=readfile(qL);
        if PL and#PL>0 then
            local tL=string.split(PL,h[104]);
            local PL=#tL>=3 and tL[3]~=h[5];
            if PL then
                nL=tL[3];
            end;
        end;
    end);
end;
pcall(
function()writefile(pL,tostring(os.time()));
end);
local function PL(tL,aL,HL)if tL~=h[105]and tL~=h[106]and tL~=h[107]and tL~=h[108]and tL~=h[109]and tL~=h[110]and tL~=h[111]then
        return false;
    end;
    local bL={
    }
    ;
    for jL in aL:gmatch(h[112])do
        table.insert(bL,jL:lower());
    end;
    if#bL<2 then
        return false;
    end;
    task.spawn(
    function()local aL=tL==h[108];
        repeat
            for jL,GL in ipairs(bL)do
                jL=nil;
                for bL,bL in ipairs(Q:GetPlayers())do
                    local NL,EL=bL.Name:lower(),bL.DisplayName:lower();
                    if NL:find(GL,1,true)or(EL:find(GL,1,true))then
                        jL=bL;
                        break;
                    end;
                end;
                if jL and(not isProtected or not isProtected(jL))then
                    if tL==h[108]then
                        GL=tick()+30;
                        while tick()<GL do
                            local bL=jL.Character and(jL.Character:FindFirstChild("BodyEffects"));
                            if not(bL and(bL:FindFirstChild(h[113]))and bL[h[113]].Value)then
                                break;
                            end;
                            task.wait(0.1);
                        end;
                    end;
                    local bL=jL.Name;
                    if tL==h[105]then
                        handleDownCommand(bL);
                    elseif tL==h[106]then
                        handleBringCommand(bL,nil,HL and HL.Name);
                    elseif tL==h[107]then
                        handleStompCommand(bL);
                    elseif tL==h[108]then
                        handleOPKillCommand(bL);
                    elseif tL==h[109]then
                        handleFlingCommand(bL);
                    elseif tL==h[110]then
                        handleLoopFlingCommand(bL);
                    elseif tL==h[111]then
                        handleSkyCommand(bL);
                    end;
                    bL=tick()+OL+1;
                    while tick()<bL do
                        if if tL==h[109]or tL==h[110]then
                        LL==jL and FL
                        else
                        if tL==h[111]then
                        cL==jL and T==jL
                        else
                        T==jL then
                            break;
                        end;
                        task.wait(0.1);
                    end;
                    bL=tick()+(tL==h[111]and 30 or 12);
                    while tick()<bL do
                        local LL=jL.Character;
                        local jL=LL and(LL:FindFirstChild("BodyEffects"));
                        local GL,NL=jL and(jL:FindFirstChild(h[113]))and jL[h[113]].Value,jL and(jL:FindFirstChild(h[67]))and jL[h[67]].Value;
                        if(tL==h[105]or tL==h[108])and GL then
                            break;
                        elseif tL==h[107]and NL then
                            break;
                        elseif tL==h[106]then
                            local jL,GL=HL and HL.Character and(HL.Character:FindFirstChild("HumanoidRootPart")),LL and(LL:FindFirstChild("HumanoidRootPart"));
                            if jL and GL and(GL.Position-jL.Position).Magnitude<=8 then
                                break;
                            end;
                        elseif tL==h[109]or tL==h[110]then
                            if tick()>=bL-8 then
                                break;
                            end;
                        elseif tL==h[111]then
                            if cL==nil then
                                break;
                            end;
                        end;
                        task.wait(0.1);
                    end;
                end;
            end;
            if aL and m then
                task.wait(0.2);
            end;
        until not aL or not m;
    end);
    return true;
end;
local function LL(tL,aL)local HL=aL:lower();
    if isAuthorized and(isAuthorized(tL))or w and w[tL.Name]then
        local bL,jL=HL:match(h[114]);
        if bL and(PL(bL,jL,tL))then
            return;
        end;
        if HL==h[115]then
            getgenv().auraHoldUntil=0;
            resetstate();
            hL.bagkillWasFlame=false;
            KL=true;
            getgenv().enabled=false;
            v,T,QL,X=false,nil,false,false;
        elseif HL==h[116]then
            getgenv().enabled=false;
            KL,YL,T,c,FL,X,QL=false,false,nil,{
            }
            ,false,false,true;
        elseif HL==h[117]then
            getgenv().auraHoldUntil=0;
            resetstate();
            hL.bagkillWasFlame=false;
            YL,T,u,v,M=true,nil,false,false,false;
            getgenv().downonly=false;
            m,y,KL,QL,X=false,false,false,false,true;
        elseif HL==h[118]then
            YL,T,QL,X=false,nil,true,false;
        elseif HL==h[119]then
            C,_L,y,i,DL=h[120],false,false,false,false;
            hL.bagkillWasFlame=false;
            if W.Character then
                for GL,GL in pairs(W.Character:GetChildren())do
                    if GL:IsA("Tool")then
                        GL.Parent=W:FindFirstChild("Backpack");
                    end;
                end;
            end;
        elseif HL==h[122]then
            C,_L,y,i,DL=h[47],false,false,false,false;
            hL.bagkillWasFlame=false;
            if W.Character then
                for GL,GL in pairs(W.Character:GetChildren())do
                    if GL:IsA("Tool")then
                        GL.Parent=W:FindFirstChild("Backpack");
                    end;
                end;
            end;
        elseif HL==h[123]then
            aL=getgenv().MoonSilentAim;
            if aL and aL.report then
                aL.debug=not aL.debug;
                aL.report();
                warn(h[124],aL.debug and h[125]or h[126]);
            else
                warn(h[127]);
            end;
        elseif HL==h[128]then
            C,_L,y,i,DL=h[129],false,false,false,false;
            hL.bagkillWasFlame=false;
            if W.Character then
                for aL,aL in pairs(W.Character:GetChildren())do
                    if aL:IsA("Tool")and aL.Name~=h[130]then
                        aL.Parent=W:FindFirstChild("Backpack");
                    end;
                end;
            end;
        elseif HL==h[131]then
            C,_L,y,i,DL=h[132],false,false,false,false;
            hL.bagkillWasFlame=false;
            if W.Character then
                for aL,aL in pairs(W.Character:GetChildren())do
                    if aL:IsA("Tool")then
                        aL.Parent=W:FindFirstChild("Backpack");
                    end;
                end;
            end;
        elseif HL==h[133]then
            jL=getgenv().MoonGodblock;
            if jL then
                jL.on=true;
                warn(h[134]);
            else
                warn(h[135]);
            end;
        elseif HL==h[136]then
            bL=getgenv().MoonGodblock;
            if bL then
                bL.on=false;
                warn(h[137]);
            end;
        elseif HL==h[138]then
            local aL=getgenv().MoonGodblock;
            if aL then
                aL.debug=not aL.debug;
                warn(h[139],aL.debug and h[125]or h[126],h[140],aL.on);
            else
                warn(h[141]);
            end;
        elseif HL==h[142]then
            T,QL=nil,false;
            getgenv().enabled1=true;
            getgenv().sentryStomp=false;
            G=0;
        elseif HL==h[143]then
            getgenv().enabled1=false;
            getgenv().sentryStomp=false;
            j,G=nil,0;
        elseif HL==h[144]then
            T,QL=nil,false;
            getgenv().enabled1=true;
            getgenv().sentryStomp=true;
            G=0;
        elseif HL==h[145]then
            getgenv().enabled1=false;
            getgenv().sentryStomp=false;
            j,G=nil,0;
        elseif HL==h[146]then
            for aL,bL in pairs(O)do
                getgenv().sentryprotected[aL]=true;
            end;
        elseif HL==h[147]then
            for aL,bL in pairs(O)do
                getgenv().sentryprotected[aL]=nil;
            end;
        elseif HL==h[148]then
            handleFixCommand();
        elseif HL:match(h[149])then
            handleFixCommand((HL:match(h[149])));
        elseif HL==h[150]then
            eL=false;
            startEmoteLoop();
        elseif HL==h[151]then
            eL=true;
            stopDance();
        elseif HL==h[152]then
            handleHideCommand();
        elseif HL:match(h[153])then
            handleHideCommand((HL:match(h[153])));
        elseif HL==h[154]then
            handleTeleportCommand(tL.Name);
        elseif HL:match(h[155])then
            local aL=HL:match(h[155]);
            handleTeleportCommand(tL.Name,aL);
        elseif HL==h[156]then
            teleportToTarget(tL.Name);
        elseif HL==h[157]then
            teleportToTarget(tL.Name);
        elseif HL==h[158]then
            T,QL=nil,false;
            teleportPlayerRandomly();
            task.wait(1);
            checkWhitelistNearPosition();
            task.wait(1);
            QL=true;
        else
            local aL=h[159];
            if HL==aL then
                x=true;
            else
                local aL=h[160];
                if HL==aL then
                    x=false;
                else
                    local aL=h[161];
                    if HL==aL then
                        b=true;
                    else
                        local aL=h[162];
                        if HL==aL then
                            b=false;
                        else
                            local aL=h[163];
                            if HL==aL then
                                o=true;
                            else
                                local aL=h[164];
                                if HL==aL then
                                    o=false;
                                else
                                    local aL=h[165];
                                    if HL==aL then
                                        P=true;
                                    else
                                        local aL=h[166];
                                        if HL==aL then
                                            P=false;
                                        elseif HL==h[167]then
                                            stopFling();
                                            if oL then
                                                oL:Stop();
                                                oL=nil;
                                            end;
                                            lastEmote=nil;
                                        elseif HL==h[168]then
                                            _[2]:Shutdown();
                                        elseif HL==h[169]then
                                            B:TeleportToPlaceInstance(_[2].PlaceId,_[2].JobId,W);
                                        elseif HL:match(h[170])then
                                            sendMessage((HL:match(h[170])));
                                        elseif HL:match(h[171])then
                                            local aL=HL:match(h[171]);
                                            for bL,jL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                getgenv().whitelist[jL.Name]=true;
                                                bL=T;
                                                if bL==jL then
                                                T=nil;
                                                end;
                                                break;
                                                end;
                                            end;
                                        elseif HL:match(h[172])then
                                            local aL=HL:match(h[172]);
                                            for bL,bL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                getgenv().whitelist[bL.Name]=nil;
                                                break;
                                                end;
                                            end;
                                        elseif HL:match(h[173])then
                                            local aL=HL:match(h[173]);
                                            for bL,bL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                getgenv().sentryprotected[bL.Name]=true;
                                                break;
                                                end;
                                            end;
                                        elseif HL:match(h[174])then
                                            local aL=HL:match(h[174]);
                                            for bL,bL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                getgenv().sentryprotected[bL.Name]=nil;
                                                break;
                                                end;
                                            end;
                                        elseif HL:match(h[175])then
                                            local aL={
                                            }
                                            ;
                                            for bL in HL:match(h[175]):gmatch(h[112])do
                                                table.insert(aL,bL:lower());
                                            end;
                                            reloadTool();
                                            resetstate();
                                            T,c,n,E,r,H,y=nil,{
                                            }
                                            ,0,true,false,true,true;
                                            hL.bagTries=0;
                                            hL.bagTryAt=0;
                                            hL.bagResetTimers();
                                            for bL,jL in ipairs(aL)do
                                                for aL,GL in ipairs(Q:GetPlayers())do
                                                aL,bL=GL.Name:lower(),GL.DisplayName:lower();
                                                if aL:find(jL,1,true)or(bL:find(jL,1,true))then
                                                table.insert(c,GL);
                                                break;
                                                end;
                                                end;
                                            end;
                                        elseif HL:match(h[176])then
                                            local aL={
                                            }
                                            ;
                                            for bL in HL:match(h[176]):gmatch(h[112])do
                                                table.insert(aL,bL:lower());
                                            end;
                                            reloadTool();
                                            resetstate();
                                            T,c,n,E,r,H,y=nil,{
                                            }
                                            ,0,true,false,true,true;
                                            hL.bagTries=0;
                                            hL.bagTryAt=0;
                                            hL.bagResetTimers();
                                            i=true;
                                            for bL,jL in ipairs(aL)do
                                                for aL,GL in ipairs(Q:GetPlayers())do
                                                bL,aL=GL.Name:lower(),GL.DisplayName:lower();
                                                if bL:find(jL,1,true)or(aL:find(jL,1,true))then
                                                table.insert(c,GL);
                                                break;
                                                end;
                                                end;
                                            end;
                                        elseif HL:match(h[177])then
                                            local aL={
                                            }
                                            ;
                                            for bL in HL:match(h[177]):gmatch(h[112])do
                                                table.insert(aL,bL:lower());
                                            end;
                                            reloadTool();
                                            resetstate();
                                            hL.bagkillWasFlame=_L;
                                            _L,c,n,E,r,H,y=false,{
                                            }
                                            ,0,true,false,true,true;
                                            hL.bagTries=0;
                                            hL.bagTryAt=0;
                                            hL.bagResetTimers();
                                            i,DL=true,true;
                                            for bL,jL in ipairs(aL)do
                                                for aL,GL in ipairs(Q:GetPlayers())do
                                                bL,aL=GL.Name:lower(),GL.DisplayName:lower();
                                                if bL:find(jL,1,true)or(aL:find(jL,1,true))then
                                                table.insert(c,GL);
                                                break;
                                                end;
                                                end;
                                            end;
                                            if#c>0 then
                                                n=1;
                                                T,E,X,QL=c[n],false,true,false;
                                            end;
                                        elseif HL==h[178]then
                                            reloadTool();
                                            resetstate();
                                            _L=true;
                                            stopDance();
                                            QL,X,T=false,true,nil;
                                            local aL=W:FindFirstChild("Backpack");
                                            local bL=aL and(aL:FindFirstChild(h[31]));
                                            if bL and W.Character then
                                                for jL,jL in pairs(W.Character:GetChildren())do
                                                if jL:IsA("Tool")then
                                                jL.Parent=aL;
                                                end;
                                                end;
                                                bL.Parent=W.Character;
                                            end;
                                        elseif HL:match(h[179])then
                                            local aL={
                                            }
                                            ;
                                            for bL in HL:match(h[179]):gmatch(h[112])do
                                                table.insert(aL,bL:lower());
                                            end;
                                            if not Q.LocalPlayer then
                                                return;
                                            end;
                                            reloadTool();
                                            T,u,v,M=nil,false,false,false;
                                            getgenv().downonly=false;
                                            m,QL,y,i,DL,KL,c,V,E=false,false,false,false,false,false,{
                                            }
                                            ,nil,true;
                                            for bL,jL in ipairs(aL)do
                                                for aL,GL in ipairs(Q:GetPlayers())do
                                                bL,aL=GL.Name:lower(),GL.DisplayName:lower();
                                                if bL:find(jL,1,true)or(aL:find(jL,1,true))then
                                                if isProtected and(isProtected(GL))then
                                                sendMessage(h[180]..GL.Name..h[181]);
                                                else
                                                table.insert(c,GL);
                                                break;
                                                end;
                                                end;
                                                end;
                                            end;
                                        elseif HL:match(h[182])then
                                            local aL,bL=HL:match(h[182]);
                                            for jL,jL in pairs(Q:GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                if isProtected and(isProtected(jL))then
                                                sendMessage(h[180]..jL.Name..h[181]);
                                                break;
                                                end;
                                                handleOPKillCommand(aL,bL);
                                                break;
                                                end;
                                            end;
                                        else
                                            local aL=h[183];
                                            if HL==aL then
                                                R=h[184];
                                            elseif HL:match(h[185])then
                                                local aL,bL,jL=HL:match(h[185]),W.Name:lower(),W.DisplayName:lower();
                                                local GL=bL:find(aL,1,true)or(jL:find(aL,1,true));
                                                if GL then
                                                R=h[184];
                                                end;
                                            else
                                                local aL=h[186];
                                                if HL==aL then
                                                R=h[187];
                                                elseif HL:match(h[188])then
                                                local aL,bL,jL=HL:match(h[188]),W.Name:lower(),W.DisplayName:lower();
                                                local GL=bL:find(aL,1,true)or(jL:find(aL,1,true));
                                                if GL then
                                                R=h[187];
                                                end;
                                                else
                                                local aL=h[189];
                                                if HL==aL then
                                                R=h[46];
                                                elseif HL:match(h[190])then
                                                local aL,bL,jL=HL:match(h[190]),W.Name:lower(),W.DisplayName:lower();
                                                local GL=bL:find(aL,1,true)or(jL:find(aL,1,true));
                                                if GL then
                                                R=h[46];
                                                end;
                                                elseif HL:match(h[191])then
                                                local aL=HL:match(h[191]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleFlingCommand(aL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[192])then
                                                local aL=HL:match(h[192]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleLoopFlingCommand(aL);
                                                break;
                                                end;
                                                end;
                                                elseif HL==h[193]then
                                                autobuyarmor=true;
                                                elseif HL==h[194]then
                                                autobuyarmor=false;
                                                else
                                                local aL=h[195];
                                                if HL==aL then
                                                k=true;
                                                elseif HL==h[196]then
                                                k,I=false,false;
                                                elseif HL:match(h[197])then
                                                local aL=HL:match(h[197]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleOPKillCommand(aL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[198])then
                                                local aL,bL=HL:match(h[198]);
                                                for jL,jL in pairs(Q:GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                if isProtected and(isProtected(jL))then
                                                sendMessage(h[180]..jL.Name..h[181]);
                                                break;
                                                end;
                                                handleStompCommand(aL,bL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[199])then
                                                local aL=HL:match(h[199]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleStompCommand(aL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[200])then
                                                local aL,bL=HL:match(h[200]);
                                                for jL,jL in pairs(Q:GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                if isProtected and(isProtected(jL))then
                                                sendMessage(h[180]..jL.Name..h[181]);
                                                break;
                                                end;
                                                handleBringCommand(aL,bL,tL.Name);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[201])then
                                                local aL=HL:match(h[201]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleBringCommand(aL,nil,tL.Name);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[202])then
                                                local aL,bL=HL:match(h[202]);
                                                for jL,jL in pairs(Q:GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                if isProtected and(isProtected(jL))then
                                                sendMessage(h[180]..jL.Name..h[181]);
                                                break;
                                                end;
                                                handleDownCommand(aL,bL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[203])then
                                                local aL=HL:match(h[203]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleDownCommand(aL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[204])then
                                                local aL,bL=HL:match(h[204]);
                                                for jL,jL in pairs(Q:GetPlayers())do
                                                local GL,NL=jL.Name:lower(),jL.DisplayName:lower();
                                                if GL:find(aL,1,true)or(NL:find(aL,1,true))then
                                                getgenv().antiSeatOffUntil=os.clock()+8;
                                                getgenv().godmodePauseUntil=os.clock()+8;
                                                handleTakeCommand(aL,bL);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[205])then
                                                local aL=HL:match(h[205]);
                                                getgenv().antiSeatOffUntil=os.clock()+8;
                                                getgenv().godmodePauseUntil=os.clock()+8;
                                                handleGotoCommand(tL.Name,aL);
                                                elseif HL:match(h[206])then
                                                local aL=HL:match(h[206]);
                                                for bL,bL in pairs(Q:GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                if isProtected and(isProtected(bL))then
                                                sendMessage(h[180]..bL.Name..h[181]);
                                                break;
                                                end;
                                                handleSkyCommand(bL.Name);
                                                break;
                                                end;
                                                end;
                                                elseif HL:match(h[207])then
                                                if tL.Name~=Owner then
                                                return;
                                                end;
                                                local aL=HL:match(h[207]);
                                                for bL,bL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local jL,GL=bL.Name:lower(),bL.DisplayName:lower();
                                                if jL:find(aL,1,true)or(GL:find(aL,1,true))then
                                                w[bL.Name]=true;
                                                break;
                                                end;
                                                end;
                                                elseif HL==h[208]then
                                                if setGodmode then
                                                setGodmode(true);
                                                end;
                                                elseif HL==h[209]then
                                                if setGodmode then
                                                setGodmode(false);
                                                end;
                                                if handleFixCommand then
                                                handleFixCommand();
                                                end;
                                                elseif HL:match(h[210])then
                                                if tL.Name~=Owner then
                                                return;
                                                end;
                                                local tL=HL:match(h[210]);
                                                for aL,aL in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local HL,bL=aL.Name:lower(),aL.DisplayName:lower();
                                                if HL:find(tL,1,true)or(bL:find(tL,1,true))then
                                                w[aL.Name]=nil;
                                                break;
                                                end;
                                                end;
                                                end;
                                                end;
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end;
function setupChatListener(tL)if not(isAuthorized(tL)or(isPremium(tL))or(isBypassPremium(tL)))then
        return;
    end;
    F[tL.UserId]=
    function(aL)pcall(
        function()local HL=aL.TextSource and aL.TextSource.UserId and(Q:GetPlayerByUserId(aL.TextSource.UserId));
            if not HL then
                local bL,jL,GL=aL.Text or h[5],tL.Name..h[211],tL.DisplayName..h[211];
                HL=if bL:sub(1,#jL):lower()==jL:lower()or bL:sub(1,#GL):lower()==GL:lower()then
                tL
                else
                HL;
            end;
            if not HL or HL~=tL then
                return;
            end;
            HL=aL.Text or h[5];
            local aL=HL:match(h[212])or HL;
            aL=aL:match(h[213])or aL;
            local bL=aL:lower();
            local function jL(GL)local NL=aL:match(h[214]..GL..h[215])or(bL:match(h[214]..GL..h[215]));
                if not NL then
                    return nil;
                end;
                NL=NL:match(h[216])or NL;
                return(NL:match(h[217])or(NL:match(h[218]))or NL):lower();
            end;
            local GL,NL,EL=getOwnerId(),false,false;
            if GL then
                NL,EL=L[GL]==true,z[GL]==true;
            end;
            HL,GL=not NL and not EL,not EL;
            if HL and(isPremium(tL))then
                local L,z=W.Name:lower(),W.DisplayName:lower();
                local function rL(kL)return kL==L or kL==z;
                end;
                local L,z,kL,fL,dL,IL,gL,AL,zL,uL=jL(h[219]),jL(h[220]),jL(h[221]),jL(h[222]),jL(h[223]),jL(h[224]),jL(h[225]),jL(h[226]),jL(h[227]),jL(h[228]);
                if L and(rL(L))then
                    W:Kick(h[229]);
                elseif z and(rL(z))then
                    EL=W.Character;
                    if EL and(EL:FindFirstChild("HumanoidRootPart"))then
                        EL.HumanoidRootPart.Anchored=true;
                    end;
                elseif kL and(rL(kL))then
                    NL=W.Character;
                    if NL and(NL:FindFirstChild("HumanoidRootPart"))then
                        NL.HumanoidRootPart.Anchored=false;
                    end;
                elseif fL and(rL(fL))then
                    local L,z=W.Character,tL.Character;
                    if L and(L:FindFirstChild("HumanoidRootPart"))and z and(z:FindFirstChild("HumanoidRootPart"))then
                        T,QL=nil,false;
                        local kL=L.HumanoidRootPart;
                        kL.Velocity=Vector3.new(0.0,0.0,0.0);
                        kL.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        kL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        kL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                        L.HumanoidRootPart.CFrame=z.HumanoidRootPart.CFrame;
                        kL.Velocity=Vector3.new(0.0,0.0,0.0);
                        kL.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        kL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        kL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                    end;
                elseif dL and(rL(dL))then
                    B:TeleportToPlaceInstance(_[2].PlaceId,_[2].JobId,W);
                elseif IL and(rL(IL))then
                    D.MainEvent:FireServer(h[230],h[231]);
                else
                    local L=gL and(rL(gL));
                    if L then
                        x=true;
                    else
                        local L=AL and(rL(AL));
                        if L then
                            x=false;
                        elseif zL and(rL(zL))then
                            startBenx(tL);
                        elseif uL and(rL(uL))then
                            benxActive=false;
                        else
                            local L=h[165];
                            if bL==L then
                                P=true;
                            else
                                local L=h[166];
                                if bL==L then
                                    P=false;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            if GL and(isBypassPremium(tL))then
                local L,z=W.Name:lower(),W.DisplayName:lower();
                local function rL(kL)return kL==L or kL==z;
                end;
                local L,z,kL,fL,dL,IL,gL,AL,zL,uL,vL,ML,mL,VL,RL,yL=jL(h[232]),jL(h[219]),jL(h[220]),jL(h[221]),jL(h[222]),jL(h[223]),jL(h[233]),jL(h[225]),jL(h[226]),jL(h[234]),jL(h[235]),jL(h[224]),jL(h[227]),jL(h[228]),jL(h[236]),aL:match(h[237]);
                if L and(rL(L))then
                    W:Kick(h[238]);
                elseif z and(rL(z))then
                    W:Kick(h[229]);
                elseif kL and(rL(kL))then
                    EL=W.Character;
                    if EL and(EL:FindFirstChild("HumanoidRootPart"))then
                        EL.HumanoidRootPart.Anchored=true;
                    end;
                elseif fL and(rL(fL))then
                    NL=W.Character;
                    if NL and(NL:FindFirstChild("HumanoidRootPart"))then
                        NL.HumanoidRootPart.Anchored=false;
                    end;
                elseif dL and(rL(dL))then
                    local L,z=W.Character,tL.Character;
                    if L and(L:FindFirstChild("HumanoidRootPart"))and z and(z:FindFirstChild("HumanoidRootPart"))then
                        T,QL=nil,false;
                        HL=L.HumanoidRootPart;
                        HL.Velocity=Vector3.new(0.0,0.0,0.0);
                        HL.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        HL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        HL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                        L.HumanoidRootPart.CFrame=z.HumanoidRootPart.CFrame;
                        HL.Velocity=Vector3.new(0.0,0.0,0.0);
                        HL.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        HL.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        HL.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                    end;
                elseif IL and(rL(IL))then
                    B:TeleportToPlaceInstance(_[2].PlaceId,_[2].JobId,W);
                elseif RL and(rL(RL))and yL then
                    sendMessage(yL);
                elseif gL and(rL(gL))then
                    B:TeleportToPlaceInstance(_[2].PlaceId,_[2].JobId,W);
                else
                    local L=AL and(rL(AL));
                    if L then
                        x=true;
                    else
                        local L=zL and(rL(zL));
                        if L then
                            x=false;
                        elseif uL and(rL(uL))then
                            f=true;
                            task.spawn(
                            function()while f do
                                    local L=_[2].Players.LocalPlayer.Character;
                                    if L and(L:FindFirstChild("Humanoid"))then
                                        L.Humanoid.Health=0;
                                    end;
                                    task.wait(0.2);
                                end;
                            end);
                        else
                            local L=vL and(rL(vL));
                            if L then
                                f=false;
                            elseif ML and(rL(ML))then
                                D.MainEvent:FireServer(h[230],h[231]);
                            elseif mL and(rL(mL))then
                                startBenx(tL);
                            elseif VL and(rL(VL))then
                                benxActive=false;
                            else
                                local L=h[165];
                                if bL==L then
                                    P=true;
                                else
                                    local L=h[166];
                                    if bL==L then
                                        P=false;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            if isAuthorized(tL)then
                EL,NL=bL:match(h[114]);
                if EL and(PL(EL,NL,tL))then
                    return;
                end;
                if bL==h[115]then
                    getgenv().auraHoldUntil=0;
                    resetstate();
                    hL.bagkillWasFlame=false;
                    KL=true;
                    getgenv().enabled=false;
                    v,T,QL,X=false,nil,false,false;
                elseif bL==h[116]then
                    getgenv().enabled=false;
                    KL,YL,T,c,FL,X,QL=false,false,nil,{
                    }
                    ,false,false,true;
                elseif bL==h[117]then
                    getgenv().auraHoldUntil=0;
                    resetstate();
                    hL.bagkillWasFlame=false;
                    YL,T,u,v,M=true,nil,false,false,false;
                    getgenv().downonly=false;
                    m,y,KL,QL,X=false,false,false,false,true;
                elseif bL==h[118]then
                    YL,T,QL,X=false,nil,true,false;
                elseif bL==h[119]then
                    C,_L,y,i,DL=h[120],false,false,false,false;
                    hL.bagkillWasFlame=false;
                    if W.Character then
                        for L,L in pairs(W.Character:GetChildren())do
                            if L:IsA("Tool")then
                                L.Parent=W:FindFirstChild("Backpack");
                            end;
                        end;
                    end;
                elseif bL==h[122]then
                    C,_L,y,i,DL=h[47],false,false,false,false;
                    hL.bagkillWasFlame=false;
                    if W.Character then
                        for L,L in pairs(W.Character:GetChildren())do
                            if L:IsA("Tool")then
                                L.Parent=W:FindFirstChild("Backpack");
                            end;
                        end;
                    end;
                elseif bL==h[123]then
                    jL=getgenv().MoonSilentAim;
                    if jL and jL.report then
                        jL.debug=not jL.debug;
                        jL.report();
                        warn(h[124],jL.debug and h[125]or h[126]);
                    else
                        warn(h[127]);
                    end;
                elseif bL==h[128]then
                    C,_L,y,i,DL=h[129],false,false,false,false;
                    hL.bagkillWasFlame=false;
                    if W.Character then
                        for L,L in pairs(W.Character:GetChildren())do
                            if L:IsA("Tool")and L.Name~=h[130]then
                                L.Parent=W:FindFirstChild("Backpack");
                            end;
                        end;
                    end;
                elseif bL==h[131]then
                    C,_L,y,i,DL=h[132],false,false,false,false;
                    hL.bagkillWasFlame=false;
                    if W.Character then
                        for L,L in pairs(W.Character:GetChildren())do
                            if L:IsA("Tool")then
                                L.Parent=W:FindFirstChild("Backpack");
                            end;
                        end;
                    end;
                elseif bL==h[142]then
                    T,QL=nil,false;
                    getgenv().enabled1=true;
                    getgenv().sentryStomp=false;
                    G=0;
                elseif bL==h[143]then
                    getgenv().enabled1=false;
                    getgenv().sentryStomp=false;
                    j,G=nil,0;
                elseif bL==h[144]then
                    T,QL=nil,false;
                    getgenv().enabled1=true;
                    getgenv().sentryStomp=true;
                    G=0;
                elseif bL==h[145]then
                    getgenv().enabled1=false;
                    getgenv().sentryStomp=false;
                    j,G=nil,0;
                elseif bL==h[146]then
                    for L,f in pairs(O)do
                        getgenv().sentryprotected[L]=true;
                    end;
                elseif bL==h[147]then
                    for L,f in pairs(O)do
                        getgenv().sentryprotected[L]=nil;
                    end;
                elseif bL==h[148]then
                    handleFixCommand();
                elseif bL:match(h[149])then
                    handleFixCommand((bL:match(h[149])));
                elseif bL==h[150]then
                    eL=false;
                    startEmoteLoop();
                elseif bL==h[151]then
                    eL=true;
                    stopDance();
                elseif bL==h[152]then
                    handleHideCommand();
                elseif bL:match(h[153])then
                    handleHideCommand((bL:match(h[153])));
                elseif bL==h[154]then
                    handleTeleportCommand(tL.Name);
                elseif bL:match(h[155])then
                    HL=bL:match(h[155]);
                    handleTeleportCommand(tL.Name,HL);
                elseif bL==h[156]then
                    teleportToTarget(tL.Name);
                elseif bL==h[157]then
                    teleportToTarget(tL.Name);
                elseif bL==h[158]then
                    T,QL=nil,false;
                    teleportPlayerRandomly();
                    task.wait(1);
                    checkWhitelistNearPosition();
                    task.wait(1);
                    QL=true;
                else
                    GL=h[159];
                    if bL==GL then
                        x=true;
                    else
                        local O=h[160];
                        if bL==O then
                            x=false;
                        else
                            local O=h[161];
                            if bL==O then
                                b=true;
                            else
                                local O=h[162];
                                if bL==O then
                                    b=false;
                                else
                                    local O=h[163];
                                    if bL==O then
                                        o=true;
                                    else
                                        local O=h[164];
                                        if bL==O then
                                            o=false;
                                        else
                                            local O=h[165];
                                            if bL==O then
                                                P=true;
                                            else
                                                local O=h[166];
                                                if bL==O then
                                                P=false;
                                                elseif bL==h[167]then
                                                stopFling();
                                                if oL then
                                                oL:Stop();
                                                oL=nil;
                                                end;
                                                lastEmote=nil;
                                                elseif bL==h[168]then
                                                _[2]:Shutdown();
                                                elseif bL==h[169]then
                                                B:TeleportToPlaceInstance(_[2].PlaceId,_[2].JobId,W);
                                                elseif bL:match(h[170])then
                                                sendMessage((bL:match(h[170])));
                                                elseif bL:match(h[171])then
                                                local O=bL:match(h[171]);
                                                for B,L in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                getgenv().whitelist[L.Name]=true;
                                                B=T;
                                                if B==L then
                                                T=nil;
                                                end;
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[172])then
                                                local O=bL:match(h[172]);
                                                for B,B in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                getgenv().whitelist[B.Name]=nil;
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[173])then
                                                local O=bL:match(h[173]);
                                                for B,B in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                getgenv().sentryprotected[B.Name]=true;
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[174])then
                                                local O=bL:match(h[174]);
                                                for B,B in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                getgenv().sentryprotected[B.Name]=nil;
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[175])then
                                                local O={
                                                }
                                                ;
                                                for B in bL:match(h[175]):gmatch(h[112])do
                                                table.insert(O,B:lower());
                                                end;
                                                reloadTool();
                                                resetstate();
                                                T,c,n,E,r,H,y=nil,{
                                                }
                                                ,0,true,false,true,true;
                                                for B,L in ipairs(O)do
                                                for O,f in ipairs(Q:GetPlayers())do
                                                B,O=f.Name:lower(),f.DisplayName:lower();
                                                if B:find(L,1,true)or(O:find(L,1,true))then
                                                table.insert(c,f);
                                                break;
                                                end;
                                                end;
                                                end;
                                                elseif bL:match(h[176])then
                                                local O={
                                                }
                                                ;
                                                for B in bL:match(h[176]):gmatch(h[112])do
                                                table.insert(O,B:lower());
                                                end;
                                                reloadTool();
                                                resetstate();
                                                T,c,n,E,r,H,y=nil,{
                                                }
                                                ,0,true,false,true,true;
                                                hL.bagTries=0;
                                                hL.bagTryAt=0;
                                                hL.bagResetTimers();
                                                i=true;
                                                for B,L in ipairs(O)do
                                                for O,f in ipairs(Q:GetPlayers())do
                                                B,O=f.Name:lower(),f.DisplayName:lower();
                                                if B:find(L,1,true)or(O:find(L,1,true))then
                                                table.insert(c,f);
                                                break;
                                                end;
                                                end;
                                                end;
                                                elseif bL:match(h[177])then
                                                local O={
                                                }
                                                ;
                                                for B in bL:match(h[177]):gmatch(h[112])do
                                                table.insert(O,B:lower());
                                                end;
                                                reloadTool();
                                                resetstate();
                                                hL.bagkillWasFlame=_L;
                                                _L,c,n,E,r,H,y=false,{
                                                }
                                                ,0,true,false,true,true;
                                                hL.bagTries=0;
                                                hL.bagTryAt=0;
                                                hL.bagResetTimers();
                                                i,DL=true,true;
                                                for B,L in ipairs(O)do
                                                for O,f in ipairs(Q:GetPlayers())do
                                                B,O=f.Name:lower(),f.DisplayName:lower();
                                                if B:find(L,1,true)or(O:find(L,1,true))then
                                                table.insert(c,f);
                                                break;
                                                end;
                                                end;
                                                end;
                                                if#c>0 then
                                                n=1;
                                                T,E,X,QL=c[n],false,true,false;
                                                end;
                                                elseif bL==h[178]then
                                                reloadTool();
                                                resetstate();
                                                _L=true;
                                                stopDance();
                                                QL,X,T=false,true,nil;
                                                local O=W:FindFirstChild("Backpack");
                                                local B=O and(O:FindFirstChild(h[31]));
                                                if B and W.Character then
                                                for L,L in pairs(W.Character:GetChildren())do
                                                if L:IsA("Tool")then
                                                L.Parent=O;
                                                end;
                                                end;
                                                B.Parent=W.Character;
                                                end;
                                                elseif bL:match(h[179])then
                                                local O={
                                                }
                                                ;
                                                for B in bL:match(h[179]):gmatch(h[112])do
                                                table.insert(O,B:lower());
                                                end;
                                                if not Q.LocalPlayer then
                                                return;
                                                end;
                                                reloadTool();
                                                T,u,v,M=nil,false,false,false;
                                                getgenv().downonly=false;
                                                m,QL,y,i,DL,KL,c,V,E=false,false,false,false,false,false,{
                                                }
                                                ,nil,true;
                                                for B,L in ipairs(O)do
                                                for O,f in ipairs(Q:GetPlayers())do
                                                B,O=f.Name:lower(),f.DisplayName:lower();
                                                if B:find(L,1,true)or(O:find(L,1,true))then
                                                if isProtected and(isProtected(f))then
                                                sendMessage(h[180]..f.Name..h[181]);
                                                else
                                                table.insert(c,f);
                                                break;
                                                end;
                                                end;
                                                end;
                                                end;
                                                elseif bL:match(h[182])then
                                                local O,B=bL:match(h[182]);
                                                for L,L in pairs(Q:GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                if isProtected(L)then
                                                sendMessage(h[180]..L.Name..h[181]);
                                                break;
                                                end;
                                                handleOPKillCommand(O,B);
                                                break;
                                                end;
                                                end;
                                                else
                                                local O=h[183];
                                                if bL==O then
                                                R=h[184];
                                                elseif bL:match(h[185])then
                                                local O,B,L=bL:match(h[185]),W.Name:lower(),W.DisplayName:lower();
                                                local f=B:find(O,1,true)or(L:find(O,1,true));
                                                if f then
                                                R=h[184];
                                                end;
                                                else
                                                local O=h[186];
                                                if bL==O then
                                                R=h[187];
                                                elseif bL:match(h[188])then
                                                local O,B,L=bL:match(h[188]),W.Name:lower(),W.DisplayName:lower();
                                                local f=B:find(O,1,true)or(L:find(O,1,true));
                                                if f then
                                                R=h[187];
                                                end;
                                                else
                                                local O=h[189];
                                                if bL==O then
                                                R=h[46];
                                                elseif bL:match(h[190])then
                                                local O,B,L=bL:match(h[190]),W.Name:lower(),W.DisplayName:lower();
                                                local f=B:find(O,1,true)or(L:find(O,1,true));
                                                if f then
                                                R=h[46];
                                                end;
                                                elseif bL:match(h[191])then
                                                local O=bL:match(h[191]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleFlingCommand(O);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[192])then
                                                local O=bL:match(h[192]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleLoopFlingCommand(O);
                                                break;
                                                end;
                                                end;
                                                elseif bL==h[193]then
                                                autobuyarmor=true;
                                                elseif bL==h[194]then
                                                autobuyarmor=false;
                                                else
                                                local O=h[195];
                                                if bL==O then
                                                k=true;
                                                elseif bL==h[196]then
                                                k,I=false,false;
                                                elseif bL:match(h[197])then
                                                local O=bL:match(h[197]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleOPKillCommand(O);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[198])then
                                                local O,B=bL:match(h[198]);
                                                for L,L in pairs(Q:GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                if isProtected(L)then
                                                sendMessage(h[180]..L.Name..h[181]);
                                                break;
                                                end;
                                                handleStompCommand(O,B);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[199])then
                                                local O=bL:match(h[199]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleStompCommand(O);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[200])then
                                                local O,B=bL:match(h[200]);
                                                for L,L in pairs(Q:GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                if isProtected(L)then
                                                sendMessage(h[180]..L.Name..h[181]);
                                                break;
                                                end;
                                                handleBringCommand(O,B,tL.Name);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[201])then
                                                local O=bL:match(h[201]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleBringCommand(O,nil,tL.Name);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[202])then
                                                local O,B=bL:match(h[202]);
                                                for L,L in pairs(Q:GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                if isProtected(L)then
                                                sendMessage(h[180]..L.Name..h[181]);
                                                break;
                                                end;
                                                handleDownCommand(O,B);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[203])then
                                                local O=bL:match(h[203]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleDownCommand(O);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[204])then
                                                local O,B=bL:match(h[204]);
                                                for L,L in pairs(Q:GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                getgenv().antiSeatOffUntil=os.clock()+8;
                                                getgenv().godmodePauseUntil=os.clock()+8;
                                                handleTakeCommand(O,B);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[205])then
                                                local O=bL:match(h[205]);
                                                getgenv().antiSeatOffUntil=os.clock()+8;
                                                getgenv().godmodePauseUntil=os.clock()+8;
                                                handleGotoCommand(tL.Name,O);
                                                elseif bL:match(h[206])then
                                                local O=bL:match(h[206]);
                                                for B,B in pairs(Q:GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                if isProtected(B)then
                                                sendMessage(h[180]..B.Name..h[181]);
                                                break;
                                                end;
                                                handleSkyCommand(B.Name);
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[207])then
                                                if tL.Name~=Owner then
                                                return;
                                                end;
                                                local O=bL:match(h[207]);
                                                for B,L in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local f,z=L.Name:lower(),L.DisplayName:lower();
                                                if f:find(O,1,true)or(z:find(O,1,true))then
                                                B=L.Name;
                                                w[B]=true;
                                                local O=_[2].Players:FindFirstChild(B);
                                                if O then
                                                setupChatListener(O);
                                                end;
                                                break;
                                                end;
                                                end;
                                                elseif bL:match(h[210])then
                                                if tL.Name~=Owner then
                                                return;
                                                end;
                                                local O=bL:match(h[210]);
                                                for B,B in pairs(_[2]:GetService("Players"):GetPlayers())do
                                                local L,f=B.Name:lower(),B.DisplayName:lower();
                                                if L:find(O,1,true)or(f:find(O,1,true))then
                                                w[B.Name]=nil;
                                                F[B.UserId]=nil;
                                                break;
                                                end;
                                                end;
                                                end;
                                                end;
                                                end;
                                                end;
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end);
    end;
end;
ZL.OnIncomingMessage=
function(O)for B,B in pairs(F)do
        pcall(B,O);
    end;
end;
for O,O in pairs(Q:GetPlayers())do
    if isAuthorized(O)or(isPremium(O))or(isBypassPremium(O))then
        if isAuthorized(O)then
            w[O.Name]=true;
        end;
        setupChatListener(O);
        setupDisplayNameListener(O);
    end;
end;
Q.PlayerAdded:Connect(
function(O)if isAuthorized(O)or(isPremium(O))or(isBypassPremium(O))then
        setupChatListener(O);
        if isPremium(O)or(isBypassPremium(O))then
            setupDisplayNameListener(O);
        end;
    end;
end);
task.spawn(
function()while true do
        task.wait(0.1);
        local O,B=pcall(readfile,qL);
        if O and B and B~=h[5]then
            local O=string.split(B,h[104]);
            if#O>=3 then
                local B,L,f=O[1],O[2],O[3];
                if f~=nL then
                    nL=f;
                    local O=Q:FindFirstChild(B);
                    if O then
                        if isAuthorized(O)or w[O.Name]then
                            pcall(LL,O,L);
                        elseif isPremium(O)or(isBypassPremium(O))then
                            local w,B={
                                TextSource={
                                    UserId=O.UserId
                                }
                                ,Text=L
                            }
                            ,F[O.UserId];
                            if B then
                                pcall(B,w);
                            else
                                setupChatListener(O);
                                B=F[O.UserId];
                                if B then
                                    pcall(B,w);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end);
task.spawn(
function()while true do
        task.wait(5);
        pcall(writefile,pL,tostring(os.time()));
    end;
end);
local w;
local O,B,F=false,0;
local L,f,z=0,{
}
,4;
local function qL(pL)if not pL then
        return nil;
    end;
    return pL:FindFirstChildWhichIsA(h[239],true);
end;
local function pL(ZL)if not b then
        return;
    end;
    local LL=_[2].Players.LocalPlayer;
    if not LL or ZL~=LL.Character then
        return;
    end;
    if ZL==w then
        return;
    end;
    if os.clock()-L<z then
        return;
    end;
    if qL(ZL)then
        return;
    end;
    LL=ZL:FindFirstChildOfClass("Humanoid");
    if not LL or LL.Health<=0 then
        return;
    end;
    w=ZL;
    L=os.clock();
    handleFixCommand();
end;
local function L(z)for ZL=#f,1,-1 do
        pcall(
        function()f[ZL]:Disconnect();
        end);
        f[ZL]=nil;
    end;
    if not z then
        return;
    end;
    local function ZL(LL)if not(LL and(LL:IsA(h[239])))then
            return;
        end;
        O=true;
        f[#f+1]=LL.Destroying:Connect(
        function()pL(z);
        end);
    end;
    f[#f+1]=z.DescendantRemoving:Connect(
    function(LL)if LL:IsA(h[239])then
            task.defer(
            function()pL(z);
            end);
        end;
    end);
    f[#f+1]=z.DescendantAdded:Connect(
    function(LL)ZL(LL);
    end);
    ZL(qL(z));
end;
task.spawn(
function()while true do
        if not b then
            w=nil;
            if#f>0 then
                L(nil);
            end;
            task.wait(0.2);
        else
            local w=_[2].Players.LocalPlayer;
            local b=w and w.Character;
            w=b and(b:FindFirstChildOfClass("Humanoid"));
            if b and w and w.Health>0 then
                if b~=F then
                    F=b;
                    B,O=os.clock(),false;
                    L(b);
                end;
                local w=qL;
                if w(b)then
                    O=true;
                elseif O or os.clock()-B>=1.5 then
                    pL(b);
                end;
            end;
            task.wait(0.1);
        end;
    end;
end);
Q=_[2]:GetService("Players");
W=_[2]:GetService("Players").LocalPlayer;
local w;
local O=false;
task.spawn(
function()while true do
        if not T and w and not O then
            for B,B in ipairs(Q:GetPlayers())do
                if B.UserId==w then
                    T,O=B,true;
                    break;
                end;
            end;
        end;
        if T then
            local B=T.Character;
            if B then
                local F=B:FindFirstChild("BodyEffects");
                if F and(F:FindFirstChild(h[113]))and F[h[113]].Value and P then
                    if not sL then
                        local B=getgenv().customTaunts or{
                            h[240],h[241],h[242]
                        }
                        ;
                        sendMessage(B[math.random(1,#B)]);
                        sL=true;
                    end;
                else
                    sL=false;
                end;
            end;
            if not T:IsDescendantOf(_[2])then
                w,T,O,QL=T.UserId,nil,false,true;
            end;
        end;
        task.wait();
    end;
end);
Z.Heartbeat:Connect(
function(w)if not X then
        return;
    end;
    if S or l or J then
        return;
    end;
    local O,B=if T and T.Character then
    T.Character
    else
    if j and j.Character then
    j.Character
    else
    nil,W.Character;
    if not(O and B)then
        return;
    end;
    local F,L=B:FindFirstChild("HumanoidRootPart"),O:FindFirstChild("HumanoidRootPart");
    if not(F and L)then
        return;
    end;
    if not _posSafe(L.Position)then
        return;
    end;
    if(C==h[120]or C==h[47])and not _L and not y then
        pcall(
        function()sethiddenproperty(F,h[243],nil);
        end);
    end;
    if y and T then
        w=T.Character;
        if not(w and(w:FindFirstChild(h[244])))then
            pcall(
            function()sethiddenproperty(F,h[243],L);
            end);
            local w,P=L.Position,hL.bagTgtLastPos;
            hL.bagTgtMove=P and(w-P).Magnitude or 0;
            hL.bagTgtLastPos=w;
            F.CFrame=L.CFrame*CFrame.new(0,0,3);
            F.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
            F.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
            if not(B:FindFirstChild(h[245])~=nil)or l then
                hL.bagPosAt=0;
            elseif hL.bagPosAt<=0 then
                hL.bagPosAt=os.clock();
            end;
        end;
    elseif _L then
        local w=B:FindFirstChildOfClass("Humanoid");
        if w then
            local P=w:FindFirstChildOfClass("Animator");
            if P then
                for b,f in pairs(P:GetPlayingAnimationTracks())do
                    b=f.Name:lower();
                    if b:find(h[246])or(b:find(h[247]))or(b:find(h[248]))or(b:find(h[249]))or(b:find(h[250]))or(b:find(h[251]))or(b:find(h[252]))or(b:find(h[253]))or(b:find(h[254]))then
                        f:Stop(0);
                    end;
                end;
            end;
        end;
        local P,b=O and(O:FindFirstChildOfClass(h[239])),O and(O:FindFirstChild("BodyEffects"));
        if b and(b:FindFirstChild(h[113]))and b[h[113]].Value then
            hL.setRmb(false);
            hL.setCrosshair(false);
            w=q and(q:FindFirstChild("Backpack"));
            if w then
                local b=B:FindFirstChild(h[31]);
                if b then
                    b.Parent=w;
                    _flameActivated=false;
                    _flameLast=0;
                end;
            end;
        elseif P then
            pcall(
            function()sethiddenproperty(F,h[243],nil);
            end);
            F.CFrame=CFrame.new(0,500,0);
        else
            pcall(
            function()sethiddenproperty(F,h[243],nil);
            end);
            local w,P=L.Position+Vector3.new(0,10,0),B:FindFirstChild(h[255])or(B:FindFirstChild(h[256]));
            if P then
                local B,b=P.Position.X-F.Position.X,P.Position.Z-F.Position.Z;
                w=(Vector3.new(w.X-B,w.Y,w.Z-b));
            end;
            local B,P,b=CFrame.new(w),CFrame.Angles,math.rad;
            F.CFrame=B*P(-1.5707963267948966,0,0);
            F.AssemblyLinearVelocity=Vector3.new(0,0,0);
            F.AssemblyAngularVelocity=Vector3.new(0,0,0);
        end;
    elseif(C==h[120]or C==h[47])and not _L then
        local w=Vector3.new(math.random(-6,6),math.random(0,5),math.random(-6,6));
        F.CFrame=CFrame.new(L.Position+w);
    elseif(C==h[132]or C==h[129])and not _L then
        local w=W.Character;
        if not w then
            return;
        end;
        local B=w:FindFirstChild("HumanoidRootPart");
        if not B then
            return;
        end;
        local F=W:FindFirstChild("Backpack");
        if not F then
            return;
        end;
        local L=C==h[129]and h[130]or h[257];
        local P=F:FindFirstChild(L);
        if P then
            P.Parent=w;
        end;
        for b,b in pairs(w:GetChildren())do
            if b:IsA("Tool")and b.Name~=L then
                b.Parent=F;
            end;
        end;
        P=w:FindFirstChild(L);
        if not P then
            B.CFrame=CFrame.new(math.random(-999999999,999999999),math.random(0,999999999),math.random(-999999999,999999999));
            return;
        end;
        F=O:FindFirstChild("HumanoidRootPart");
        if not F then
            return;
        end;
        pcall(
        function()sethiddenproperty(B,h[243],nil);
        end);
        B.CFrame=hL.meleeCFrame(F);
        B.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
        B.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
        P:Activate();
    end;
end);
task.spawn(
function()while true do
        if(C==h[132]or C==h[129])and not _L and X and T and not QL and not(S or l or J)then
            local w,O=W.Character,T and T.Character;
            if w and O then
                local B=O:FindFirstChild("BodyEffects");
                local F,L,P,b=B and(B:FindFirstChild(h[113]))and B[h[113]].Value,B and(B:FindFirstChild(h[67]))and B[h[67]].Value,O:FindFirstChild(h[258]),O:FindFirstChildOfClass(h[239]);
                if not F and not L and not P and not b then
                    B=w:FindFirstChild(C==h[129]and h[130]or h[257]);
                    if B then
                        B:Activate();
                    end;
                end;
            end;
        end;
        task.wait();
    end;
end);
canrun=true;
Q=_[2]:GetService("Players");
W=Q.LocalPlayer;
char=W.Character or(W.CharacterAdded:Wait());
char:WaitForChild("Humanoid");
rootPart=char:WaitForChild("HumanoidRootPart");
local w=3.5;
task.spawn(
function()while true do
        if T and not u and not v and not M and not getgenv().downonly and not m and not N and not y and not(S or l or J)then
            local O,B=T.Character,W.Character;
            if O and B then
                local F,L=O:FindFirstChild("BodyEffects"),B:FindFirstChild("BodyEffects");
                local P,b,f,z,qL,pL=F and(F:FindFirstChild(h[113]))and F[h[113]].Value,F and(F:FindFirstChild(h[67]))and F[h[67]].Value,not O:FindFirstChild("UpperTorso")or not O:FindFirstChild("Humanoid"),O:FindFirstChildOfClass(h[239]),O:FindFirstChild(h[258]),L and(L:FindFirstChild(h[59]))and L[h[59]].Value;
                B:FindFirstChildOfClass(h[239]);
                if(b or f)and not pL and canrun then
                    X,QL=false,true;
                    reloadTool();
                    E=true;
                    if DL then
                        y,i,r,H=true,true,false,true;
                    end;
                    if not a and t then
                        a=true;
                        task.delay(0.2,
                        function()e=true;
                            task.wait(3.65);
                            e=false;
                        end);
                    end;
                elseif P and not b and not qL and not f and not pL and canrun and not e then
                    if KL then
                        QL,X=true,false;
                    else
                        X,QL=false,false;
                        F=O:FindFirstChild("UpperTorso");
                        if F and W.Character then
                            L=W.Character:FindFirstChild("HumanoidRootPart");
                            if L then
                                L.Velocity=Vector3.new(0.0,0.0,0.0);
                                L.RotVelocity=Vector3.new(0.0,0.0,0.0);
                                L.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                                L.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                                w=3.5;
                                task.wait(0.1);
                                L.CFrame=CFrame.new(F.Position+Vector3.new(0,w,0));
                            end;
                        end;
                    end;
                elseif not P and not b and not z and not qL and not f and not pL and canrun and not e then
                    X,QL,a=true,false,false;
                elseif pL and not e then
                    X,QL=false,true;
                elseif z and not pL and not e then
                    X,QL=false,true;
                    reloadTool();
                end;
            end;
            D.MainEvent:FireServer(h[259]);
        end;
        task.wait();
    end;
end);
task.spawn(
function()while true do
        if u and not v and not M and not getgenv().downonly and not m and T and not(S or l or J)then
            local w=T.Character;
            if w then
                local O=w:FindFirstChild("BodyEffects");
                local B,F=O and(O:FindFirstChild(h[113]))and O[h[113]].Value,O and(O:FindFirstChild(h[67]))and O[h[67]].Value;
                if B and not F then
                    X,QL=false,false;
                    O=w:FindFirstChild("UpperTorso");
                    if O and W.Character then
                        local w=W.Character:FindFirstChild("HumanoidRootPart");
                        if w then
                            w.Velocity=Vector3.new(0.0,0.0,0.0);
                            w.RotVelocity=Vector3.new(0.0,0.0,0.0);
                            w.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                            w.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                            w.CFrame=CFrame.new(O.Position+Vector3.new(0,3.5,0));
                            task.wait(0.1);
                        end;
                    end;
                elseif F then
                    T,X,QL=nil,false,true;
                    reloadTool();
                elseif not B and not F then
                    X,QL=true,false;
                end;
            end;
            D.MainEvent:FireServer(h[259]);
        end;
        task.wait();
    end;
end);
Q=_[2]:GetService("Players");
W=Q.LocalPlayer;
local w;
task.spawn(
function()while true do
        if v and T and T.Character and not(S or l or J)then
            local O=T.Character;
            local B=O and(O:FindFirstChild("BodyEffects"));
            local F,L=B and(B:FindFirstChild(h[113]))and B[h[113]].Value,B and(B:FindFirstChild(h[67]));
            if L then
                O=B[h[67]].Value;
            end;
            local O,L,P=false,T.Character,W.Character:FindFirstChild("HumanoidRootPart");
            B=L and(L:FindFirstChild("UpperTorso"));
            if w then
                w:Disconnect();
                w=nil;
            end;
            w=L.ChildAdded:Connect(
            function(t)if t.Name==h[258]then
                    O,T=true,nil;
                    if w then
                        w:Disconnect();
                        w=nil;
                    end;
                end;
            end);
            if L:FindFirstChild(h[258])then
                O,T=true,nil;
                if w then
                    w:Disconnect();
                    w=nil;
                end;
            end;
            if not O and F and P and B and(_posSafe(B.Position))then
                X,QL=false,false;
                P.Velocity=Vector3.new(0.0,0.0,0.0);
                P.RotVelocity=Vector3.new(0.0,0.0,0.0);
                P.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                P.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                P.CFrame=CFrame.new(B.Position+Vector3.new(0,3.5,0));
                D.MainEvent:FireServer(h[260],false);
                task.wait(0.3);
            else
                X,QL=true,false;
            end;
            if O then
                T=nil;
                teleportToTarget(d);
                task.wait(1);
                P=W.Character and(W.Character:FindFirstChild("HumanoidRootPart"));
                if P then
                    P.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                    P.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                end;
                D.MainEvent:FireServer(h[260],false);
                task.wait(0.3);
                QL=true;
                reloadTool();
                if getgenv().godmodeOn and handleFixCommand then
                    task.spawn(
                    function()pcall(handleFixCommand);
                    end);
                end;
            end;
        end;
        task.wait();
    end;
end);
local w=_[2]:GetService(h[261]);
task.spawn(
function()while true do
        if U and XL and xL and not(S or l or J)then
            if W.Character and(W.Character:FindFirstChild("HumanoidRootPart"))then
                QL,X=false,false;
                global.teleporting.place=xL;
                global.vars.target=XL;
                teleport(h[77],XL);
                task.wait(0.1);
                local O=workspace.OldVehicles:FindFirstChild(W.Name..h[69]);
                if O and(O:FindFirstChild(h[70]))then
                    if(O.Seat.Position-xL.p).Magnitude<10 then
                        task.wait(0.2);
                        XL,xL,U,JL=nil,nil,false,false;
                        w:SendKeyEvent(true,Enum.KeyCode.Space,false,_[2]);
                        task.wait(0.05);
                        w:SendKeyEvent(false,Enum.KeyCode.Space,false,_[2]);
                        QL=true;
                    end;
                end;
            end;
        end;
        task.wait(0.05);
    end;
end);
task.spawn(
function()while true do
        if U and TL and lL and not(S or l or J)then
            if W.Character and(W.Character:FindFirstChild("HumanoidRootPart"))then
                QL,X=false,false;
                local O,B=TL.Character,lL.Character;
                if not B or not B:FindFirstChild("HumanoidRootPart")then
                    task.wait(0.05);
                    continue;
                end;
                global.vars.target=TL;
                global.teleporting.place=B.HumanoidRootPart.Position;
                teleport(h[77],TL);
                task.wait(0.1);
                local F=workspace.OldVehicles:FindFirstChild(W.Name..h[69]);
                if O and(O:FindFirstChild("HumanoidRootPart"))and B and(B:FindFirstChild("HumanoidRootPart"))and F and(F:FindFirstChild(h[70]))then
                    if(F.Seat.Position-B.HumanoidRootPart.Position).Magnitude<10 then
                        task.wait(0.2);
                        TL,lL,U,JL=nil,nil,false,false;
                        w:SendKeyEvent(true,Enum.KeyCode.Space,false,_[2]);
                        task.wait(0.05);
                        w:SendKeyEvent(false,Enum.KeyCode.Space,false,_[2]);
                        QL=true;
                        if getgenv().godmodeOn and handleFixCommand then
                            task.spawn(
                            function()pcall(handleFixCommand);
                            end);
                        end;
                    end;
                end;
            end;
        end;
        task.wait(0.05);
    end;
end);
local w;
task.spawn(
function()while true do
        if M and T and T.Character and not(S or l or J)then
            local O=T.Character;
            local B=O and(O:FindFirstChild("BodyEffects"));
            local F,L=B and(B:FindFirstChild(h[113]))and B[h[113]].Value,B and(B:FindFirstChild(h[67]));
            if L then
                O=B[h[67]].Value;
            end;
            local O,L,P=false,T.Character,W.Character:FindFirstChild("HumanoidRootPart");
            B=L and(L:FindFirstChild("UpperTorso"));
            if w then
                w:Disconnect();
                w=nil; -- deobfuscated by valx
            end;
            w=L.ChildAdded:Connect(
            function(t)if t.Name==h[258]then
                    O,T=true,nil;
                    if w then
                        w:Disconnect();
                        w=nil;
                    end;
                end;
            end);
            if L:FindFirstChild(h[258])then
                O,T=true,nil;
                if w then
                    w:Disconnect();
                    w=nil;
                end;
            end;
            if not O and F and P and B and(_posSafe(B.Position))then
                X,QL=false,false;
                P.Velocity=Vector3.new(0.0,0.0,0.0);
                P.RotVelocity=Vector3.new(0.0,0.0,0.0);
                P.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                P.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                P.CFrame=CFrame.new(B.Position+Vector3.new(0,3.5,0));
                D.MainEvent:FireServer(h[260],false);
                task.wait(0.3);
            else
                X,QL=true,false;
            end;
            if O then
                B=W.Character;
                L=B and(B:FindFirstChild("HumanoidRootPart"));
                if cL and L then
                    T=nil;
                    L.CFrame=CFrame.new(0,1500,0);
                    task.wait(0.3);
                    D.MainEvent:FireServer(h[260],false);
                    task.wait(0.3);
                    QL=true;
                    reloadTool();
                    cL=nil;
                    if getgenv().godmodeOn and handleFixCommand then
                        task.spawn(
                        function()pcall(handleFixCommand);
                        end);
                    end;
                end;
            end;
        end;
        task.wait();
    end;
end);
local w;
local O,B=CFrame.new(-326,80,-293),0;
task.spawn(
function()while true do
        local F=I and tick()>=B;
        if F then
            I=false;
        end;
        if k and j then
            task.wait(0.5);
            continue;
        end;
        if k and U then
            task.wait(0.5);
            continue;
        end;
        if k and not(S or l or J)then
            F=_[2].Players:FindFirstChild(Owner);
            if F and F.Character then
                local L=F.Character;
                local F,P=L:FindFirstChild("BodyEffects"),L:FindFirstChild("HumanoidRootPart");
                local t,e,a,b,k=F and(F:FindFirstChild(h[113]))and F[h[113]].Value,false,W.Character and(W.Character:FindFirstChild("HumanoidRootPart")),L:FindFirstChild("UpperTorso"),if P then
                if(P.CFrame.Position-O.Position).Magnitude<=20 then
                    true
                    else
                    false
                    else
                    false;
                    if w then
                        pcall(
                        function()w:Disconnect();
                        end);
                        w=nil;
                    end;
                    w=L.ChildAdded:Connect(
                    function(F)if F.Name==h[258]then
                            e=true;
                            if w then
                                pcall(
                                function()w:Disconnect();
                                end);
                                w=nil;
                            end;
                        end;
                    end);
                    if L:FindFirstChild(h[258])then
                        e=true;
                        if w then
                            pcall(
                            function()w:Disconnect();
                            end);
                            w=nil;
                        end;
                    end;
                    if not e and t and a and b and(_posSafe(b.Position))and not k then
                        I=true;
                        B=tick()+5;
                        BL();
                        X,QL=false,false;
                        a.Velocity=Vector3.new(0.0,0.0,0.0);
                        a.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        a.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        a.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                        a.CFrame=CFrame.new(b.Position+Vector3.new(0,3.5,0));
                        D.MainEvent:FireServer(h[260],false);
                        task.wait(0.3);
                    end;
                    if e and a and not k then
                        T=nil;
                        a.CFrame=O;
                        task.wait(0.3);
                        D.MainEvent:FireServer(h[260],false);
                        task.wait(0.3);
                        QL,I,B=true,false,0;
                        if getgenv().godmodeOn and handleFixCommand then
                            task.spawn(
                            function()pcall(handleFixCommand);
                            end);
                        end;
                    elseif not t then
                        I,B=false,0;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    task.spawn(
    function()while true do
            if getgenv().downonly and not(S or l or J)and not u and not v and not M and not m and T then
                local w=T.Character;
                if w then
                    local O=w:FindFirstChild("BodyEffects");
                    local w,B=O and(O:FindFirstChild(h[113]))and O[h[113]].Value,O and(O:FindFirstChild(h[67]))and O[h[67]].Value;
                    if not w and not B then
                        X,QL=true,false;
                    elseif w or B then
                        T,QL=nil,true;
                        reloadTool();
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    Q=_[2]:GetService("Players");
    W=Q.LocalPlayer;
    task.spawn(
    function()while true do
            if m and not(S or l or J)and not u and not v and not M and not getgenv().downonly and T then
                local w=T.Character;
                if w then
                    local O=w:FindFirstChild("BodyEffects");
                    local B,F,L,P=O and(O:FindFirstChild(h[113]))and O[h[113]].Value,O and(O:FindFirstChild(h[67]))and O[h[67]].Value,w:FindFirstChild(h[258]),w:FindFirstChildOfClass(h[239]);
                    if not B and not F and not L and not P then
                        X,QL=true,false;
                    elseif B or F or L or P then
                        QL,X=true,false;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    task.spawn(
    function()while true do
            if KL and os.clock()>=(getgenv().auraHoldUntil or 0)and not U and not I and not j and not(S or l or J)then
                local w,O=false,not T or not T.Parent or not T.Character;
                if O then
                    w=true;
                else
                    local B=T.Character;
                    local F=B:FindFirstChild("BodyEffects");
                    local L,P,t,e=F and(F:FindFirstChild(h[113]))and F[h[113]].Value,F and(F:FindFirstChild(h[67]))and F[h[67]].Value,B:FindFirstChildOfClass(h[239]),B:FindFirstChild(h[258]);
                    F=L or P or t or e or tick()-(getgenv().auraCommitAt or 0)>25;
                    if F then
                        w=true;
                    else
                        X,QL=true,false;
                    end;
                end;
                if w then
                    O=tick();
                    if not T or O-WL>=OL then
                        local w={
                        }
                        ;
                        for B,F in pairs(Q:GetPlayers())do
                            if F~=W and F.Name~=Owner and F.Character and not A(F)then
                                B=F.Character:FindFirstChild("BodyEffects");
                                local L,P,t,e=B and(B:FindFirstChild(h[113]))and B[h[113]].Value,B and(B:FindFirstChild(h[67]))and B[h[67]].Value,F.Character:FindFirstChildOfClass(h[239]),F.Character:FindFirstChild(h[258]);
                                if not L and not P and not t and not e then
                                    table.insert(w,F);
                                end;
                            end;
                        end;
                        if#w>0 then
                            WL=O;
                            local O=Q:FindFirstChild(Owner);
                            local B=O and O.Character and(O.Character:FindFirstChild("HumanoidRootPart"));
                            if B then
                                local F,L=1/0;
                                for P,t in ipairs(w)do
                                    P=t.Character and(t.Character:FindFirstChild("HumanoidRootPart"));
                                    if P then
                                        O=(P.Position-B.Position).Magnitude;
                                        if O<F then
                                            F,L=O,t;
                                        end;
                                    end;
                                end;
                                T=L or w[1];
                            else
                                T=w[1];
                            end;
                            getgenv().auraCommitAt=tick();
                            v,X,QL=false,true,false;
                        else
                            T,X,QL=nil,false,true;
                        end;
                    end;
                end;
            end;
            task.wait(0.5);
        end;
    end);
    task.spawn(
    function()while true do
            if YL and os.clock()>=(getgenv().auraHoldUntil or 0)and not U and not I and not j and not(S or l or J)then
                local function w(O)if not O.Character then
                        return false;
                    end;
                    local B=O.Character:FindFirstChild("BodyEffects");
                    local F,L,P,t=B and(B:FindFirstChild(h[113]))and B[h[113]].Value,B and(B:FindFirstChild(h[67]))and B[h[67]].Value,O.Character:FindFirstChildOfClass(h[239]),O.Character:FindFirstChild(h[258]);
                    return not F and not L and not P and not t;
                end;
                local O,B=false,not T or not T.Parent or not T.Character;
                if B then
                    O=true;
                else
                    local F=T.Character;
                    local L=F:FindFirstChild("BodyEffects");
                    local P,t,e=L and(L:FindFirstChild(h[67]))and L[h[67]].Value,F:FindFirstChildOfClass(h[239]),F:FindFirstChild(h[258]);
                    O=if P or t or e or tick()-(getgenv().auraCommitAt or 0)>25 then
                    true
                    else
                    O;
                end;
                if O then
                    B=tick();
                    if not T or B-WL>=OL then
                        local O={
                        }
                        ;
                        for F,F in pairs(Q:GetPlayers())do
                            if F~=W and F.Name~=Owner and not getgenv().protectedwhitelist[F.Name]and not getgenv().whitelist[F.Name]and(w(F))then
                                table.insert(O,F);
                            end;
                        end;
                        if#O>0 then
                            WL=B;
                            local w=Q:FindFirstChild(Owner);
                            local B=w and w.Character and(w.Character:FindFirstChild("HumanoidRootPart"));
                            if B then
                                local F,L=1/0;
                                for P,t in ipairs(O)do
                                    P=t.Character and(t.Character:FindFirstChild("HumanoidRootPart"));
                                    if P then
                                        w=(P.Position-B.Position).Magnitude;
                                        if w<F then
                                            F,L=w,t;
                                        end;
                                    end;
                                end;
                                T=L or O[1];
                            else
                                T=O[1];
                            end;
                            getgenv().auraCommitAt=tick();
                            QL,X=false,true;
                        else
                            T,X,QL=nil,false,true;
                        end;
                    end;
                end;
            end;
            task.wait(0.3);
        end;
    end);
    local w,O,B,F=false,false,0;
    task.spawn(
    function()while true do
            if S or l or J then
                hL.setRmb(false);
                hL.setCrosshair(false);
            end;
            if _L and not y and(T or j)and not QL and not(S or l or J)then
                local L,P=T and T.Character or j and j.Character,q and q.Character;
                local t,e=P and(P:FindFirstChildOfClass("Humanoid")),q and(q:FindFirstChild("Backpack"));
                if L and P and t and t.Health>0 and e then
                    local a=L:FindFirstChild("BodyEffects");
                    local b,k,f=a and(a:FindFirstChild(h[113]))and a[h[113]].Value,a and(a:FindFirstChild(h[67]))and a[h[67]].Value,h[31];
                    local d,A,z,m=e:FindFirstChild(f),P:FindFirstChild(f),L:FindFirstChildOfClass(h[239])~=nil,T or j;
                    if m~=F then
                        F,w=m,false;
                    end;
                    if b or k then
                        if not w then
                            hL.setRmb(false);
                            hL.setCrosshair(false);
                            t:UnequipTools();
                            for F,F in ipairs(P:GetChildren())do
                                if F:IsA("Tool")and F.Parent~=e then
                                    F.Parent=e;
                                end;
                            end;
                            w,O,B=true,false,0;
                        end;
                    else
                        w=false;
                        if d and not A then
                            d.Parent=P;
                            O,B,A=false,0,d;
                        end;
                        if A and not z then
                            hL.watchRmb(A);
                            hL.setRmb(true);
                            hL.setCrosshair(true);
                            local w,F=A:FindFirstChild(h[262]),L:FindFirstChild("HumanoidRootPart");
                            if w and F then
                                pcall(
                                function()D.MainEvent:FireServer(h[263],w,w.Position,F.Position,F,Vector3.new(0,0,0));
                                end);
                            end;
                            a=tick();
                            if not O or a-B>=1.5 then
                                O,B=true,a;
                                A:Activate();
                            end;
                        else
                            hL.setRmb(false);
                            hL.setCrosshair(false);
                        end;
                        for w,w in ipairs(P:GetChildren())do
                            if w:IsA("Tool")and w.Name~=f and w.Parent~=e then
                                w.Parent=e;
                            end;
                        end;
                    end;
                end;
            elseif _L then
                hL.setRmb(false);
                hL.setCrosshair(false);
                local w=q and q.Character;
                local F,L=w and(w:FindFirstChildOfClass("Humanoid")),q and(q:FindFirstChild("Backpack"));
                if w and F and L then
                    local F=w:FindFirstChild(h[31]);
                    if F then
                        F.Parent=L;
                        O,B=false,0;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    local w,O;
    task.spawn(
    function()while true do
            if y and not(S or l or J)and not u and not v and not M and not getgenv().downonly and T then
                local B,F=q.Character,T.Character;
                local L,P,t=F and(F:FindFirstChild("HumanoidRootPart")),q:FindFirstChildOfClass("Backpack"),F and(F:FindFirstChild("BodyEffects"));
                local e,a,b=t and(t:FindFirstChild(h[113]))and t[h[113]].Value,t and(t:FindFirstChild(h[67]))and t[h[67]].Value,F and F:FindFirstChildOfClass(h[239])~=nil;
                if T~=O then
                    O=T;
                    hL.bagTries=0;
                    hL.bagTryAt=0;
                    hL.bagResetTimers();
                    if w then
                        w:Disconnect();
                        w=nil;
                    end;
                    if T then
                        w=T.CharacterAdded:Connect(
                        function()hL.bagTries=0;
                            hL.bagTryAt=0;
                            hL.bagResetTimers();
                            H=false;
                            task.delay(0.1,
                            function()local w,k=T,O;
                                if w==k then
                                    H=true;
                                end;
                            end);
                        end);
                    end;
                end;
                if B and(B:FindFirstChild("HumanoidRootPart"))and L then
                    if not(F:FindFirstChild(h[244])~=nil)then
                        X,QL,r=true,false,false;
                        if b then
                            hL.bagFFSeen=true;
                            hL.bagTries=0;
                        elseif hL.bagFFSeen then
                            hL.bagFFSeen=false;
                            hL.bagTries=0;
                            hL.bagTryAt=0;
                            hL.bagResetTimers();
                            r=true;
                            if DL then
                                y,i,X,QL=false,false,true,false;
                                if hL.bagkillWasFlame then
                                    _L=true;
                                end;
                            else
                                y,i,DL,T,c,n,X,QL=false,false,false,nil,{
                                }
                                ,0,false,true;
                            end;
                        end;
                        local w=B:FindFirstChild(h[245])or P and(P:FindFirstChild(h[245]));
                        if w then
                            if w.Parent~=B then
                                local O=B:FindFirstChildOfClass("Humanoid");
                                if not(if O then
                                (pcall(
                                function()O:EquipTool(w);
                                end))
                            else
                                false)and w.Parent~=B then
                                    w.Parent=B;
                                end;
                                hL.bagEquippedAt=os.clock();
                                hL.bagLastClick=0;
                            elseif hL.bagEquippedAt<=0 then
                                hL.bagEquippedAt=os.clock();
                            end;
                            local O,F=os.clock(),B:FindFirstChild("HumanoidRootPart");
                            local P,b,k,f,d,A=hL.bagBoughtAt<=0 or O-hL.bagBoughtAt>=(hL.bagBuyDelay or 0.5),hL.bagEquippedAt>0 and O-hL.bagEquippedAt>=(hL.bagEquipDelay or 0.2),hL.bagPosAt>0 and O-hL.bagPosAt>=(hL.bagPosDelay or 2.5),F~=nil and(F.Position-L.Position).Magnitude<=(hL.bagRange or 9),(hL.bagTgtMove or 0)<=(hL.bagStillMove or 3)or hL.bagPosAt>0 and O-hL.bagPosAt>=(hL.bagJumpMaxWait or 5),O-(hL.bagLastClick or 0)>=(hL.bagClickDelay or 0.35);
                            if w.Parent==B and not e and not a and P and b and k and f and d and A then
                                hL.bagLastClick=O;
                                pcall(
                                function()w.Enabled=true;
                                    w:Activate();
                                end);
                                t=os.clock();
                                if t-(hL.bagTryAt or 0)>=(hL.bagTryGap or 0.5)then
                                    hL.bagTryAt=t;
                                    hL.bagTries=(hL.bagTries or 0)+1;
                                    if hL.bagTries>=(hL.bagMaxTries or 3)then
                                        hL.bagTries=0;
                                        hL.bagTryAt=0;
                                        hL.bagResetTimers();
                                        r=true;
                                        if DL then
                                            y,i,X,QL=false,false,true,false;
                                            if hL.bagkillWasFlame then
                                                _L=true;
                                            end;
                                        else
                                            y,i,DL,T,c,n,X,QL=false,false,false,nil,{
                                            }
                                            ,0,false,true;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    else
                        X,QL=false,true;
                        if not r then
                            r=true;
                            hL.bagTries=0;
                            hL.bagTryAt=0;
                            if DL then
                                y,i,X,QL=false,false,true,false;
                                if hL.bagkillWasFlame then
                                    _L=true;
                                end;
                            elseif i then
                                y,i,T,c=false,false,nil,{
                                }
                                ;
                            else
                                E=true;
                            end;
                        end;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    task.spawn(
    function()while true do
            if DL and#c<=1 and T and not y then
                local w=T.Character;
                if w then
                    local O=w:FindFirstChild("BodyEffects");
                    if O and(O:FindFirstChild(h[67]))and O[h[67]].Value then
                        T.CharacterAdded:Wait();
                        task.wait(0.1);
                        if DL then
                            y,i,r,H,X,QL=true,true,false,true,true,false;
                        end;
                    end;
                end;
            end;
            task.wait(0.1);
        end;
    end);
    Z.Heartbeat:Connect(
    function()if I and not j then
            return;
        end;
        local w,O;
        if j and j.Character then
            w,O=j.Character,j;
        elseif T and T.Character then
            w,O=T.Character,T;
        end;
        if not w or not w:FindFirstChild("HumanoidRootPart")then
            return;
        end;
        if O==W then
            T,QL=nil,true;
            return;
        end;
        local B,F=w:FindFirstChild("Humanoid"),w:FindFirstChild("BodyEffects");
        local L,P,t=F and(F:FindFirstChild(h[113]))and F[h[113]].Value,w:FindFirstChild(h[258]),w:FindFirstChild("HumanoidRootPart");
        if L or P or not t or not B then
            return;
        end;
        if N and O then
            return;
        end;
        if C~=h[120]and C~=h[47]or _L or y then
            return;
        end;
        O=_[2].Players.LocalPlayer.Character;
        for L,t in ipairs(O:GetChildren())do
            if t:IsA("Tool")and(t:FindFirstChild(h[262]))then
                L,F=t.Handle,true;
                if C==h[47]then
                    P=getgenv().MoonSilentAim;
                    if P then
                        P.shots=(P.shots or 0)+1;
                        F=if P.los then
                        (P.los(L,B,O,w))
                        else
                        F;
                    end;
                end;
                if F then
                    D.MainEvent:FireServer(h[263],L,L.Position,B.Position,B,Vector3.new(0,0,0));
                end;
            end;
        end;
    end);
    Z.Heartbeat:Connect(
    function()if getgenv().enabled and _[2].Players.LocalPlayer.Character and(_[2].Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"))and(_[2].Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))and(_[2].Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild(h[262]))then
            local w=W.Character:FindFirstChild("BodyEffects")and(W.Character.BodyEffects:FindFirstChild(h[113]));
            if not w or not w.Value then
                local w,O=1/0;
                for B,F in pairs(_[2].Players:GetPlayers())do
                    if F~=W and not getgenv().whitelist[F.Name]and not getgenv().protectedwhitelist[F.Name]and F.Character and(F.Character:FindFirstChild("Humanoid"))and not F.Character:FindFirstChild(h[258])and not F.Character:FindFirstChild(h[239])then
                        if workspace:FindFirstChild("Players")and(workspace.Players:FindFirstChild(F.Name))and(workspace.Players:FindFirstChild(F.Name):FindFirstChild("BodyEffects"))and(workspace.Players:FindFirstChild(F.Name).BodyEffects:FindFirstChild(h[113]))and not workspace.Players:FindFirstChild(F.Name).BodyEffects[h[113]].Value then
                            B=(W.Character.HumanoidRootPart.Position-F.Character.Head.Position).Magnitude;
                            if B<w then
                                w,O=B,F;
                            end;
                        end;
                    end;
                end;
                if O and O.Character and(O.Character:FindFirstChild("Humanoid"))then
                    for w,w in pairs(W.Character:GetChildren())do
                        if w:IsA("Tool")and(w:FindFirstChild(h[262]))then
                            D.MainEvent:FireServer(h[263],w.Handle,w.Handle.Position,O.Character.Head.Position,O.Character.Head,Vector3.new(0,0,0));
                        end;
                    end;
                end;
            end;
        end;
    end);
    q=_[2].Players.LocalPlayer;
    local w,O=q.Character or(q.CharacterAdded:Wait()),"Humanoid";
    local B,F=w:FindFirstChildOfClass(O),"HumanoidRootPart";
    local O=w:FindFirstChild(F);
    q.CharacterAdded:Connect(
    function(F)w=F;
        B=F:WaitForChild("Humanoid");
        O=F:WaitForChild("HumanoidRootPart");
    end);
    function getEquippedGuns()local O,B={
        }
        ,q.Character;
        if B then
            for F,F in ipairs(B:GetChildren())do
                if F:IsA("Tool")then
                    table.insert(O,F);
                end;
            end;
        end;
        return O;
    end;
    function getAmmoCount(O)local B=q:FindFirstChild(h[264]);
        if not B then
            return nil;
        end;
        local F=B:FindFirstChild(h[265]);
        if not F then
            return nil;
        end;
        B=F:FindFirstChild(O);
        if B then
            return tonumber(B.Value);
        end;
        return nil;
    end;
    function hasGun(O)local B,F=q.Character,q:FindFirstChild("Backpack");
        if F then
            for L,L in ipairs(F:GetChildren())do
                if L:IsA("Tool")and L.Name==O then
                    return true;
                end;
            end;
        end;
        if B then
            for F,F in ipairs(B:GetChildren())do
                if F:IsA("Tool")and F.Name==O then
                    return true;
                end;
            end;
        end;
        return false;
    end;
    function getNextItemToBuy()local O=q.Character;
        if not O then
            return nil;
        end;
        if y and T and not hasGun(h[245])then
            return h[266];
        end;
        if C==h[129]and not _L and not hasGun(h[130])then
            return h[129];
        end;
        if not Guns or#Guns==0 then
            return nil;
        end;
        for B=1,#Guns,1 do
            local F=Guns[B];
            B=s[F];
            if B then
                if F==h[267]then
                    if _L and not hasGun(B.toolName)then
                        return h[120];
                    end;
                elseif(C==h[120]or C==h[47])and not hasGun(B.toolName)then
                    return h[120];
                end;
            end;
        end;
        if o and not(O:FindFirstChild(h[268])or(O:FindFirstChild(h[269])))then
            return h[270];
        end;
        return nil;
    end;
    local O=false;
    _[2]:GetService("Players").LocalPlayer.CharacterAdded:Connect(
    function()O=false;
    end);
    hL.settle=
    function(O,B,F,L)if not O or not O.Parent or not F then
            return;
        end;
        pcall(
        function()sethiddenproperty(O,h[243],nil);
        end);
        for P=1,L or 3,1 do
            if not O.Parent then
                return;
            end;
            local L=P%2==0 and 0.05 or-0.05;
            O.CFrame=F*CFrame.new(0,L,0);
            pcall(
            function()O.AssemblyLinearVelocity=Vector3.new(0,0.1,0);
                O.AssemblyAngularVelocity=Vector3.new(0,0,0);
            end);
            if B and B.Parent and B.Health>0 then
                pcall(
                function()B:ChangeState(Enum.HumanoidStateType.Running);
                end);
            end;
            _[2]:GetService("RunService").Heartbeat:Wait();
        end;
        if O.Parent then
            O.CFrame=F;
            pcall(
            function()O.AssemblyLinearVelocity=Vector3.new(0,0.1,0);
            end);
        end;
    end;
    function findGunInShop(O)for B,B in ipairs(workspace:WaitForChild(h[63]):WaitForChild(h[64]):GetChildren())do
            if B.Name:gsub(h[271],h[272]):find(O,1,true)then
                local O,F=B:FindFirstChild(h[66]),B:FindFirstChild("Humanoid");
                if O and F then
                    return B,O,F;
                end;
            end;
        end;
        return nil,nil,nil;
    end;
    task.spawn(
    function()while true do
            local O=q.Character or(q.CharacterAdded:Wait());
            local B,F=O:FindFirstChildOfClass("Humanoid"),O:FindFirstChild("HumanoidRootPart");
            if wL and B and F and B.Health>0 then
                if getNextItemToBuy()==h[266]then
                    O=h[245];
                    local L,P,t=findGunInShop(O);
                    if L and not hasGun(O)then
                        l=true;
                        local L,e=os.clock()+(hL.BUY_BUDGET or 8),true;
                        while y and not hasGun(O)do
                            if os.clock()>L then
                                break;
                            end;
                            B:UnequipTools();
                            hL.settle(F,B,t.CFrame,e and 3 or 1);
                            e=false;
                            fireclickdetector(P);
                            if B.Health<=0 then
                                break;
                            end;
                            task.wait(0.1);
                        end;
                        if hasGun(O)then
                            hL.bagBoughtAt=os.clock();
                            hL.bagResetTimers();
                            task.wait(hL.bagBuyDelay or 0.5);
                        end;
                        l,QL=false,true;
                    end;
                elseif getNextItemToBuy()==h[129]then
                    local O=h[130];
                    local L,P,t=findGunInShop(O);
                    if L and not hasGun(O)then
                        l=true;
                        local L,e=os.clock()+(hL.BUY_BUDGET or 8),true;
                        while C==h[129]and not hasGun(O)do
                            if os.clock()>L then
                                break;
                            end;
                            B:UnequipTools();
                            hL.settle(F,B,t.CFrame,e and 3 or 1);
                            e=false;
                            fireclickdetector(P);
                            if B.Health<=0 then
                                break;
                            end;
                            task.wait(0.1);
                        end;
                        l,QL=false,true;
                    end;
                elseif getNextItemToBuy()==h[120]then
                    if _L then
                        local O=h[31];
                        local L,P,t=findGunInShop(O);
                        if L and not hasGun(O)then
                            l=true;
                            local L,e=os.clock()+(hL.BUY_BUDGET or 8),true;
                            while _L and not hasGun(O)do
                                if os.clock()>L then
                                    break;
                                end;
                                B:UnequipTools();
                                hL.settle(F,B,t.CFrame,e and 3 or 1);
                                e=false;
                                fireclickdetector(P);
                                if B.Health<=0 then
                                    break;
                                end;
                                task.wait(0.1);
                            end;
                            l,QL=false,true;
                        end;
                    elseif C==h[120]or C==h[47]then
                        local O=Guns[p];
                        local L=s[O];
                        if L and O~=h[267]then
                            local P=L.toolName;
                            local t,e,a=findGunInShop(P);
                            if t and not hasGun(P)then
                                l=true;
                                local t,b=os.clock()+(hL.BUY_BUDGET or 8),true;
                                while not hasGun(P)do
                                    if os.clock()>t then
                                        break;
                                    end;
                                    B:UnequipTools();
                                    hL.settle(F,B,a.CFrame,b and 3 or 1);
                                    b=false;
                                    fireclickdetector(e);
                                    if B.Health<=0 then
                                        break;
                                    end;
                                    task.wait(0.1);
                                end;
                                l,QL=false,true;
                            end;
                        end;
                        p+=1;
                        O,L=p,#Guns;
                        if O>L then
                            p=1;
                        end;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    task.spawn(
    function()while true do
            local O=q.Character;
            if O and wL and o and getNextItemToBuy()==h[270]then
                pcall(
                function()O:FindFirstChildOfClass("Humanoid");
                    if q.Backpack:FindFirstChild(h[268])or(O:FindFirstChild(h[268]))or(O:FindFirstChild(h[269]))then
                        J,QL=false,true;
                        return;
                    end;
                    local p=workspace:WaitForChild(h[63]):WaitForChild(h[64]):FindFirstChild(math.random(1,2)==1 and h[273]or h[274]);
                    if not p then
                        return;
                    end;
                    local B=p:FindFirstChild(h[66]);
                    if not B then
                        return;
                    end;
                    J=true;
                    local F,L=os.clock()+(hL.BUY_BUDGET or 8),true;
                    while wL and o and O and not(q.Backpack:FindFirstChild(h[268])or(O:FindFirstChild(h[268])))do
                        if os.clock()>F then
                            break;
                        end;
                        local F=q.Character;
                        local P,t=F and(F:FindFirstChild("HumanoidRootPart")),F and(F:FindFirstChildOfClass("Humanoid"));
                        if P then
                            hL.settle(P,t,CFrame.new(p.Head.CFrame.Position+Vector3.new(0,-8,0)),L and 3 or 1);
                            L=false;
                        end;
                        fireclickdetector(B);
                        task.wait(0.1);
                        if not o or not wL or not F or(q.Backpack:FindFirstChild(h[268])or(F:FindFirstChild(h[268])))then
                            break;
                        end;
                    end;
                    task.spawn(
                    function()while o and wL and O do
                            local O=q.Character;
                            local p=q.Backpack:FindFirstChild(h[268])or(O:FindFirstChild(h[268]));
                            if p then
                                for B,B in ipairs(O:GetChildren())do
                                    if B:IsA("Tool")and B.Name~=h[268]then
                                        B.Parent=q.Backpack;
                                    end;
                                end;
                                p.Parent=O;
                                p:Activate();
                            end;
                            if O:FindFirstChild(h[269])then
                                p=O:FindFirstChild(h[268]);
                                if p then
                                    p.Parent=q.Backpack;
                                end;
                                J,QL=false,true;
                                break;
                            end;
                            if not o or not O or not wL then
                                break;
                            end;
                            task.wait();
                        end;
                    end);
                end);
            end;
            task.wait();
        end;
    end);
    local O,p={
        [h[21]]=h[275],[h[23]]=h[276],[h[25]]=h[277],[h[278]]=h[279],[h[27]]=h[280],[h[281]]=h[282],[h[283]]=h[284],[h[285]]=h[286],[h[31]]=h[287],[h[29]]=h[288],[h[289]]=h[290]
    }
    ,{
        [h[21]]=h[291],[h[23]]=h[292],[h[25]]=h[293],[h[278]]=h[294],[h[27]]=h[295],[h[281]]=h[296],[h[283]]=h[297],[h[285]]=h[298],[h[31]]=h[299],[h[29]]=h[300],[h[289]]=h[301]
    }
    ;
    function getAmmoCountSafe(B)local F=p[B];
        if not F then
            return 0;
        end;
        B=W.DataFolder.Inventory:FindFirstChild(F);
        if B then
            return tonumber(B.Value)or 0;
        end;
        return 0;
    end;
    function findAmmoInShopSafe(p)local B,F=workspace:WaitForChild(h[63]):WaitForChild(h[64]),O[p];
        if not F then
            return nil,nil;
        end;
        for O,p in ipairs(B:GetChildren())do
            O=p.Name:gsub(h[271],h[272]);
            if O:find(F,1,true)then
                if p:FindFirstChild(h[66])then
                    return p,O;
                end;
            end;
        end;
        return nil,nil;
    end;
    task.spawn(
    function()while true do
            for O,p in ipairs((getEquippedGuns()))do
                O=p.Name;
                if hasGun(O)then
                    p=getAmmoCount(O);
                    if p and p<=0 then
                        S=true;
                        workspace:WaitForChild(h[63]):WaitForChild(h[64]);
                        local p=findAmmoInShopSafe(O);
                        if not p then
                            S=false;
                            break;
                        end;
                        local B,F=getAmmoCountSafe(O),q.Character or(q.CharacterAdded:Wait());
                        local L,o=F:FindFirstChildOfClass("Humanoid"),F:FindFirstChild("HumanoidRootPart");
                        if p and F and o and L then
                            local F,P,t,e=p:FindFirstChild(h[66]),os.clock()+(hL.BUY_BUDGET or 8),0,true;
                            while t<6 do
                                if os.clock()>P then
                                    break;
                                end;
                                if L then
                                    L:UnequipTools();
                                end;
                                if o then
                                    hL.settle(o,L,CFrame.new(p.Head.CFrame.Position),e and 3 or 1);
                                    e=false;
                                end;
                                fireclickdetector(F);
                                if not L or L.Health<=0 then
                                    break;
                                end;
                                task.wait(0.1);
                                local p=getAmmoCount(O);
                                if p and p>B then
                                    B,t=p,t+1;
                                end;
                            end;
                        end;
                        reloadTool();
                        S,QL=false,true;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    K=h[5];
    getgenv().lastHealths={
    }
    ;
    task.spawn(
    function()while true do
            local K=q.Character;
            local O,p=K and(K:FindFirstChildOfClass("Humanoid")),K and(K:FindFirstChild("BodyEffects"));
            local B,F=p and(p:FindFirstChild(h[113])),p and(p:FindFirstChild(h[302]));
            if K then
                for L,L in ipairs(K:GetChildren())do
                    if L:IsA("Tool")and(L:FindFirstChild(h[58]))and L:FindFirstChild(h[58]).Value<=0 then
                        D.MainEvent:FireServer(h[59],L);
                    end;
                end;
            end;
            if not(S or l or J)and not y and not _L and(C==h[120]or C==h[47])then
                p=Y:FindFirstChild("Backpack");
                if p and O and O.Health>0 then
                    if Guns and#Guns>0 then
                        for L,o in ipairs(Guns)do
                            if o~=h[267]then
                                L=s[o].toolName;
                                local s=p:FindFirstChild(L);
                                if s and not K:FindFirstChild(L)then
                                    s.Parent=K;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            if x then
                D.MainEvent:FireServer(h[230],h[231]);
            end;
            if O and B and B.Value==true and(not F or F.Value==false)then
                if hL.asDone~=K then
                    hL.asDone=K;
                    wL=false;
                    local s=K;
                    task.spawn(
                    function()for L=1,hL.asBurst or 5,1 do
                            L=Y.Character;
                            local Y=L and(L:FindFirstChildOfClass("Humanoid"));
                            if not(Y and Y.Health>0)then
                                break;
                            end;
                            pcall(
                            function()Y.Health=0;
                            end);
                            task.wait(hL.asGap or 0.02);
                        end;
                        pcall(
                        function()if s and s.Parent then
                                s:BreakJoints();
                            end;
                        end);
                    end);
                end;
            elseif O and O.Health>0 and hL.asDone and hL.asDone~=K then
                hL.asDone=nil;
            end;
            if T and T.Parent==nil then
                T,E=nil,true;
            end;
            for Y=#c,1,-1 do
                F=c[Y];
                if not F or F.Parent==nil then
                    table.remove(c,Y);
                    B=n;
                    if B>=Y then
                        n=math.max(0,n-1);
                    end;
                end;
            end;
            if E and#c>0 then
                B=tick();
                if not T or B-WL>=OL then
                    O=0;
                    while O<#c do
                        n=n%#c+1;
                        K=c[n];
                        if K and K.Character then
                            p=K.Character:FindFirstChild("BodyEffects");
                            if not(p and(p:FindFirstChild(h[67]))and p[h[67]].Value)then
                                WL,T,E,r=B,K,false,false;
                                if DL then
                                    y,i,H,X,QL=true,true,true,true,false;
                                end;
                                break;
                            end;
                        end;
                        O+=1;
                    end;
                end;
            end;
            task.wait();
        end;
    end);
    Q.PlayerRemoving:Connect(
    function(K)for Y=#c,1,-1 do
            if c[Y]==K then
                table.remove(c,Y);
                local O=n;
                if O>=Y then
                    n=math.max(0,n-1);
                end;
            end;
        end;
        if T==K then
            T=nil;
            E,r=#c>0,false;
            if not E then
                y,i,DL,X,QL=false,false,false,false,true;
            end;
        end;
    end);
    task.spawn(
    function()while task.wait(0.2)do
            if getgenv().enabled1 and not T then
                if I then
                    continue;
                end;
                local K={
                    Owner
                }
                ;
                for Y,O in pairs(getgenv().sentryprotected)do
                    table.insert(K,Y);
                end;
                for Y,O in ipairs(K)do
                    Y=Q:FindFirstChild(O);
                    if Y and Y.Character then
                        local K=Y.Character;
                        local Y=K:FindFirstChild("BodyEffects");
                        local p,s=Y and(Y:FindFirstChild(h[303])),K:FindFirstChildOfClass("Humanoid");
                        if Y and p and s then
                            local Y=s.Health;
                            if getgenv().lastHealths[O]==nil then
                                getgenv().lastHealths[O]=Y;
                            end;
                            if Y+0.05<getgenv().lastHealths[O]then
                                getgenv().lastHealths[O]=Y;
                                task.wait(0.1);
                                if I then
                                    break;
                                end;
                                local p=K:FindFirstChild("BodyEffects");
                                local K=p and(p:FindFirstChild(h[303]));
                                p=K and(tostring(K.Value))or h[5];
                                if p~=h[5]then
                                    K=Q:FindFirstChild(p);
                                    if K then
                                        BL();
                                        j,G,X,QL=K,0,true,false;
                                    end;
                                end;
                            else
                                getgenv().lastHealths[O]=Y;
                            end;
                            if j and j.Character then
                                Y=j.Character:FindFirstChild("BodyEffects");
                                local K,p=Y and(Y:FindFirstChild(h[113]))and Y[h[113]].Value,Y and(Y:FindFirstChild(h[67]))and Y[h[67]].Value;
                                if getgenv().sentryStomp then
                                    local Y=K and not p and G==0;
                                    if Y then
                                        G=os.clock();
                                    end;
                                    if p or G>0 and os.clock()-G>8 then
                                        j,G,X,QL=nil,0,false,true;
                                        reloadTool();
                                    end;
                                elseif K then
                                    j,X,QL=nil,false,true;
                                    reloadTool();
                                end;
                            elseif j and getgenv().sentryStomp then
                                j,G,X,QL=nil,0,false,true;
                            end;
                        end;
                    else
                        getgenv().lastHealths[O]=nil;
                    end;
                end;
            end;
        end;
    end);
    task.spawn(
    function()while true do
            if getgenv().sentryStomp and j and not T and not(S or l or J)then
                local K=j.Character;
                local Y=K and(K:FindFirstChild("BodyEffects"));
                local O,p,s=Y and(Y:FindFirstChild(h[113]))and Y[h[113]].Value,Y and(Y:FindFirstChild(h[67]))and Y[h[67]].Value,K and(K:FindFirstChild(h[258]));
                if O and not p and not s then
                    X,QL=false,false;
                    local O,p=K:FindFirstChild("UpperTorso"),W.Character;
                    Y=p and(p:FindFirstChild("HumanoidRootPart"));
                    if O and Y then
                        Y.Velocity=Vector3.new(0.0,0.0,0.0);
                        Y.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        Y.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        Y.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                        Y.CFrame=CFrame.new(O.Position+Vector3.new(0,3.5,0));
                    end;
                    pcall(
                    function()D.MainEvent:FireServer(h[259]);
                    end);
                end;
            end;
            task.wait();
        end;
    end);
    task.spawn(
    function()while task.wait()do
            if V and V.Character and not(S or l or J)then
                local K=Q.LocalPlayer;
                if not K.Character then
                    continue;
                end;
                local Y,O=K.Character:FindFirstChild("HumanoidRootPart"),V.Character:FindFirstChild("HumanoidRootPart");
                if Y and O then
                    Y.Velocity=Vector3.new(0.0,0.0,0.0);
                    Y.RotVelocity=Vector3.new(0.0,0.0,0.0);
                    Y.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                    Y.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                    local p,s=if R==h[46]then
                    (CFrame.new(0,3,4))
                    else
                    if R==h[184]then
                    (CFrame.new(3,3,0))
                    else
                    if R==h[187]then
                    (CFrame.new(-3,3,0))
                    else
                    (CFrame.new(0,3,4)),O.CFrame;
                    K=s==s;
                    if K then
                        local O=s.Position;
                        K=math.abs(O.X)<50000 and math.abs(O.Y)<50000 and math.abs(O.Z)<50000;
                    end;
                    if K then
                        Y.CFrame=s*p;
                        Y.Velocity=Vector3.new(0.0,0.0,0.0);
                        Y.RotVelocity=Vector3.new(0.0,0.0,0.0);
                        Y.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                        Y.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                    end;
                end;
            end;
        end;
    end);
    local K=Z.Heartbeat;
    task.spawn(
    function()while K:Wait()do
            local K=W.Character;
            if(_L or y or C==h[132])and T and not QL and K then
                local Y=K:FindFirstChildOfClass("Humanoid");
                local K=Y and Y.RootPart;
                if K then
                    if not(S or l or J)and(_L or y)then
                        Y=T.Character;
                        if Y then
                            local O=Y:FindFirstChild("BodyEffects");
                            local p;
                            if O and(O:FindFirstChild(h[113]))and O[h[113]].Value then
                                p=Y:FindFirstChild("UpperTorso");
                            else
                                p=Y:FindFirstChildOfClass("Humanoid")and Y:FindFirstChildOfClass("Humanoid").RootPart;
                            end;
                            if p then
                                pcall(
                                function()sethiddenproperty(K,h[243],p);
                                end);
                            end;
                        end;
                    else
                        pcall(
                        function()sethiddenproperty(K,h[243],nil);
                        end);
                    end;
                end;
            end;
        end;
    end);
    getgenv().antiSeatEnabled=true;
    local K={
        conns={
        }
        ,hum=nil,wasOn=false,passengerBusy=false
    }
    ;
    local function Y()if os.clock()<(getgenv().antiSeatOffUntil or 0)then
            return false;
        end;
        return getgenv().antiSeatEnabled==true;
    end;
    local function O()for p=#K.conns,1,-1 do
            pcall(
            function()K.conns[p]:Disconnect();
            end);
            K.conns[p]=nil;
        end;
    end;
    local function p(s)if not s then
            return;
        end;
        pcall(
        function()s:SetStateEnabled(Enum.HumanoidStateType.Seated,true);
        end);
    end;
    local function s(B)return B and B:GetAttribute(h[304])~=nil;
    end;
    function antiSeatRefusePassenger(B)if not Y()or K.passengerBusy then
            return;
        end;
        if not s(B)then
            return;
        end;
        K.passengerBusy=true;
        task.spawn(
        function()while Y()and W.Character==B and(s(B))do
                pcall(
                function()local F=D:FindFirstChild(h[305]);
                    if F then
                        F:FireServer(h[304]);
                    end;
                end);
                local D=os.clock()+0.75;
                while Y()and W.Character==B and(s(B))and os.clock()<D do
                    task.wait(0.03);
                end;
            end;
            K.passengerBusy=false;
        end);
    end;
    local function D(s)if not s then
            return;
        end;
        s:SetStateEnabled(Enum.HumanoidStateType.Seated,false);
        if s.Sit then
            s.Sit=false;
        end;
        if s:GetState()==Enum.HumanoidStateType.Seated then
            s.Sit=false;
            s:ChangeState(Enum.HumanoidStateType.RunningNoPhysics);
        end;
    end;
    local function s(B)O();
        K.hum=nil;
        if not Y()then
            return;
        end;
        local F=B and(B:WaitForChild("Humanoid",5));
        if not F then
            return;
        end;
        K.hum=F;
        D(F);
        K.conns[#K.conns+1]=F:GetPropertyChangedSignal(h[306]):Connect(
        function()if not Y()or not F.Sit then
                return;
            end;
            F.Sit=false;
            F:ChangeState(Enum.HumanoidStateType.RunningNoPhysics);
        end);
        K.conns[#K.conns+1]=F.StateChanged:Connect(
        function(D,D)if not Y()then
                return;
            end;
            if D~=Enum.HumanoidStateType.Seated then
                return;
            end;
            F.Sit=false;
            F:ChangeState(Enum.HumanoidStateType.RunningNoPhysics);
        end);
        K.conns[#K.conns+1]=F:GetPropertyChangedSignal(h[307]):Connect(
        function()if not Y()then
                return;
            end;
            if not F.SeatPart then
                return;
            end;
            F:SetStateEnabled(Enum.HumanoidStateType.Seated,false);
            task.defer(
            function()if F and F.SeatPart then
                    F.Sit=false;
                end;
            end);
        end);
        K.conns[#K.conns+1]=Z.Stepped:Connect(
        function()if not Y()or not F.Parent then
                return;
            end;
            F:SetStateEnabled(Enum.HumanoidStateType.Seated,false);
            if F.Sit then
                F.Sit=false;
            end;
        end);
        local D=B:FindFirstChild("HumanoidRootPart");
        if D then
            K.conns[#K.conns+1]=D.ChildAdded:Connect(
            function(D)if not Y()then
                    return;
                end;
                if D:IsA(h[80])and(D.Name==h[308]or D.Name==h[309]or D.Name==h[70])then
                    D:Destroy();
                end;
            end);
        end;
        K.conns[#K.conns+1]=B:GetAttributeChangedSignal(h[304]):Connect(
        function()antiSeatRefusePassenger(B);
        end);
        antiSeatRefusePassenger(B);
    end;
    if W.Character then
        s(W.Character);
    end;
    q.CharacterAdded:Connect(
    function(D)w=D;
        task.spawn(
        function()D:WaitForChild("Humanoid",10);
            if W.Character==D then
                s(D);
            end;
        end);
    end);
    Z.Heartbeat:Connect(
    function()if not Y()then
            return;
        end;
        local D=W.Character;
        local w=D and(D:FindFirstChildOfClass("Humanoid"));
        if not w or not w.Sit then
            return;
        end;
        w.Sit=false;
    end);
    task.spawn(
    function()local D=0;
        while true do
            task.wait(0.1);
            D=(D+1)%10;
            local w=W.Character;
            local q=w and(w:FindFirstChildOfClass("Humanoid"));
            if Y()then
                if not K.wasOn then
                    K.wasOn=true;
                    s(w);
                elseif D==0 and q and(q~=K.hum or not K.hum.Parent)then
                    s(w);
                end;
            elseif K.wasOn then
                K.wasOn=false;
                K.passengerBusy=false;
                O();
                K.hum=nil;
                p(q);
            end;
        end;
    end);
    g=_[2]:GetService("Workspace");
    local K={
    }
    ;
    function stripAnimations(Y)if Y:GetAttribute(h[310])then
            return;
        end;
        Y:SetAttribute(h[310],true);
        local D=Y:WaitForChild("Humanoid",5);
        if not D then
            return;
        end;
        local w=D:FindFirstChildOfClass("Animator");
        if w then
            w:Destroy();
        end;
        w=Y:FindFirstChild(h[311]);
        if w then
            w.Disabled=true;
        end;
        D.AutoRotate=false;
    end;
    function onPlayer(Y)if Y==W then
            return;
        end;
        if Y.Character then
            stripAnimations(Y.Character);
        end;
        local D=K[Y];
        if D then
            pcall(
            function()D:Disconnect();
            end);
        end;
        K[Y]=Y.CharacterAdded:Connect(stripAnimations);
    end;
    function EnableAntiServerLagger()for Y,Y in ipairs(Q:GetPlayers())do
            onPlayer(Y);
        end;
        K.playerAdded=Q.PlayerAdded:Connect(onPlayer);
        K.playerRemoving=Q.PlayerRemoving:Connect(
        function(Y)local D=K[Y];
            if D then
                pcall(
                function()D:Disconnect();
                end);
                K[Y]=nil;
            end;
        end);
    end;
    EnableAntiServerLagger();
    if BlackScreen then
        pcall(
        function()local K,Y=_[2]:GetService("Players").LocalPlayer,workspace.CurrentCamera;
            Y.CameraType=Enum.CameraType.Scriptable;
            Y.CFrame=CFrame.new(99999,99999,99999);
            K.CharacterAdded:Connect(
            function()task.wait(1);
                Y.CameraType=Enum.CameraType.Scriptable;
                Y.CFrame=CFrame.new(99999,99999,99999);
            end);
            workspace.Terrain:Clear();
            for Y,Y in pairs(workspace:GetDescendants())do
                if Y:IsA(h[312])or(Y:IsA(h[313]))or(Y:IsA(h[34]))or(Y:IsA(h[314]))then
                    Y:Destroy();
                end;
                if Y:IsA("BasePart")then
                    Y.Transparency=1;
                    Y.CastShadow=false;
                    Y.Material=Enum.Material.SmoothPlastic;
                    if Y:FindFirstChild(h[316])then
                        Y.SurfaceAppearance:Destroy();
                    end;
                end;
            end;
            local Y=Instance.new(h[317],K:WaitForChild(h[50]));
            Y.Name=h[318];
            Y.Parent=_[2].CoreGui;
            Y.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
            K=Instance.new(h[319],Y);
            K.BackgroundColor3=Color3.new(0,0,0);
            K.Position=UDim2.new(-0.5,0,-0.5,0);
            K.Size=UDim2.new(2,0,2,0);
            K.ZIndex=9999;
        end);
    end;
    setfpscap(FPSCap);
    pcall(
    function()settings().Rendering.QualityLevel=h[320];
        UserSettings():GetService(h[321]).MasterVolume=0;
    end);
    pcall(
    function()local K=workspace:FindFirstChild(h[322])and(workspace.MAP:FindFirstChild(h[323]))and(workspace.MAP.Indestructible:FindFirstChild(h[324]));
        if K then
            K:Destroy();
        end;
    end);
    pcall(
    function()pcall(
        function()for K,K in ipairs(workspace:GetDescendants())do
                if K:IsA("BasePart")then
                    K.Material=Enum.Material.Plastic;
                    K.Color=Color3.fromRGB(0,0,0);
                    K.Reflectance=0;
                    K.CastShadow=false;
                end;
            end;
            workspace.DescendantAdded:Connect(
            function(K)if K:IsA("BasePart")then
                    K.Material=Enum.Material.Plastic;
                    K.Color=Color3.fromRGB(0,0,0);
                    K.Reflectance=0;
                    K.CastShadow=false;
                end;
            end);
        end);
        pcall(
        function()local K=_[2]:GetService("Workspace");
            _[2]:GetService("Players").LocalPlayer.Idled:Connect(
            function()K:CaptureController();
                K:ClickButton2(Vector2.new());
            end);
        end);
    end);
    (
    function()local
        function K(Y)pcall(
            function()warn(h[326]..tostring(Y));
            end);
        end;
        local Y=_[2]:GetService("Players");
        local D,w,Q,W,O,q,p=Y.LocalPlayer,_[2]:GetService("RunService"),Vector3.new,task.spawn,task.wait,task.delay,cloneref or
        function(s)return s;
        end;
        local function s()return D.Character;
        end;
        local function Z()local B=D.Character;
            return B and(B:FindFirstChild("HumanoidRootPart"));
        end;
        local function B()local F=D.Character;
            return F and(F:FindFirstChildOfClass("Humanoid"));
        end;
        local function F(L,X,x,c)if not L or not L.Parent or not x then
                return;
            end;
            for n=1,c or 3,1 do
                if not L.Parent then
                    return;
                end;
                local c=n%2==0 and 0.05 or-0.05;
                L.CFrame=x*CFrame.new(0,c,0);
                pcall(
                function()L.AssemblyLinearVelocity=Q(0,0.1,0);
                    L.AssemblyAngularVelocity=Q(0,0,0);
                end);
                if X and X.Parent and X.Health>0 then
                    pcall(
                    function()X:ChangeState(Enum.HumanoidStateType.Running);
                    end);
                end;
                w.Heartbeat:Wait();
            end;
            if L.Parent then
                L.CFrame=x;
                pcall(
                function()L.AssemblyLinearVelocity=Q(0,0.1,0);
                end);
            end;
        end;
        local L,X,x,c,n,o,P,t,e=os.clock,fireproximityprompt,p(_[2]:GetService(h[36])),Vector3.new(-236.33,25.75,450.13),false,false,0,0;
        local p,a,H,b,G=0,false,false,false;
        local N,E,r=false;
        local k,f,d=os.clock(),0,0;
        local function g()return workspace:FindFirstChild(h[327]);
        end;
        local function A()local z=B();
            if z then
                local u,m=pcall(
                function()return z.Sit or z.SeatPart~=nil;
                end);
                if u and m then
                    return true;
                end;
            end;
            local z=g();
            return z and(z:FindFirstChild(D.Name))or nil;
        end;
        local function z(u)if not(u and u.Parent)then
                return false;
            end;
            if u.Name==D.Name then
                return true;
            end;
            return not Y:FindFirstChild(u.Name);
        end;
        local function u()local m=B();
            local R=m and m.SeatPart;
            if R then
                return R;
            end;
            m=g();
            local i=m and(m:FindFirstChild(D.Name));
            if not i then
                return nil;
            end;
            if i:IsA("BasePart")then
                return i;
            end;
            R,m=pcall(
            function()return i.PrimaryPart;
            end);
            if R and m then
                return m;
            end;
            return i:FindFirstChildWhichIsA("BasePart",true);
        end;
        local function m(R)if not R then
                return false;
            end;
            local i=R.Position;
            return i.Magnitude<20000 and i.Y>-200;
        end;
        local function R(i)if not i then
                return nil;
            end;
            local hL=i:FindFirstChild(h[328]);
            if hL and(hL:IsA(h[329]))then
                return hL;
            end;
            if hL then
                local KL=hL:FindFirstChildWhichIsA(h[329],true);
                if KL then
                    return KL;
                end;
            end;
            return i:FindFirstChildWhichIsA(h[329],true);
        end;
        local function i(hL)local KL,YL=pcall(
            function()return hL:GetPivot();
            end);
            if KL and YL then
                return YL.Position;
            end;
            KL=hL:FindFirstChildWhichIsA("BasePart",true);
            return KL and KL.Position or nil;
        end;
        local hL;
        local function KL()if hL and hL.Parent then
                return hL;
            end;
            hL=nil;
            local YL=workspace:FindFirstChild(h[330]);
            if YL then
                for DL,DL in ipairs(YL:GetDescendants())do
                    if DL:IsA(h[329])then
                        hL=DL;
                        break;
                    end;
                end;
            end;
            if not hL then
                local DL,wL=60;
                for WL,WL in ipairs(workspace:GetDescendants())do
                    if WL:IsA(h[329])and WL.Parent and(WL.Parent:IsA("BasePart"))then
                        YL=(WL.Parent.Position-c).Magnitude; -- deobfuscated by valx
                        if YL<DL then
                            DL,wL=YL,WL;
                        end;
                    end;
                end;
                hL=wL;
            end;
            return hL;
        end;
        local c;
        local function YL()if c and c.Parent then
                return c;
            end;
            c=x:FindFirstChild(h[331],true);
            return c;
        end;
        local function x(c,DL,wL,WL)local OL,qL=Z(),B();
            if not(OL and qL and c and DL and X)then
                return false;
            end;
            local pL=c.HoldDuration;
            pcall(
            function()c.HoldDuration=0;
            end);
            local sL=L()+wL;
            while n and L()<sL do
                if not OL.Parent or qL.Health<=0 then
                    break;
                end;
                if WL()then
                    break;
                end;
                F(OL,qL,CFrame.new(DL),2);
                pcall(X,c);
                O(0.2);
            end;
            pcall(
            function()c.HoldDuration=pL;
            end);
            return WL();
        end;
        local function F(c)local DL,wL=R(c),i(c);
            if not(DL and wL)then
                return false;
            end;
            return x(DL,wL,2,
            function()return A()~=nil;
            end);
        end;
        local function c()if o then
                return;
            end;
            o=true;
            getgenv().godmodeActive=true;
            pcall(
            function()if A()then
                    return;
                end;
                local i=Z();
                if not i then
                    return;
                end;
                local DL=i.CFrame;
                if z(e)and(F(e))then
                    return;
                end;
                local wL=g();
                if wL then
                    for WL,WL in ipairs(wL:GetChildren())do
                        if WL~=e and(z(WL))and(R(WL))then
                            if F(WL)then
                                e=WL;
                                return;
                            end;
                        end;
                    end;
                end;
                if L()-(p or 0)<15 then
                    return;
                end;
                local R,WL=g(),KL();
                if not(R and WL)then
                    return;
                end;
                wL=WL.Parent;
                if not(wL and(wL:IsA("BasePart")))then
                    return;
                end;
                local g={
                }
                ;
                for OL,OL in ipairs(R:GetChildren())do
                    g[OL]=true;
                end;
                local OL;
                x(WL,wL.Position,3,
                function()for x,x in ipairs(R:GetChildren())do
                        if not g[x]then
                            OL=x;
                            return true;
                        end;
                    end;
                    return false;
                end);
                if OL then
                    p,e=L(),OL;
                    F(OL);
                end;
                if i.Parent and not A()then
                    i.CFrame=DL;
                    i.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                end;
            end);
            o=false;
            getgenv().godmodeActive=false;
        end;
        local function p()local F=YL();
            if F then
                pcall(
                function()F:FireServer(h[332]);
                end);
            end;
            local F=B();
            if F then
                pcall(
                function()F.Sit=false;
                end);
                pcall(
                function()F.Jump=true;
                end);
                pcall(
                function()F:ChangeState(Enum.HumanoidStateType.Jumping);
                end);
                local B=F.SeatPart;
                if B then
                    pcall(
                    function()B.Disabled=true;
                        q(0.1,
                        function()pcall(
                            function()B.Disabled=false;
                            end);
                        end);
                    end);
                end;
            end;
            local q=Z();
            if q then
                for B,B in ipairs(q:GetChildren())do
                    if B:IsA(h[80])and(B.Name==h[308]or B.Name==h[70])then
                        pcall(
                        function()B:Destroy();
                        end);
                    end;
                end;
            end;
        end;
        local q,B=-9.223372036854776E18,9.223372036854776E18;
        local function F()local x,g=pcall(math.random,q,B);
            if x then
                return g;
            end;
            return math.random(-1000000000,1000000000)*1000000000;
        end;
        local function q()if I then
                return true;
            end;
            if j or V or cL then
                return true;
            end;
            if U or FL or SL then
                return true;
            end;
            if S or l or J then
                return true;
            end;
            if T and(v or M)then
                return true;
            end;
            return false;
        end;
        W(
        function()while true do
                w.Heartbeat:Wait();
                if n and(q())then
                    if not b then
                        b=true;
                        godmodeSettle(4);
                    end;
                    getgenv().godmodePauseUntil=L()+4;
                else
                    b=b and false;
                end;
                if n and L()<(getgenv().godmodePauseUntil or 0)then
                    if not H then
                        H=true;
                        getgenv().godmodeActive=false;
                        W(p);
                    end;
                    k,G=L(),nil;
                    continue;
                elseif H then
                    H=false;
                    k,G,d=L(),nil,L();
                end;
                if n then
                    getgenv().antiSeatOffUntil=L()+1;
                end;
                if n and not o and L()-d>20 then
                    d,e,hL,P,f=L(),nil,nil,0,0;-- deobfuscated by valx
                    k=L();
                    W(p);
                end;
                if n and not o then
                    local q,B,S=Z(),s(),A()~=nil;
                    local l=u()or q;
                    if S then
                        local J=f;
                        if J==0 then
                            f=L();
                        end;
                    else
                        f=0;
                    end;
                    if not(q and l)then
                        k,G=L(),nil;
                    else
                        local J=L()-k;
                        if J>4 then
                            if S then
                                p();
                            elseif G and J>7 then
                                pcall(
                                function()q.CFrame=G;
                                    q.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                                    q.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                                    w.RenderStepped:Wait();
                                    q.CFrame=G;
                                    q.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                                    q.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                                end);
                            end;
                            if J>8 then
                                G=nil;
                                k=L();
                            end;
                        end;
                        local x=false;
                        if B then
                            local o,H=B:FindFirstChild(h[333]),B:FindFirstChild(h[334]);
                            if o and H then
                                local b,I=pcall(
                                function()return o.CFrame~=o.CFrame and H.CFrame~=H.CFrame;
                                end);
                                x=b and I;
                            end;
                        end;
                        if x~=N then
                            N=x;
                            pcall(
                            function()local o=workspace.CurrentCamera;
                                if not o then
                                    return;
                                end;
                                if x then
                                    E,r=o.CameraType,o.CameraSubject;
                                    o.CameraType=Enum.CameraType.Scriptable;
                                else
                                    local H=B and B.Parent and(B:FindFirstChildOfClass("Humanoid"));
                                    local B=if not H and r and r.Parent then
                                    r
                                    else
                                    H;
                                    if B then
                                        o.CameraSubject=B;
                                    end;
                                    o.CameraType=E~=Enum.CameraType.Scriptable and E or Enum.CameraType.Custom;
                                    E,r=nil,nil;
                                end;
                            end);
                        end;
                        if x then
                            d=L();
                        end;
                        if not x and(not S or L()-f>0.25)then
                            local B,x=pcall(
                            function()return l.AssemblyLinearVelocity;
                            end);
                            if B then
                                pcall(
                                function()l.AssemblyLinearVelocity=Q(F(),F(),F());
                                    w.RenderStepped:Wait();
                                    l.AssemblyLinearVelocity=x;
                                end);
                            end;
                            if not S then
                                k=L();
                                if not G then
                                    J,B=pcall(
                                    function()return q.CFrame;
                                    end);
                                    local w=J and(m(B));
                                    if w then
                                        G=B;
                                    end;
                                end;
                                if L()-P>2 then
                                    P=L();
                                    W(c);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end);
        function godmodeSettle(w)if not n then
                return;
            end;
            getgenv().godmodePauseUntil=L()+(w or 25);
            W(
            function()for w=1,8,1 do
                    if not A()then
                        break;
                    end;
                    local w=u();
                    if w then
                        pcall(
                        function()w.AssemblyLinearVelocity=Q(0,0,0);
                            w.AssemblyAngularVelocity=Q(0,0,0);
                        end);
                    end;
                    p();
                    O(0.1);
                end;
                for w=1,20,1 do
                    local q=Z();
                    if not q then
                        break;
                    end;
                    local B,F=pcall(
                    function()return q.CFrame;
                    end);
                    if B and(m(F))then
                        break;
                    end;
                    local S=G and(m(G))and G or nil;
                    if not S then
                        w=Y:FindFirstChild(tostring(getgenv().Owner));
                        F=w and w.Character;
                        B=F and(F:FindFirstChild("HumanoidRootPart"));
                        if B and(m(B.CFrame))then
                            S=B.CFrame+Q(0,5,0);
                        end;
                    end;
                    S=S or(CFrame.new(0,300,0));
                    pcall(
                    function()q.CFrame=S;
                        q.AssemblyLinearVelocity=Q(0,0,0);
                        q.AssemblyAngularVelocity=Q(0,0,0);
                    end);
                    O(0.05);
                end;
            end);
        end;
        D.CharacterAdded:Connect(
        function(Y)if not n then
                return;
            end;
            if N then
                N=false;
                pcall(
                function()local D=workspace.CurrentCamera;
                    if not D then
                        return;
                    end;
                    local w=Y:WaitForChild("Humanoid",5);
                    if w then
                        D.CameraSubject=w;
                    end;
                    D.CameraType=E~=Enum.CameraType.Scriptable and E or Enum.CameraType.Custom;
                end);
                E,r=nil,nil;
            end;
            G,f,P=nil,0,0;
            k=L();
            d=L();
            local Y=z(e);
            if not Y then
                e=nil;
            end;
        end);
        W(
        function()while true do
                O(1);
                pcall(
                function()if N then
                        return;
                    end;
                    local Y=workspace.CurrentCamera;
                    if not Y or Y.CameraType~=Enum.CameraType.Scriptable then
                        return;
                    end;
                    local D=s();
                    local w=D and(D:FindFirstChildOfClass("Humanoid"));
                    if w then
                        Y.CameraSubject=w;
                        Y.CameraType=Enum.CameraType.Custom;
                    end;
                end);
            end;
        end);
        getgenv().godmodeOn=false;
        function setGodmode(Y)n=Y==true;
            if n then
                Y=L()+10;
                if Y>(getgenv().auraHoldUntil or 0)and(getgenv().auraHoldUntil or 0)<L()then
                    getgenv().auraHoldUntil=Y;
                end;
            else
                getgenv().auraHoldUntil=0;
            end;
            t,P=0,0;
            k=L();
            d,f=L(),0;
            if not n then
                getgenv().antiSeatOffUntil=0;
            end;
            if not n then
                getgenv().godmodeActive=false;
            end;
            getgenv().godmodeOn=n;
            if not n then
                if N then
                    N=false;
                    pcall(
                    function()local Y=workspace.CurrentCamera;
                        if not Y then
                            return;
                        end;
                        local D=s();
                        Y.CameraSubject=r or D and(D:FindFirstChildOfClass("Humanoid"));
                        Y.CameraType=E or Enum.CameraType.Custom;
                    end);
                    E,r=nil,nil;
                end;
                local Y=G;
                W(
                function()for D=1,8,1 do
                        local D=u();
                        if D then
                            pcall(
                            function()D.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                                D.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                            end);
                        end;
                        if not A()then
                            break;
                        end;
                        p();
                        O(0.25);
                    end;
                    for D=1,10,1 do
                        local D=Z();
                        if not D or not Y then
                            break;
                        end;
                        local w,Q=pcall(
                        function()return D.CFrame;
                        end);
                        if w and(m(Q))then
                            break;
                        end;
                        pcall(
                        function()D.CFrame=Y;
                            D.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);
                            D.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);
                        end);
                        O(0.1);
                    end;
                    G=nil;
                end);
            else
                G=nil;
            end;
            if n and not a then
                W(
                function()if not X then
                        a=true;
                        K(h[335]);
                    elseif not KL()then
                        a=true;
                        K(h[336]);
                    end;
                end);
            end;
        end;
    end)();
    (
    function()local K=getgenv().MoonGodblock;
        if K then
            return;
        end;
        K={
            on=false,range=10,closeRange=7,debug=false,hold=0,hurtUntil=0,lastHp=nil,animIds={
            }
            ,speed=nil,blockArgs=nil,flags=setmetatable({
            }
            ,{
                __mode="k"
            }
            )
        }
        ;
        getgenv().MoonGodblock=K;
        local Y,D,w=_[2]:GetService("Players"),_[2]:GetService("RunService"),_[2]:GetService(h[36]);
        local Q=Y.LocalPlayer;
        local function W()return Q.Character;
        end;
        local function O()local q=W();
            return q and(q:FindFirstChildOfClass("Humanoid"));
        end;
        local function q()local p=W();
            return p and(p:FindFirstChild("HumanoidRootPart"));
        end;
        local function W()local p=O();
            return p and(p:FindFirstChildOfClass("Animator"))or nil;
        end;
        if type(hookmetamethod)==h[338]and type(checkcaller)==h[338]then
            pcall(
            function()local p;
                p=hookmetamethod(_[2],h[339],
                function(s,...)local Z,B=pcall(
                    function()return getnamecallmethod and(getnamecallmethod())or h[5];
                    end);
                    if Z and B==h[340]and not checkcaller()then
                        if select(1,...)==h[341]then
                            K.blockArgs=table.pack(...);
                        end;
                    end;
                    return p(s,...);
                end);
            end);
        end;
        local function p(s)local Z=s:lower();
            return Z:find(h[247])or(Z:find(h[248]))or(Z:find(h[249]))or(Z:find(h[250]))or(Z:find(h[246]))or(Z:find(h[251]))or(Z:find(h[254]))or(Z:find(h[253]))or(Z:find(h[252]));
        end;
        local function s(Z)local B={
            }
            ;
            if not Z then
                return B;
            end;
            for F,L in ipairs(Z:GetPlayingAnimationTracks())do
                F=L.Animation and L.Animation.AnimationId;
                if F then
                    B[F]=L;
                end;
            end;
            return B;
        end;
        local function Z(B)local F=W();
            if not F then
                return;
            end;
            for L,S in pairs(s(F))do
                local F=false;
                pcall(
                function()F=S.Looped;
                end);
                if not B[L]and not F and not p(S.Name)then
                    K.animIds[L]=true;
                    pcall(
                    function()S:Stop(0);
                    end);
                end;
            end;
        end;
        local function B()local F=W();
            if not F then
                return;
            end;
            for L,S in ipairs(F:GetPlayingAnimationTracks())do
                L=S.Animation and S.Animation.AnimationId;
                if L and K.animIds[L]then
                    pcall(
                    function()S:Stop(0);
                    end);
                end;
            end;
        end;
        local function F(L)local S=O();
            if not S or S.Health<=0 then
                return;
            end;
            if not L then
                if S.WalkSpeed>0 then
                    K.speed=S.WalkSpeed;
                end;
            elseif K.speed and S.WalkSpeed<K.speed then
                pcall(
                function()S.WalkSpeed=K.speed;
                end);
            end;
        end;
        local function L(S)local l=S and(S:FindFirstChildOfClass("Humanoid"));
            S=l and(l:FindFirstChildOfClass("Animator"));
            if not S then
                return false;
            end;
            for l,l in ipairs(S:GetPlayingAnimationTracks())do
                if not p(l.Name)then
                    return true;
                end;
            end;
            return false;
        end;
        local function p(S)for l,l in ipairs(S:GetChildren())do
                if l:IsA("Tool")then
                    return true;
                end;
            end;
            return false;
        end;
        local function S(l)local J=l:FindFirstChild("BodyEffects");
            if not J then
                return false;
            end;
            local X,x,c=K.flags[l],{
            }
            ,false;
            for n,o in ipairs(J:GetChildren())do
                if o:IsA(h[19])then
                    n=o.Name:lower();
                    if not(n:find(h[342])or(n:find(h[343]))or(n:find(h[344])))then
                        x[o.Name]=o.Value;
                        c=if o.Value and X and X[o.Name]==false then
                        true
                        else
                        c;
                    end;
                end;
            end;
            K.flags[l]=x;
            return c;
        end;
        local function l()local J=O();
            if J then
                local O=J.Health;
                if K.lastHp and O<K.lastHp and O>0 then
                    K.hurtUntil=os.clock()+1.5;
                end;
                K.lastHp=O;
            end;
            if os.clock()<K.hurtUntil then
                return true;
            end;
            J=q();
            if not J then
                return false;
            end;
            local O=J.Position;
            for q,X in ipairs(Y:GetPlayers())do
                if X~=Q then
                    J=X.Character;
                    local Y,Q=J and(J:FindFirstChild("HumanoidRootPart")),J and(J:FindFirstChildOfClass("Humanoid"));
                    if Y and Q and Q.Health>0 then
                        q=O-Y.Position;
                        local Q=q.Magnitude;
                        if Q<=K.range then
                            local O=J:FindFirstChild("BodyEffects");
                            local x,c,n=O and(O:FindFirstChild(h[113]))and O[h[113]].Value,Q<5 or q.Unit:Dot(Y.CFrame.LookVector)>0.5,L(J)or(S(J));
                            if not x and c and(p(J))and(n or Q<=(K.closeRange or 7))then
                                if K.debug then
                                    warn(h[345],X.Name,h[346],math.floor(Q),h[347],n);
                                end;
                                return true;
                            end;
                        end;
                    end;
                end;
            end;
            return false;
        end;
        task.spawn(
        function()while true do
                if not K.on then
                    K.hold=0;
                    pcall(B);
                    pcall(F,false);
                    task.wait(0.2);
                else
                    local Y,Q=pcall(l);
                    if Y and Q then
                        K.hold=os.clock()+0.6;
                    end;
                    Y=os.clock()<K.hold;
                    pcall(F,Y);
                    if Y then
                        Q=w:FindFirstChild(h[305]);
                        if K.debug and not Q then
                            warn(h[348]);
                        end;
                        if Q then
                            if K.debug then
                                warn(h[349]);
                            end;
                            local Y,w=s(W()),K.blockArgs;
                            Q:FireServer(w and w[1]or h[341],true);
                            D.RenderStepped:Wait();
                            Q:FireServer(w and w[1]or h[341],false);
                            pcall(Z,Y);
                        end;
                        pcall(B);
                    else
                        task.wait(0.1);
                    end;
                end;
            end;
        end);
    end)();
    (
    function()if getgenv().MoonSilentAim then
            return;
        end;
        local K={
            on=true,hooked=false
        }
        ;
        getgenv().MoonSilentAim=K;
        local Y,D,w=_[2]:GetService("Players"),_[2]:GetService(h[36]),_[2]:GetService(h[20]);
        local Q=Y.LocalPlayer;
        local function W(O)if not O or O==Q then
                return nil;
            end;
            if getgenv().whitelist and getgenv().whitelist[O.Name]then
                return nil;
            end;
            if getgenv().protectedwhitelist and getgenv().protectedwhitelist[O.Name]then
                return nil;
            end;
            local Q=O.Character;
            if not Q then
                return nil;
            end;
            O=Q:FindFirstChildOfClass("Humanoid");
            if not O or O.Health<=0 then
                return nil;
            end;
            if Q:FindFirstChild(h[258])then
                return nil;
            end;
            if Q:FindFirstChildOfClass(h[239])then
                return nil;
            end;
            O=Q:FindFirstChild("BodyEffects");
            local q=O and(O:FindFirstChild(h[113])or(O:FindFirstChild(h[350])));
            if q and q.Value==true then
                return nil;
            end;
            return Q:FindFirstChild("Humanoid")or(Q:FindFirstChild("HumanoidRootPart"));
        end;
        K.target=
        function()local Q=T or j;
            if Q then
                local O=Q.Character;
                local q=O and(O:FindFirstChildOfClass("Humanoid"));
                if not(O and q and q.Health>0)then
                    return nil;
                end;
                return O:FindFirstChild("Humanoid")or(O:FindFirstChild("HumanoidRootPart"));
            end;
            Q=workspace.CurrentCamera;
            if not Q then
                return nil;
            end;
            local O,q,p=w:GetMouseLocation(),1/0;
            for w,s in ipairs(Y:GetPlayers())do
                w=W(s);
                if w then
                    local Y,W=Q:WorldToViewportPoint(w.Position);
                    if W and Y.Z>0 then
                        s=(Vector2.new(Y.X,Y.Y)-O).Magnitude;
                        if s<q then
                            q,p=s,w;
                        end;
                    end;
                end;
            end;
            return p;
        end;
        K.hook=
        function()if K.hooked then
                return true;
            end;
            return pcall(
            function()local Y=D:FindFirstChild(h[351]);
                local D=Y and(Y:FindFirstChild(h[352]));
                if not D then
                    return;
                end;
                local Y=require(D);
                if type(Y)~=h[353]or type(Y.getAim)~=h[338]then
                    return;
                end;
                local D=Y.getAim;
                Y.getAim=
                function(...)K.calls=(K.calls or 0)+1;
                    if K.on and C==h[47]and not _L and not y then
                        local Y,w,Q={
                            ...
                        }
                        ;
                        for W,W in ipairs(Y)do
                            if w==nil and typeof(W)==h[75]then
                                w=W;
                            else
                                Q=if Q==nil and type(W)==h[354]then
                                W
                                else
                                Q;
                            end;
                        end;
                        if w then
                            Y=K.target();
                            if Y and Y.Parent then
                                local W=Y.Position-w;
                                local w=W.Magnitude;
                                if w>0 then
                                    K.redirects=(K.redirects or 0)+1;
                                    if K.debug and K.redirects%20==1 then
                                        warn(h[355],Y.Parent and Y.Parent.Name,h[346],math.floor(w));
                                    end;
                                    return W.Unit,Q and(math.min(w,Q))or w;
                                end;
                            elseif K.debug then
                                K.noTarget=(K.noTarget or 0)+1;
                            end;
                        elseif K.debug then
                            K.noOrigin=(K.noOrigin or 0)+1;
                        end;
                    end;
                    return D(...);
                end;
                K.hooked=true;
            end)and K.hooked;
        end;
        task.spawn(
        function()for Y=1,30,1 do
                if K.hook()then
                    return;
                end;
                task.wait(2);
            end;
            warn(h[356]);
        end);
        K.report=
        function()local Y=T or j;
            warn((h[357]..h[358]):format(tostring(K.hooked),Y and Y.Name or h[359],K.shots or 0,K.calls or 0,K.redirects or 0,tostring(K.requireLOS),tostring(C),tostring(QL)));
        end;
        K.requireLOS=false;
        K.maxRange=500;
        K.los=
        function(h,Y,D,w)if not(h and Y)then
                return false;
            end;
            local Q=h.Position;
            local W=Y.Position-Q;
            h=W.Magnitude;
            if h<=0 then
                return false;
            end;
            if h>(K.maxRange or 500)then
                return false;
            end;
            if not K.requireLOS then
                return true;
            end;
            h,Y=pcall(
            function()local K=RaycastParams.new();
                K.FilterType=Enum.RaycastFilterType.Exclude or Enum.RaycastFilterType.Blacklist;
                K.FilterDescendantsInstances={
                    D,w
                }
                ;
                return workspace:Raycast(Q,W,K)==nil;
            end);
            return not h or Y;
        end;
    end)();
    if _[3]==nil or not({
        [9]=true
    }
    )[getfenv()[_[3]]]or getfenv()[_[3]]==nil or getfenv()[_[3]]>10 or getfenv()[_[3]]<9 or getfenv()[_[3]]==0 then
        while 1 do
        end;
    end;
end;
