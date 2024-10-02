# 🌟 EasyUI - Roblox GUI Simplification Library 🌟

### Version: 1.5.4 | Maintained by [Lua Booster]

## 🚀 Overview

**EasyUI** is a powerful and easy-to-use library that dramatically simplifies the creation and customization of Roblox GUI components. With just a few lines of code, you can create stunning user interfaces, animations, and complex layouts without having to wade through hundreds of lines of code.

This library offers a variety of features to make your work easier, from simple frames to advanced layout and interaction components. All you have to do is include **EasyUI** and you're ready to go!

---

## 🔧 Installation

To use the EasyUI library in your Roblox project, add the following code into your script:

```lua
local EasyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/RiCIcom/easyrobloxui/refs/heads/main/main.lua"))()
```

## 📑 Functions and Components

### ⚙️ Core Components

EasyUI supports all the essential UI components provided by Roblox. Here's an overview of each function:

| **Function**                   | **Description**                                   | **Example Code**                                           |
|--------------------------------|---------------------------------------------------|------------------------------------------------------------|
| `EasyUI:ScreenGui()`           | Creates a `ScreenGui`.                            | `EasyUI:ScreenGui({Name = "MyScreenGui"})`                 |
| `EasyUI:Frame()`               | Creates a `Frame`.                                | `EasyUI:Frame({Size = UDim2.new(0.5, 0, 0.5, 0)})`         |
| `EasyUI:TextLabel()`           | Creates a `TextLabel`.                            | `EasyUI:TextLabel({Text = "Hello"})`                       |
| `EasyUI:TextButton()`          | Creates a clickable `TextButton`.                 | `EasyUI:TextButton({Text = "Click me"})`                   |
| `EasyUI:TextBox()`             | Creates a `TextBox`.                              | `EasyUI:TextBox({PlaceholderText = "Enter text..."})`      |
| `EasyUI:ScrollingFrame()`      | Creates a `ScrollingFrame`.                       | `EasyUI:ScrollingFrame({CanvasSize = UDim2.new(0, 0, 2, 0)})` |
| `EasyUI:ImageLabel()`          | Creates an `ImageLabel`.                          | `EasyUI:ImageLabel({Image = "rbxassetid://123456"})`       |
| `EasyUI:ImageButton()`         | Creates an `ImageButton`.                         | `EasyUI:ImageButton({Image = "rbxassetid://123456"})`      |
| `EasyUI:ViewportFrame()`       | Creates a `ViewportFrame`.                        | `EasyUI:ViewportFrame({})`                                 |
| `EasyUI:VideoFrame()`          | Creates a `VideoFrame`.                           | `EasyUI:VideoFrame({Video = "rbxassetid://654321"})`       |
| `EasyUI:CanvasGroup()`         | Creates a `CanvasGroup`.                          | `EasyUI:CanvasGroup({})`                                   |
| `EasyUI:UIPadding()`           | Adds padding to a UI element.                     | `EasyUI:UIPadding({PaddingTop = UDim.new(0, 10), Parent = myFrame})` |
| `EasyUI:UIListLayout()`        | Arranges elements in a list.                      | `EasyUI:UIListLayout({Parent = myFrame, Padding = UDim.new(0, 5)})` |
| `EasyUI:UIGridLayout()`        | Creates a grid layout.                            | `EasyUI:UIGridLayout({Parent = myFrame, CellSize = UDim2.new(0.1, 0, 0.1, 0)})` |
| `EasyUI:UICorner()`            | Rounds the corners of a UI element.               | `EasyUI:UICorner({Parent = myFrame, CornerRadius = UDim.new(0, 15)})` |
| `EasyUI:UIStroke()`            | Adds an outline stroke to a UI element.           | `EasyUI:UIStroke({Parent = myFrame, Thickness = 2, Color = Color3.fromRGB(255, 255, 255)})` |
| `EasyUI:UIGradient()`          | Adds a color gradient to a UI element.            | `EasyUI:UIGradient({Parent = myFrame, Color = ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255))})` |
| `EasyUI:SpotLight()`           | Adds a spotlight effect to an element.            | `EasyUI:SpotLight({Parent = myPart, Range = 16, Brightness = 1})` |
| `EasyUI:SurfaceLight()`        | Adds surface lighting to an element.              | `EasyUI:SurfaceLight({Parent = myPart, Range = 8, Brightness = 1})` |
| `EasyUI:BillboardGui()`        | Creates a `BillboardGui` for displaying UI elements above parts. | `EasyUI:BillboardGui({Parent = myPart, Size = UDim2.new(0.3, 0, 0.3, 0)})` |
| `EasyUI:ProximityPrompt()`     | Adds a proximity prompt interaction to an element.| `EasyUI:ProximityPrompt({Parent = myPart, ActionText = "Interact"})` |
| `EasyUI:ClickDetector()`       | Adds a click detection capability to an element.  | `EasyUI:ClickDetector({Parent = myPart, MaxActivationDistance = 32})` |
| `EasyUI:UIScale()`             | Scales a UI element.                              | `EasyUI:UIScale({Parent = myFrame, Scale = 1.5})`          |
| `EasyUI:UISizeConstraint()`    | Adds size constraints to a UI element.            | `EasyUI:UISizeConstraint({Parent = myFrame, MaxSize = Vector2.new(200, 200)})` |
| `EasyUI:UIPageLayout()`        | Creates a page layout for navigation.             | `EasyUI:UIPageLayout({Parent = myFrame, Circular = true})` |
| `EasyUI:UITableLayout()`      | Creates a table layout for organizing elements.   | `EasyUI:UITableLayout({Parent = myFrame})`               |
| `EasyUI:UIAspectRatioConstraint()` | Constrains the aspect ratio of an element.     | `EasyUI:UIAspectRatioConstraint({Parent = myFrame, AspectRatio = 1.5})` |
| `EasyUI:Animate()`             | Adds tween animations to elements.                | `EasyUI:Animate(myFrame, {Size = UDim2.new(0.6, 0, 0.6, 0)}, 1)` |
| `EasyUI:Sound()`               | Adds sound to a GUI for interaction purposes.     | `EasyUI:Sound({Parent = myPart, SoundId = "rbxassetid://987654"})` |
| `EasyUI:SoundGroup()`          | Groups multiple sound elements together.          | `EasyUI:SoundGroup({Name = "MySoundGroup"})`              |

## 📐 Layout-Komponents

Organize your interface with the built-in layout components **EasyUI**:

| **Komponente**                  | **Beschreibung**                                           |
|---------------------------------|------------------------------------------------------------|
| `EasyUI:UIPadding()`            | Fügt einen Innenabstand zu einem Element hinzu.            |
| `EasyUI:UIListLayout()`         | Ordnet Elemente in einer Liste an.                         |
| `EasyUI:UIGridLayout()`         | Erstellt ein Gitterlayout.                                 |
| `EasyUI:UICorner()`             | Rundet die Ecken eines UI-Elements ab.                     |
| `EasyUI:UIStroke()`             | Fügt einen Rand zu einem UI-Element hinzu.                 |
| `EasyUI:UIGradient()`           | Fügt einen Farbverlauf zu einem UI-Element hinzu.          |
| `EasyUI:UIPageLayout()`         | Erstellt ein Seitenlayout für die Navigation.              |
| `EasyUI:UITableLayout()`       | Erstellt ein Tabellenlayout für die Organisation von Elementen. |
| `EasyUI:UIScale()`              | Skaliert ein UI-Element.                                   |
| `EasyUI:UISizeConstraint()`     | Fügt Größenbeschränkungen zu einem UI-Element hinzu.       |
| `EasyUI:UIAspectRatioConstraint()` | Beschränkt das Seitenverhältnis eines UI-Elements.      |

**Example Code:**

```lua
local myFrame = EasyUI:Frame({Name = "MyFrame", Size = UDim2.new(0.3, 0, 0.3, 0)})
local padding = EasyUI:UIPadding({PaddingTop = UDim.new(0, 10), Parent = myFrame})
```
```lua
EasyUI:Animate(myFrame, {Size = UDim2.new(0.6, 0, 0.6, 0)}, 1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
```
## 🚀 Advanced features

- **🖱️ Draggable UI Elements**: All UI elements can be made draggable by setting `Draggable = true`.
- **📐 Automatic customization**: Use components like `UISizeConstraint` and `UIScale` to ensure your UI looks good on all devices.
- **💡 Light Effects**: Use `SpotLight` or `SurfaceLight` to create visual effects.

---

## 💡 Advantages of EasyUI

- **🔹 Less Code**: Create UI elements with few lines of code without having to set every property manually.
- **🔹 Draggable UI**: Set `Draggable = true` to make elements like cheat UIs or custom windows flexible.
- **🔹 Consistent Layouts**: With the built-in layout components, you can ensure your UI looks neat on any device.
- **🔹 Animation and Effects**: Create beautiful animations with the 'Animate' feature and add stylish transitions.
- **🔹 Simplified Interactions**: Features like `ClickDetector` or `ProximityPrompt` make it easier to add interactive elements.

---

## 🌈 Example application

Here is a simple example of how you can create a complete user interface using **EasyUI**:
```lua
local EasyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/RiCIcom/repository/main/EasyUI.lua"))()

local myFrame = EasyUI:Frame({
    Name = "MyFrame",
    Size = UDim2.new(0.3, 0, 0.3, 0),
    Position = UDim2.new(0.35, 0, 0.35, 0),
    BackgroundColor3 = Color3.fromRGB(200, 200, 255)
})

-- Adds padding to my frame
local padding = EasyUI:UIPadding({
    PaddingTop = UDim.new(0, 10),
    PaddingBottom = UDim.new(0, 10),
    PaddingLeft = UDim.new(0, 10),
    PaddingRight = UDim.new(0, 10),
    Parent = myFrame
})

-- Rounds the corners of the frame
local corner = EasyUI:UICorner({
    Parent = myFrame,
    CornerRadius = UDim.new(0, 15)
})

-- Adds a border (stroke) to the frame
local stroke = EasyUI:UIStroke({
    Parent = myFrame,
    Thickness = 3,
    Color = Color3.fromRGB(0, 0, 0)
})

-- Adds a gradient to the frame
local gradient = EasyUI:UIGradient({
    Parent = myFrame,
    Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
    }
})

-- Adds a list (UIListLayout) to the frame to arrange elements vertically
local listLayout = EasyUI:UIListLayout({
    Parent = myFrame,
    Padding = UDim.new(0, 10),
    FillDirection = Enum.FillDirection.Vertical,
    HorizontalAlignment = Enum.HorizontalAlignment.Center
})

-- Create a Textlabel and paste it into the Frame
local myLabel = EasyUI:TextLabel({
    Parent = myFrame,
    Text = "Willkommen bei EasyUI!",
    Size = UDim2.new(1, 0, 0.2, 0),
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    TextColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 24
})

-- Create clickable Button
local myButton = EasyUI:TextButton({
    Parent = myFrame,
    Text = "Klicke mich!",
    Size = UDim2.new(1, 0, 0.2, 0),
    BackgroundColor3 = Color3.fromRGB(70, 130, 180),
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 22
})

-- Animation
myButton.MouseButton1Click:Connect(function()
    EasyUI:Animate(myButton, {Size = UDim2.new(1.1, 0, 0.25, 0)}, 0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
end)

```
🛠️ To-Do and future improvements
📦 Add components: More UI components and advanced layout features.
🎨 Predefined Themes: Predefined styles for a consistent design.
🖱️ Improved event support: More user-friendly ways to manage user events.
🤝 Posts
Contributions to improving EasyUI are warmly welcomed! Start a fork of the repository, make your changes and create a pull request.

## 📄 License

This project is licensed under a **Limited Usage License**. The code may be used for personal purposes, but cannot be modified, redistributed, or used for commercial purposes.

For more details, see the [LICENSE](LICENSE.md) file.

🖼️ Screenshots

📧 Contact
Do you have any questions or need help? Feel free to contact me at: richardbruckner@codegamerhub.at

