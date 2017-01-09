# String-chinese.swift
Swift 3 String extension for checking whether a String contain Chinese characters.

## Methods

### Percentage of Chinese
```swift
let chinesePercentage = "哈喽".chinesePercentage()
print("String contains \(chinesePercentage) percent Chinese")
```

### Number of chinese characters
```swift
let chineseCharacterCount = "哈喽".chineseCharactersCount()
print("String contains \(chineseCharacterCount) Chinese characters")
```

### Is enterily in Chinese
```swift
if "哈喽".isChinese() {
    print("The string is enterily in Chinese")}
else {
	print("Either not Chinese or partially Chinese")}
```
