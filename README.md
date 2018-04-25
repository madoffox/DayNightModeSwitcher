# DayNightModeSwitcher
DayNightModeSwitcher is a switcher for iOS. This switcher is made with beautiful and smooth animations for you. Instead of states `true` and `false` like in original iOS UISwitcher, there are states `TypeOfSwitcher.day` and `TypeOfSwitcher.night`. As well as original UISwitcher, it can take in some types of gestures.


![alt tag](https://github.com/madoffox/DayNightModeSwitcher/blob/master/ScreenRecording_04-25-2018%2018:20.gif)

## Usage

Setting up is easy. First, you need to initialize a DayNightModeSwitcher in your view
```swift
let frame = CGRect(x: 15, y: 254, width: 350, height: 175)
let dayNightModeSwitcher = DayNightModeSwitcher(frame: frame)
```

After your DayNightModeSwitcher is initialized, you should conform your class to the `DayNightModeSwitcherDelegate` and implement the `switcher` method.

```swift
dayNightModeSwitcher.delegate = self

extension ViewController: DayNightModeSwitcherDelegate {
    func switcher(_ switcher: DayNightModeSwitcher, didChangeValueTo value: TypeOfSwitcher) {
    /*do something*/
}
```

## Properties

#### Change state with animation
Changes DayNightModeSwitcher state with smooth animation
- `dayNightModeSwitcher.set(to: .day, animated: true)`


#### Change state without animation
Changes DayNightModeSwitcher state without animation
- `dayNightModeSwitcher.set(to: .day, animated: false)`
- or
- `dayNightModeSwitcher.isDay = true`

#### Falling star timing intervals
Sets the delay between stars and duration of falling
- `dayNightModeSwitcher.fallingStarDelay = 1`
- `dayNightModeSwitcher.fallingStarDuration = 1.5`
