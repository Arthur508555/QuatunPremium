-- QUATUN PREMIUM UI LIBRARY

local Library = {}

function Library:CreateWindow(config)
    config = config or {}

    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local Player = Players.LocalPlayer

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = Player:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false

    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 480, 0, 320)
    Main.Position = UDim2.new(0.5, -240, 0.5, -160)
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.BorderSizePixel = 0
    Main.Parent = ScreenGui
    Main.Active = true

    Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 10)

    local Title = Instance.new("TextLabel", Main)
    Title.Size = UDim2.new(1, -20, 0, 40)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = config.Title or "Quatun Premium"
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 18
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local Window = {}

    function Window:Button(text, callback)
        local Button = Instance.new("TextButton", Main)
        Button.Size = UDim2.new(1, -20, 0, 40)
        Button.Position = UDim2.new(0, 10, 0, 60)
        Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Button.Text = text
        Button.TextColor3 = Color3.new(1, 1, 1)
        Button.Font = Enum.Font.Gotham
        Button.TextSize = 14
        Button.BorderSizePixel = 0

        Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 8)

        Button.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    return Window
end

return Library
