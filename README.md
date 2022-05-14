# CardFlip

An easy way to flip a card on tap in swiftui.

<img height="277" alt="FlipCardExample" src="https://user-images.githubusercontent.com/81453549/168412669-e7402899-bfe9-4a35-8d38-057bbcbaf2a7.gif">

# Requirements 

- iOS 14, macOS 10.16, tvOS 14, or watchOS 6.7
- Swift 5.5+
- Xcode 12.5+

# Installation

The preferred way of installing Mcrich23 Toolkit is via the [Swift Package Manager](https://swift.org/package-manager/).


1. In Xcode, open your project and navigate to **File** → **Add Packages...**
2. Paste the repository URL (`https://github.com/Mcrich23/CardFlip`) and click **Next**.
3. For **Rules**, select **Up To Next Minor Version** (With base version set to 0.1.0).
4. Click **Finish**.
5. Check **CardFlip**
6. Click **Add To Project**

## **Views**

### **CardFlip**

#### **Usage:**

```
CardFlip(cardFront: {
    VStack {
        Text("Front View") // What's shown on the front of the card
    }
}, cardBack: {
    VStack {
        Text("Back View") // What's shown on the back of the card
    }
}, showBorder: true) // Whether it shows the card border or not
```
