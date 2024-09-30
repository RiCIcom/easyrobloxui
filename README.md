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

📝 Funktionen und Komponenten
📑 Funktionen und Komponenten
⚙️ Grundkomponenten
EasyUI unterstützt die wichtigsten UI-Komponenten, die Roblox anbietet. Hier ist eine Übersicht aller Funktionen:

Funktion	Beschreibung	Beispielcode
EasyUI:ScreenGui()	Erstellt ein ScreenGui.	EasyUI:ScreenGui({Name = "MyScreenGui"})
EasyUI:Frame()	Erstellt ein Frame.	EasyUI:Frame({Size = UDim2.new(0.5, 0, 0.5, 0)})
EasyUI:TextLabel()	Erstellt ein TextLabel.	EasyUI:TextLabel({Text = "Hallo"})
EasyUI:TextButton()	Erstellt einen TextButton.	EasyUI:TextButton({Text = "Klick mich"})
EasyUI:TextBox()	Erstellt ein TextBox (Eingabefeld).	EasyUI:TextBox({Text = "Gib etwas ein..."})
EasyUI:ScrollingFrame()	Erstellt einen ScrollingFrame.	EasyUI:ScrollingFrame({CanvasSize = UDim2.new(0, 0, 2, 0)})
EasyUI:ImageLabel()	Erstellt ein ImageLabel (Bildanzeige).	EasyUI:ImageLabel({Image = "rbxassetid://123456"})
EasyUI:ImageButton()	Erstellt ein ImageButton.	EasyUI:ImageButton({Image = "rbxassetid://123456"})
EasyUI:ViewportFrame()	Erstellt ein ViewportFrame.	EasyUI:ViewportFrame({})
EasyUI:VideoFrame()	Erstellt ein VideoFrame.	EasyUI:VideoFrame({Video = "rbxassetid://654321"})
EasyUI:CanvasGroup()	Erstellt eine CanvasGroup.	EasyUI:CanvasGroup({})
