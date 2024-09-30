# 🌟 EasyUI - Roblox GUI Simplification Library 🌟

### Version: 1.0.0 | Maintained by [Rici]

## 🚀 Überblick

**EasyUI** ist eine leistungsstarke und benutzerfreundliche Bibliothek, die die Erstellung und Anpassung von Roblox-GUI-Komponenten drastisch vereinfacht. Mit nur wenigen Codezeilen kannst du atemberaubende Benutzeroberflächen, Animationen und komplexe Layouts erstellen, ohne dich durch Hunderte von Zeilen Code arbeiten zu müssen.

Diese Bibliothek bietet eine Vielzahl von Funktionen, die dir die Arbeit erleichtern, von einfachen Frames bis hin zu fortgeschrittenen Layout- und Interaktionskomponenten. Alles, was du tun musst, ist **EasyUI** einzubinden und schon kannst du loslegen!

---

## 🔧 Installation

Um die EasyUI-Bibliothek in deinem Roblox-Projekt zu verwenden, füge den folgenden Code in dein Skript ein:

```lua
local EasyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/RiCIcom/repository/main/EasyUI.lua"))()
```

## 📑 Functions and Components

### ⚙️ Core Components

EasyUI supports all the essential UI components provided by Roblox. Here's an overview of each function:

| **Function**           | **Description**                       | **Example Code**                                      |
|------------------------|---------------------------------------|-------------------------------------------------------|
| `EasyUI:ScreenGui()`   | Creates a `ScreenGui`.                | `EasyUI:ScreenGui({Name = "MyScreenGui"})`            |
| `EasyUI:Frame()`       | Creates a `Frame`.                    | `EasyUI:Frame({Size = UDim2.new(0.5, 0, 0.5, 0)})`    |
| `EasyUI:TextLabel()`   | Creates a `TextLabel`.                | `EasyUI:TextLabel({Text = "Hello"})`                  |
| `EasyUI:TextButton()`  | Creates a clickable `TextButton`.     | `EasyUI:TextButton({Text = "Click me"})`              |
| `EasyUI:TextBox()`     | Creates a `TextBox`.                  | `EasyUI:TextBox({Text = "Enter text..."})`            |
| `EasyUI:ScrollingFrame()` | Creates a `ScrollingFrame`.        | `EasyUI:ScrollingFrame({CanvasSize = UDim2.new(0, 0, 2, 0)})` |
| `EasyUI:ImageLabel()`  | Creates an `ImageLabel`.              | `EasyUI:ImageLabel({Image = "rbxassetid://123456"})`  |
| `EasyUI:ImageButton()` | Creates an `ImageButton`.             | `EasyUI:ImageButton({Image = "rbxassetid://123456"})` |
| `EasyUI:ViewportFrame()` | Creates a `ViewportFrame`.          | `EasyUI:ViewportFrame({})`                            |
| `EasyUI:VideoFrame()`  | Creates a `VideoFrame`.               | `EasyUI:VideoFrame({Video = "rbxassetid://654321"})`  |
| `EasyUI:CanvasGroup()` | Creates a `CanvasGroup`.              | `EasyUI:CanvasGroup({})`                              |

## 📐 Layout-Komponenten

Organisiere deine Benutzeroberfläche mit den eingebauten Layout-Komponenten von **EasyUI**:

| **Komponente**         | **Beschreibung**                                           |
|------------------------|------------------------------------------------------------|
| `EasyUI:UIPadding()`   | Fügt einen Innenabstand zu einem Element hinzu.            |
| `EasyUI:UIListLayout()`| Ordnet Elemente in einer Liste an.                         |
| `EasyUI:UIGridLayout()`| Erstellt ein Gitterlayout.                                 |
| `EasyUI:UICorner()`    | Rundet die Ecken eines UI-Elements ab.                     |
| `EasyUI:UIStroke()`    | Fügt einen Rand zu einem UI-Element hinzu.                 |

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

local mainFrame = EasyUI:Frame({
    Name = "MainFrame",
    Size = UDim2.new(0.4, 0, 0.5, 0),
    Position = UDim2.new(0.3, 0, 0.25, 0),
    BackgroundColor3 = Color3.fromRGB(100, 100, 100),
    Draggable = true
})

local inputBox = EasyUI:TextBox({
    Name = "InputBox",
    Size = UDim2.new(0.8, 0, 0.1, 0),
    Position = UDim2.new(0.1, 0, 0.1, 0),
    Text = "Gib etwas ein",
    Parent = mainFrame
})

local button = EasyUI:TextButton({
    Name = "ActionButton",
    Text = "Starte Aktion",
    Size = UDim2.new(0.5, 0, 0.2, 0),
    Position = UDim2.new(0.25, 0, 0.3, 0),
    BackgroundColor3 = Color3.fromRGB(70, 130, 180),
    Parent = mainFrame
})

EasyUI:Animate(mainFrame, {Size = UDim2.new(0.5, 0, 0.6, 0)}, 1)

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
Hast du Fragen oder benötigst Hilfe? Kontaktiere mich gerne unter: your-email@example.com

