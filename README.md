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
**Note!** Special characters such as space and different punctuation characters are present in both Japanese and Chinese. They don't count as Chinese. `isChinese()` checks if the string is **100%** Chinese which is seldom the case for Chinese texts unless it's just one word - not a sentence with punctuation etc.

```swift
if "哈喽".isChinese() {
    print("The string is enterily in Chinese")}
else {
	print("Either not Chinese or partially Chinese")}
```
