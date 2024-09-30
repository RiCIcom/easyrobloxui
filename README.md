# 🌟 EasyUI - Roblox GUI Simplification Library 🌟

### Version: 1.0.0 | Maintained by [Rici]

## 🚀 Überblick

**EasyUI** ist eine leistungsstarke und benutzerfreundliche Bibliothek, die die Erstellung und Anpassung von Roblox-GUI-Komponenten drastisch vereinfacht. Mit nur wenigen Codezeilen kannst du atemberaubende Benutzeroberflächen, Animationen und komplexe Layouts erstellen, ohne dich durch Hunderte von Zeilen Code arbeiten zu müssen.

Diese Bibliothek bietet eine Vielzahl von Funktionen, die dir die Arbeit erleichtern, von einfachen Frames bis hin zu fortgeschrittenen Layout- und Interaktionskomponenten. Alles, was du tun musst, ist **EasyUI** einzubinden und schon kannst du loslegen!

---

## 🔧 Installation

Um die EasyUI-Bibliothek in deinem Roblox-Projekt zu verwenden, füge den folgenden Code in dein Skript ein:

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

## 📐 Layout-Komponenten

Organisiere deine Benutzeroberfläche mit den eingebauten Layout-Komponenten von **EasyUI**:

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

**Beispielcode:**

```lua
local myFrame = EasyUI:Frame({Name = "MyFrame", Size = UDim2.new(0.3, 0, 0.3, 0)})
local padding = EasyUI:UIPadding({PaddingTop = UDim.new(0, 10), Parent = myFrame})
```
```lua
EasyUI:Animate(myFrame, {Size = UDim2.new(0.6, 0, 0.6, 0)}, 1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
```
## 🚀 Fortgeschrittene Funktionen

- **🖱️ Draggable UI-Elemente**: Alle UI-Elemente können durch Setzen von `Draggable = true` verschiebbar gemacht werden.
- **📐 Automatische Anpassung**: Verwende Komponenten wie `UISizeConstraint` und `UIScale`, um sicherzustellen, dass deine Benutzeroberfläche auf allen Geräten gut aussieht.
- **💡 Lichteffekte**: Verwende `SpotLight` oder `SurfaceLight`, um visuelle Effekte zu erzeugen.

---

## 💡 Vorteile von EasyUI

- **🔹 Weniger Code**: Erstelle UI-Elemente mit wenigen Zeilen Code, ohne dass jede Eigenschaft manuell festgelegt werden muss.
- **🔹 Bewegliche Benutzeroberfläche**: Setze `Draggable = true`, um Elemente wie Cheat-UIs oder individuelle Fenster flexibel zu machen.
- **🔹 Konsistente Layouts**: Mit den eingebauten Layout-Komponenten kannst du sicherstellen, dass dein UI auf jedem Gerät ordentlich aussieht.
- **🔹 Animation und Effekte**: Erstelle ansprechende Animationen mit der `Animate`-Funktion und füge stilvolle Übergänge hinzu.
- **🔹 Vereinfachte Interaktionen**: Die Funktionen wie `ClickDetector` oder `ProximityPrompt` erleichtern das Hinzufügen interaktiver Elemente.

---

## 🌈 Beispielanwendung

Hier ist ein einfaches Beispiel, wie du mit **EasyUI** eine vollständige Benutzeroberfläche erstellen kannst:
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
🛠️ To-Do und zukünftige Verbesserungen
📦 Komponenten hinzufügen: Weitere UI-Komponenten und erweiterte Layout-Features.
🎨 Vordefinierte Themes: Vordefinierte Stile für ein einheitliches Design.
🖱️ Verbesserte Event-Unterstützung: Mehr benutzerfreundliche Methoden zur Verwaltung von Benutzerereignissen.
🤝 Beiträge
Beiträge zur Verbesserung von EasyUI sind herzlich willkommen! Starte einen Fork des Repositories, nimm deine Änderungen vor und erstelle einen Pull-Request.

📄 Lizenz
Dieses Projekt ist unter der MIT-Lizenz lizenziert. Weitere Informationen findest du in der LICENSE Datei.

🖼️ Screenshots

📧 Kontakt
Hast du Fragen oder benötigst Hilfe? Kontaktiere mich gerne unter: richardbruckner@codegamerhub.at

