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
        Parent = parent,
        Color = colorSequence or ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255))
    })
end

function EasyUI:UICorner(parent, cornerRadius)
    return createUIElement("UICorner", {
        Parent = parent,
        CornerRadius = cornerRadius or UDim.new(0, 10)
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

function EasyUI:TextButton(parent, text, size, position, color, callback)
    local button = createUIElement("TextButton", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Text = text or "Click Me",
        Size = size or UDim2.new(0.3, 0, 0.1, 0),
        Position = position or UDim2.new(0.1, 0, 0.2, 0),
        BackgroundColor3 = color or Color3.fromRGB(70, 130, 180)
    })
    if callback then
        button.MouseButton1Click:Connect(callback)
    end
    return button
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
    -- Warten, bis die CoreScripts geladen sind
    local StarterGui = game:GetService("StarterGui")
    while not StarterGui:GetCore("PlayerGui") do
        wait(0.1)
    end

    -- Danach die Benachrichtigung senden
    StarterGui:SetCore("SendNotification", {
        Title = title or "EasyUI Tool",
        Text = message or "Nachricht hier",
        Icon = image or "rbxassetid://1234567890",
        Duration = 5  -- Die Dauer der Nachricht in Sekunden
    })
end

function EasyUI:ProgressBar(parent, size, position, color, progress)
    local frame = self:Frame(parent, size, position, color)
    local progressBar = createUIElement("Frame", {
        Parent = frame,
        Size = UDim2.new(progress or 0.5, 0, 1, 0),
        BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    })
    return frame, progressBar
end

function EasyUI:Slider(parent, size, position, callback)
    local sliderFrame = self:Frame(parent, size, position, Color3.fromRGB(200, 200, 200))
    local sliderButton = self:TextButton(sliderFrame, "", UDim2.new(0.05, 0, 1, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(100, 100, 255))
    sliderButton.Draggable = true

    sliderButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            sliderButton.Position = UDim2.new(math.clamp(input.Position.X / sliderFrame.AbsoluteSize.X, 0, 1), 0, 0, 0)
            if callback then
                callback(sliderButton.Position.X.Scale)
            end
        end
    end)

    return sliderFrame, sliderButton
end

function EasyUI:UIAspectRatioConstraint(parent, aspectRatio)
    return createUIElement("UIAspectRatioConstraint", {
        Parent = parent,
        AspectRatio = aspectRatio or 1,
        DominantAxis = Enum.DominantAxis.Width
    })
end

------------------

-- Interactive Components
function EasyUI:DraggableFrame(parent, size, position, color)
    local frame = self:Frame(parent, size, position, color)
    frame.Draggable = true
    return frame
end

function EasyUI:ToolTip(element, tooltipText)
    local tooltip = self:TextLabel(element, tooltipText, UDim2.new(0.3, 0, 0.05, 0), UDim2.new(1, 0, 0, 0), Color3.fromRGB(50, 50, 50), 16)
    tooltip.Visible = false
    tooltip.ZIndex = element.ZIndex + 1

    element.MouseEnter:Connect(function()
        tooltip.Visible = true
    end)

    element.MouseLeave:Connect(function()
        tooltip.Visible = false
    end)
end

-- Animation and Visual Effects
function EasyUI:Shake(element, intensity, duration)
    local originalPos = element.Position
    for i = 1, duration or 10 do
        local randomX = math.random(-intensity, intensity)
        local randomY = math.random(-intensity, intensity)
        element.Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset + randomX, originalPos.Y.Scale, originalPos.Y.Offset + randomY)
        wait(0.05)
    end
    element.Position = originalPos
end

function EasyUI:Spin(element, duration)
    local startRotation = element.Rotation or 0
    local endRotation = startRotation + 360
    self:Animate(element, {Rotation = endRotation}, duration or 2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
end

-- Utility Functions
function EasyUI:ToggleVisibility(element)
    element.Visible = not element.Visible
end

function EasyUI:TimedVisibility(element, duration)
    element.Visible = true
    wait(duration or 2)
    element.Visible = false
end

function EasyUI:BindKeyToFunction(keyCode, func)
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == keyCode and func then
            func()
        end
    end)
end

function EasyUI:ColorPicker(parent, size, position, callback)
    local pickerFrame = self:Frame(parent, size, position, Color3.fromRGB(255, 255, 255))
    local colorGradient = self:UIGradient(pickerFrame, ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255)))

    pickerFrame.MouseButton1Down:Connect(function()
        local mouse = game.Players.LocalPlayer:GetMouse()
        pickerFrame.BackgroundColor3 = mouse.Hit.Position
        if callback then
            callback(pickerFrame.BackgroundColor3)
        end
    end)

    return pickerFrame
end

-- Advanced GUI Layouts
function EasyUI:TabContainer(parent, tabs)
    local container = self:Frame(parent, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(50, 50, 50))
    local tabButtons = {}
    local tabFrames = {}

    for _, tab in pairs(tabs) do
        local button = self:TextButton(container, tab.Name, UDim2.new(0.1, 0, 0.05, 0), nil, Color3.fromRGB(80, 80, 80))
        local frame = self:Frame(container, UDim2.new(1, 0, 0.95, 0), UDim2.new(0, 0, 0.05, 0), Color3.fromRGB(70, 70, 70))
        frame.Visible = false

        button.MouseButton1Click:Connect(function()
            for _, otherFrame in pairs(tabFrames) do
                otherFrame.Visible = false
            end
            frame.Visible = true
        end)

        table.insert(tabButtons, button)
        table.insert(tabFrames, frame)
        tab.Content(frame)
    end

    return container, tabButtons, tabFrames
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------- ____  _____  ________  ____      ____  -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------|_   \|_   _||_   __  ||_  _|    |_  _| -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------  |   \ | |    | |_ \_|  \ \  /\  / /   -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------  | |\ \| |    |  _| _    \ \/  \/ /    -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------- _| |_\   |_  _| |__/ |    \  /\  /     -----------------------------------------------------------------------------------------------------------
--------------------------------------------------------|_____|\____||________|     \/  \/      -----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EasyUI:ToolTipWithDelay(element, tooltipText, delay)
    local tooltip = self:TextLabel(element, tooltipText, UDim2.new(0.3, 0, 0.05, 0), UDim2.new(1, 0, 0, 0), Color3.fromRGB(50, 50, 50), 16)
    tooltip.Visible = false
    tooltip.ZIndex = element.ZIndex + 1

    element.MouseEnter:Connect(function()
        wait(delay or 1)
        tooltip.Visible = true
    end)

    element.MouseLeave:Connect(function()
        tooltip.Visible = false
    end)
end

function EasyUI:ProgressLabel(parent, size, position, progress)
    local label = self:TextLabel(parent, "Progress: 0%", size, position, Color3.fromRGB(255, 255, 255), 16)
    label.TextColor3 = Color3.fromRGB(0, 255, 0)
    label.TextXAlignment = Enum.TextXAlignment.Center

    function label:SetProgress(value)
        value = math.clamp(value, 0, 100)
        label.Text = string.format("Progress: %d%%", value)
    end

    label:SetProgress(progress or 0)
    return label
end

function EasyUI:ModalPopup(parent, title, message, buttonText, onConfirm)
    local frame = self:Frame(parent, UDim2.new(0.4, 0, 0.3, 0), UDim2.new(0.3, 0, 0.35, 0), Color3.fromRGB(50, 50, 50))
    frame.ZIndex = 10

    local titleLabel = self:TextLabel(frame, title, UDim2.new(1, 0, 0.2, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(70, 70, 70), 20)
    titleLabel.ZIndex = 11

    local messageLabel = self:TextLabel(frame, message, UDim2.new(1, -20, 0.5, -20), UDim2.new(0, 10, 0.2, 10), Color3.fromRGB(255, 255, 255), 16)
    messageLabel.TextWrapped = true
    messageLabel.ZIndex = 11

    local confirmButton = self:TextButton(frame, buttonText or "OK", UDim2.new(0.3, 0, 0.15, 0), UDim2.new(0.35, 0, 0.8, 0), Color3.fromRGB(100, 150, 100))
    confirmButton.ZIndex = 11

    confirmButton.MouseButton1Click:Connect(function()
        frame:Destroy()
        if onConfirm then
            onConfirm()
        end
    end)

    return frame
end

function EasyUI:ContextMenu(parent, options, position)
    local menuFrame = self:Frame(parent, UDim2.new(0.2, 0, 0.1 * #options, 0), position, Color3.fromRGB(50, 50, 50))
    menuFrame.ZIndex = 20

    for i, option in pairs(options) do
        local button = self:TextButton(menuFrame, option.Text, UDim2.new(1, -10, 0.1, -10), UDim2.new(0, 5, (i - 1) * 0.1, 5), option.Color or Color3.fromRGB(70, 130, 180))
        button.ZIndex = 21

        button.MouseButton1Click:Connect(function()
            if option.Callback then
                option.Callback()
            end
            menuFrame:Destroy()
        end)
    end

    return menuFrame
end

function EasyUI:ProgressCircle(parent, size, position, progress, thickness, color)
    local circle = createUIElement("ImageLabel", {
        Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"),
        Size = size or UDim2.new(0.1, 0, 0.1, 0),
        Position = position or UDim2.new(0.5, -50, 0.5, -50),
        BackgroundTransparency = 1,
        Image = "rbxassetid://123456789",
        ImageColor3 = color or Color3.fromRGB(0, 255, 0)
    })

    local mask = createUIElement("ImageLabel", {
        Parent = circle,
        Size = UDim2.new(progress or 0.5, 0, 1, 0),
        BackgroundTransparency = 1,
        Image = "rbxassetid://123456789",
        ImageColor3 = Color3.fromRGB(255, 255, 255),
        ClipsDescendants = true
    })

    return circle
end

function EasyUI:Dropdown(parent, options, size, position, default, onChange)
    local dropdownFrame = self:Frame(parent, size or UDim2.new(0.3, 0, 0.05, 0), position, Color3.fromRGB(70, 70, 70))
    dropdownFrame.ClipsDescendants = true

    local selectedLabel = self:TextLabel(dropdownFrame, default or options[1], UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(100, 100, 100))
    local isOpen = false

    selectedLabel.MouseButton1Click:Connect(function()
        isOpen = not isOpen
        dropdownFrame.Size = isOpen and UDim2.new(size.X.Scale, size.X.Offset, size.Y.Scale + (#options * 0.05), size.Y.Offset) or size
    end)

    for i, option in ipairs(options) do
        local optionButton = self:TextButton(dropdownFrame, option, UDim2.new(1, 0, 0.05, 0), UDim2.new(0, 0, i * 0.05, 0), Color3.fromRGB(150, 150, 150))
        optionButton.Visible = false

        optionButton.MouseButton1Click:Connect(function()
            selectedLabel.Text = option
            if onChange then
                onChange(option)
            end
            isOpen = false
            dropdownFrame.Size = size
        end)
    end

    dropdownFrame.ChildAdded:Connect(function(child)
        if child:IsA("TextButton") then
            child.Visible = isOpen
        end
    end)

    return dropdownFrame
end

function EasyUI:ToastNotification(parent, message, duration)
    local toastFrame = self:Frame(parent, UDim2.new(0.3, 0, 0.05, 0), UDim2.new(0.35, 0, 0.85, 0), Color3.fromRGB(50, 50, 50))
    local toastLabel = self:TextLabel(toastFrame, message, UDim2.new(1, -10, 1, -10), UDim2.new(0, 5, 0, 5), Color3.fromRGB(255, 255, 255), 14)
    toastFrame.BackgroundTransparency = 0.7

    self:FadeIn(toastFrame, 0.5)
    wait(duration or 2)
    self:FadeOut(toastFrame, 0.5)
end

function EasyUI:Stepper(parent, steps, size, position)
    local stepFrame = self:Frame(parent, size, position, Color3.fromRGB(100, 100, 100))
    stepFrame.ClipsDescendants = true

    local stepLabels = {}
    for i, step in ipairs(steps) do
        local stepLabel = self:TextLabel(stepFrame, step, UDim2.new(1 / #steps, -5, 1, 0), UDim2.new((i - 1) / #steps, 5, 0, 0), Color3.fromRGB(200, 200, 200))
        stepLabels[i] = stepLabel
    end

    local currentIndex = 1
    function stepFrame:SetStep(index)
        currentIndex = math.clamp(index, 1, #steps)
        for i, label in ipairs(stepLabels) do
            label.TextColor3 = i == currentIndex and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(200, 200, 200)
        end
    end

    stepFrame:SetStep(1)
    return stepFrame
end

function EasyUI:AnimatedButton(parent, text, size, position, color, clickColor, callback)
    local button = self:TextButton(parent, text, size, position, color)

    button.MouseButton1Click:Connect(function()
        EasyUI:Animate(button, {BackgroundColor3 = clickColor or Color3.fromRGB(150, 150, 150)}, 0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
        wait(0.1)
        EasyUI:Animate(button, {BackgroundColor3 = color}, 0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        if callback then
            callback()
        end
    end)

    return button
end

function EasyUI:MakeDraggable(element)
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

function EasyUI:AccordionMenu(parent, items)
    local container = self:Frame(parent, UDim2.new(0.4, 0, 0.05 * #items, 0), UDim2.new(0.3, 0, 0.1, 0), Color3.fromRGB(50, 50, 50))
    
    for i, item in pairs(items) do
        local button = self:TextButton(container, item.Title, UDim2.new(1, 0, 0.05, 0), UDim2.new(0, 0, (i-1) * 0.05, 0), Color3.fromRGB(80, 80, 80))
        local expandedContent = self:TextLabel(container, item.Content, UDim2.new(1, -20, 0.05, -20), UDim2.new(0, 10, i * 0.05, 0), Color3.fromRGB(255, 255, 255))
        expandedContent.Visible = false

        button.MouseButton1Click:Connect(function()
            expandedContent.Visible = not expandedContent.Visible
        end)
    end

    return container
end

function EasyUI:SearchBox(parent, data, size, position, onUpdate)
    local searchBox = self:TextBox(parent, size or UDim2.new(0.3, 0, 0.05, 0), position or UDim2.new(0.35, 0, 0.1, 0), Color3.fromRGB(255, 255, 255), "Search...")
    local resultList = {}

    searchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local query = searchBox.Text:lower()
        resultList = {}
        for _, item in ipairs(data) do
            if item:lower():find(query) then
                table.insert(resultList, item)
            end
        end
        if onUpdate then
            onUpdate(resultList)
        end
    end)

    return searchBox
end

function EasyUI:Card(parent, title, description, image, size, position)
    local card = self:Frame(parent, size or UDim2.new(0.3, 0, 0.4, 0), position or UDim2.new(0.35, 0, 0.2, 0), Color3.fromRGB(255, 255, 255))
    local imageLabel = self:ImageLabel(card, image, UDim2.new(1, 0, 0.6, 0), UDim2.new(0, 0, 0, 0))
    local titleLabel = self:TextLabel(card, title, UDim2.new(1, -10, 0.1, -5), UDim2.new(0, 5, 0.6, 5), Color3.fromRGB(0, 0, 0), 20)
    local descriptionLabel = self:TextLabel(card, description, UDim2.new(1, -10, 0.3, -5), UDim2.new(0, 5, 0.7, 5), Color3.fromRGB(50, 50, 50), 16)
    descriptionLabel.TextWrapped = true

    return card
end

function EasyUI:ColorWheel(parent, size, position, onChange)
    local colorWheel = self:ImageLabel(parent, "rbxassetid://ColorWheelAssetId", size or UDim2.new(0.2, 0, 0.2, 0), position or UDim2.new(0.4, 0, 0.4, 0))
    colorWheel.BackgroundTransparency = 1

    colorWheel.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local mouse = game.Players.LocalPlayer:GetMouse()
            mouse.Move:Connect(function()
                local x = (mouse.X - colorWheel.AbsolutePosition.X) / colorWheel.AbsoluteSize.X
                local y = (mouse.Y - colorWheel.AbsolutePosition.Y) / colorWheel.AbsoluteSize.Y
                if x >= 0 and x <= 1 and y >= 0 and y <= 1 then
                    local color = Color3.fromHSV(x, 1 - y, 1)
                    if onChange then
                        onChange(color)
                    end
                end
            end)
        end
    end)

    return colorWheel
end

function EasyUI:TabNavigation(parent, tabs)
    local tabContainer = self:Frame(parent, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(50, 50, 50))
    local tabButtons = {}
    local tabFrames = {}

    local tabHeader = self:Frame(tabContainer, UDim2.new(1, 0, 0.1, 0), UDim2.new(0, 0, 0, 0), Color3.fromRGB(70, 70, 70))

    for i, tab in ipairs(tabs) do
        local button = self:TextButton(tabHeader, tab.Title, UDim2.new(1 / #tabs, -5, 1, -5), UDim2.new((i - 1) / #tabs, 5, 0, 0), Color3.fromRGB(80, 80, 80))
        button.ZIndex = 2
        local frame = self:Frame(tabContainer, UDim2.new(1, 0, 0.9, 0), UDim2.new(0, 0, 0.1, 0), Color3.fromRGB(70, 70, 70))
        frame.Visible = false

        button.MouseButton1Click:Connect(function()
            for _, otherFrame in ipairs(tabFrames) do
                otherFrame.Visible = false
            end
            frame.Visible = true
        end)

        table.insert(tabButtons, button)
        table.insert(tabFrames, frame)
        tab.Content(frame)
    end

    tabFrames[1].Visible = true
    return tabContainer
end

function EasyUI:RichTextEditor(parent, size, position, defaultText)
    local editorFrame = self:ScrollingFrame(parent, size or UDim2.new(0.5, 0, 0.4, 0), position or UDim2.new(0.25, 0, 0.2, 0), UDim2.new(0, 0, 2, 0))
    local textBox = self:TextBox(editorFrame, UDim2.new(1, -10, 2, -10), UDim2.new(0, 5, 0, 5), Color3.fromRGB(255, 255, 255), "Write here...")
    textBox.Text = defaultText or ""

    return editorFrame, textBox
end

function EasyUI:CountdownTimer(parent, size, position, duration, onComplete)
    local timerLabel = self:TextLabel(parent, "", size or UDim2.new(0.2, 0, 0.1, 0), position or UDim2.new(0.4, 0, 0.1, 0), Color3.fromRGB(255, 255, 255), 24)
    timerLabel.TextColor3 = Color3.fromRGB(255, 0, 0)

    local function startCountdown(seconds)
        for i = seconds, 0, -1 do
            timerLabel.Text = string.format("Time left: %d", i)
            wait(1)
        end
        if onComplete then
            onComplete()
        end
    end

    startCountdown(duration or 10)
    return timerLabel
end

function EasyUI:HorizontalScrollList(parent, items, size, position)
    local scrollingFrame = self:ScrollingFrame(parent, size or UDim2.new(0.5, 0, 0.2, 0), position or UDim2.new(0.25, 0, 0.7, 0), UDim2.new(#items, 0, 0, 0))
    scrollingFrame.ScrollBarThickness = 10
    scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)

    for i, item in ipairs(items) do
        local image = self:ImageLabel(scrollingFrame, item.Image, UDim2.new(0.1, 0, 1, 0), UDim2.new((i - 1) * 0.1, 0, 0, 0))
        image.BackgroundColor3 = item.BackgroundColor or Color3.fromRGB(255, 255, 255)
    end

    return scrollingFrame
end


return EasyUI
