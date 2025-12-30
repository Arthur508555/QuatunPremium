--[[ QUATUN PREMIUM | OBFUSCATED UI LIB ]]

local _0xA,_0xB,_0xC,_0xD,_0xE =
    string.char,
    game,
    Instance.new,
    Color3.fromRGB,
    UDim2.new

local _S = function(t)
    local r = ""
    for i = 1, #t do
        r = r .. _0xA(t[i])
    end
    return r
end

local _G1 = {}
local _G2 = _0xB:GetService(_S({80,108,97,121,101,114,115}))
local _G3 = _0xB:GetService(_S({85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101}))
local _G4 = _G2.LocalPlayer

function _G1[_S({67,114,101,97,116,101,87,105,110,100,111,119})](_,cfg)
    cfg = cfg or {}

    local _T = cfg[_S({84,105,116,108,101})] or _S({81,117,97,116,117,110,32,80,114,101,109,105,117,109})
    local _Z = cfg[_S({83,105,122,101})] or _0xE(0,480,0,320)

    local _SG = _0xC(_S({83,99,114,101,101,110,71,117,105}))
    _SG[_S({82,101,115,101,116,79,110,83,112,97,119,110})] = false
    _SG.Parent = _G4:WaitForChild(_S({80,108,97,121,101,114,71,117,105}))

    local _M = _0xC(_S({70,114,97,109,101}))
    _M.Size = _Z
    _M.Position = _0xE(0.5,-_Z.X.Offset/2,0.5,-_Z.Y.Offset/2)
    _M.BackgroundColor3 = _0xD(18,18,18)
    _M.BorderSizePixel = 0
    _M.Active = true
    _M.Parent = _SG

    local _CR = _0xC(_S({85,73,67,111,114,110,101,114}))
    _CR.CornerRadius = UDim.new(0,12)
    _CR.Parent = _M

    local _TP = _0xC(_S({70,114,97,109,101}))
    _TP.Size = _0xE(1,0,0,42)
    _TP.BackgroundColor3 = _0xD(28,28,28)
    _TP.BorderSizePixel = 0
    _TP.Parent = _M

    local _TX = _0xC(_S({84,101,120,116,76,97,98,101,108}))
    _TX.Size = _0xE(1,-12,1,0)
    _TX.Position = _0xE(0,12,0,0)
    _TX.BackgroundTransparency = 1
    _TX.Text = _T
    _TX.Font = Enum.Font.GothamBold
    _TX.TextSize = 17
    _TX.TextColor3 = Color3.new(1,1,1)
    _TX.TextXAlignment = Enum.TextXAlignment.Left
    _TX.Parent = _TP

    local _d,_ds,_sp = false,nil,nil

    _TP.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            _d = true
            _ds = i.Position
            _sp = _M.Position
        end
    end)

    _G3.InputChanged:Connect(function(i)
        if _d and i.UserInputType == Enum.UserInputType.MouseMovement then
            local _dl = i.Position - _ds
            _M.Position = _0xE(
                _sp.X.Scale,
                _sp.X.Offset + _dl.X,
                _sp.Y.Scale,
                _sp.Y.Offset + _dl.Y
            )
        end
    end)

    _G3.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            _d = false
        end
    end)

    local _W = {}

    function _W[_S({66,117,116,116,111,110})](_,txt,cb)
        local _B = _0xC(_S({84,101,120,116,66,117,116,116,111,110}))
        _B.Size = _0xE(1,-24,0,42)
        _B.Position = _0xE(0,12,0,60)
        _B.BackgroundColor3 = _0xD(40,40,40)
        _B.Text = txt or _S({66,117,116,116,111,110})
        _B.TextColor3 = Color3.new(1,1,1)
        _B.Font = Enum.Font.Gotham
        _B.TextSize = 14
        _B.BorderSizePixel = 0
        _B.Parent = _M

        local _BC = _0xC(_S({85,73,67,111,114,110,101,114}))
        _BC.CornerRadius = UDim.new(0,8)
        _BC.Parent = _B

        _B.MouseButton1Click:Connect(function()
            if cb then
                pcall(cb)
            end
        end)
    end

    return _W
end

return _G1
