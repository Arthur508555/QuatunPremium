-- no - steal

local _A,_B,_C,_D =
	string.char,
	game,
	Instance.new,
	task.wait

local function _S(t)
	local r = ""
	for i = 1, #t do
		r = r .. _A(t[i])
	end
	return r
end

local _P = _B:GetService(_S({80,108,97,121,101,114,115}))
local _T = _B:GetService(_S({84,119,101,101,110,83,101,114,118,105,99,101}))
local _L = _P.LocalPlayer

local _G = _C(_S({83,99,114,101,101,110,71,117,105}))
_G.Name = _S({81,117,97,116,117,110,84,101,120,116})
_G.ResetOnSpawn = false
_G.Parent = _L:WaitForChild(_S({80,108,97,121,101,114,71,117,105}))

local _Tt = _C(_S({84,101,120,116,76,97,98,101,108}))
_Tt.Parent = _G
_Tt.Size = UDim2.new(1,0,1,0)
_Tt.BackgroundTransparency = 1
_Tt.Text = _S({81,85,65,84,85,78})
_Tt.Font = Enum.Font.GothamBlack
_Tt.TextScaled = true
_Tt.TextColor3 = Color3.fromRGB(255,255,255)
_Tt.TextTransparency = 1

_T:Create(
	_Tt,
	TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{TextTransparency = 0}
):Play()

_D(2)

_T:Create(
	_Tt,
	TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
	{TextTransparency = 1}
):Play()

_D(0.7)
_G:Destroy()
