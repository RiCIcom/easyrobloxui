--EasyUI Library
local EasyUI = {}

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
--GUI
function EasyUI:ScreenGui(properties)
    return createUIElement("ScreenGui", properties)
end

function EasyUI:Frame(properties)
    return createUIElement("Frame", properties)
end

function EasyUI:TextLabel(properties)
    return createUIElement("TextLabel", properties)
end

function EasyUI:TextButton(properties)
    return createUIElement("TextButton", properties)
end

function EasyUI:TextBox(properties)
    return createUIElement("TextBox", properties)
end

function EasyUI:ScrollingFrame(properties)
    return createUIElement("ScrollingFrame", properties)
end

function EasyUI:ImageLabel(properties)
    return createUIElement("ImageLabel", properties)
end

function EasyUI:ImageButton(properties)
    return createUIElement("ImageButton", properties)
end

function EasyUI:ViewportFrame(properties)
    return createUIElement("ViewportFrame", properties)
end

function EasyUI:VideoFrame(properties)
    return createUIElement("VideoFrame", properties)
end

function EasyUI:CanvasGroup(properties)
    return createUIElement("CanvasGroup", properties)
end

function EasyUI:SurfaceGui(properties)
    return createUIElement("SurfaceGui", properties)
end

-- Layout
function EasyUI:UIPadding(properties)
    return createUIElement("UIPadding", properties)
end

function EasyUI:UIListLayout(properties)
    return createUIElement("UIListLayout", properties)
end

function EasyUI:UIGridLayout(properties)
    return createUIElement("UIGridLayout", properties)
end

function EasyUI:UIScale(properties)
    return createUIElement("UIScale", properties)
end

function EasyUI:UICorner(properties)
    return createUIElement("UICorner", properties)
end

function EasyUI:UIStroke(properties)
    return createUIElement("UIStroke", properties)
end

function EasyUI:UISizeConstraint(properties)
    return createUIElement("UISizeConstraint", properties)
end

function EasyUI:UIPageLayout(properties)
    return createUIElement("UIPageLayout", properties)
end

function EasyUI:UITableLayout(properties)
    return createUIElement("UITableLayout", properties)
end

function EasyUI:UIAspectRatioConstraint(properties)
    return createUIElement("UIAspectRatioConstraint", properties)
end

-- Styling
function EasyUI:UIGradient(properties)
    return createUIElement("UIGradient", properties)
end

-- Lichteffekte und GUI Beleuchtung
function EasyUI:SpotLight(properties)
    return createUIElement("SpotLight", properties)
end

function EasyUI:SurfaceLight(properties)
    return createUIElement("SurfaceLight", properties)
end

-- GUI Interaktionskomponenten
function EasyUI:BillboardGui(properties)
    return createUIElement("BillboardGui", properties)
end

function EasyUI:ProximityPrompt(properties)
    return createUIElement("ProximityPrompt", properties)
end

function EasyUI:ClickDetector(properties)
    return createUIElement("ClickDetector", properties)
end

-- Audio Komponenten
function EasyUI:Sound(properties)
    return createUIElement("Sound", properties)
end

function EasyUI:SoundGroup(properties)
    return createUIElement("SoundGroup", properties)
end

-- Animationsfunktion für Tweening
function EasyUI:Animate(element, propertyTable, duration, easingStyle, easingDirection)
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(duration, easingStyle or Enum.EasingStyle.Sine, easingDirection or Enum.EasingDirection.Out)
    local tween = tweenService:Create(element, tweenInfo, propertyTable)
    tween:Play()
    return tween
end

return EasyUI
