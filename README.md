

## KSCircleProgressView
Lightweight Progress View that display in circle style
##
![image](https://github.com/abredo/KSCircleProgressView/blob/master/demo.gif) 



##Get Started

###  Manual import：
    * Drag All files in the `KSCircleProgressView` folder to project
    * Import the main file：`#import "KSCircleProgressView.h"`

### Installation with Cocoapods

To integrate KSCircleProgressView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'KSCircleProgressView', '~> 0.0.5'
end
```

## Usage
```objective-c
KSCircleProgressView *circleProgressView = [[KSCircleProgressView alloc] initWithStyle:KSCircleProgressViewStyleFill dashColor:[UIColor blackColor] tintColor:[UIColor whiteColor] lineWidth:5.0f];
CGFloat progressWidth = 50.0f;
CGFloat progressHeight = 50.0f;
circleProgressView.frame = CGRectMake(circleProgressViewX, circleProgressViewY, progressWidth, progressHeight);
circleProgressView.progress = 0.2;
[self.view addSubview:circleProgressView];
 ```


