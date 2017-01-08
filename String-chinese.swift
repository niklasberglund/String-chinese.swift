//
//  String-chinese.swift
//
//  Created by Niklas Berglund<niklas@klurig.hk> on 2017-01-08.
//

import Foundation

extension String {
    /// Check whether String consist of 100% Chinese characters.
    ///
    /// - Returns: true if only Chinese
    func isChinese() -> Bool {
        return Int(self.chinesePercentage()) == 100
    }
    
    /// Number of Chinese characters in String.
    ///
    /// - Returns: Chinese character count
    func chineseCharactersCount() -> Int {
        let stripped = self.components(separatedBy: CharacterSet.whitespacesAndNewlines).filter { !$0.isEmpty }.joined()
        
        var chineseCount = 0
        
        for scalar in stripped.unicodeScalars {
            switch scalar.value {
            case 19968...40959: // Common
                chineseCount += 1
            case 13312...19903: // Rare
                chineseCount += 1
            case 131072...173791: // Rare, historic
                chineseCount += 1
            case 173824...177983: // Rare, historic
                chineseCount += 1
            case 177984...178207: // Uncommon
                chineseCount += 1
            case 63744...64255: // Duplicates
                chineseCount += 1
            case 194560...195103: // Unifiable variants
                chineseCount += 1
            case 40870...40883: // Interoperability with HKSCS standard
                chineseCount += 1
            case 40884...40891: // Interoperability with GB 18030 standard
                chineseCount += 1
            case 40892...40898: // Interoperability with commercial implementations
                chineseCount += 1
            case 40899: // Correction of mistaken unification
                chineseCount += 1
            case 40900...40902: // Interoperability with ARIB standard
                chineseCount += 1
            case 40903...40907: // Interoperability with HKSCS standard
                chineseCount += 1
            default:
                continue
            }
        }
        
        return chineseCount
    }
    
    /// Percentage of Chinese characters in String.
    ///
    /// - Returns: Chinese characters percentage
    func chinesePercentage() -> Float {
        let chineseCount = self.chineseCharactersCount()
        let stripped = self.components(separatedBy: CharacterSet.whitespacesAndNewlines).filter { !$0.isEmpty }.joined()
        
        return (Float(chineseCount) / Float(stripped.characters.count)) * 100
    }
}
