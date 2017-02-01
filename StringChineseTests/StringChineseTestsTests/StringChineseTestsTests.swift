//
//  StringChineseTestsTests.swift
//  StringChineseTestsTests
//
//  Created by Niklas Berglund on 2017-02-01.
//  Copyright © 2017 Klurig. All rights reserved.
//

import XCTest
@testable import StringChineseTests

class StringChineseTestsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSimplifiedChineseText() {
        // Excerpt from http://www.gutenberg.org/cache/epub/25328/pg25328.html
        let text = "第六則 大和尚假意超昇 是日也，天朗氣清，涼風洊至。只見棚上豆花開遍，中間卻有幾枝，結成蓓蓓蕾蕾相 似許多豆莢。那些孩子看見嚷道：『好了，上邊結成豆了。』棚下就有人伸頭縮頸將 要彩他。眾人道：『新生豆莢是難得的。』主人道：『待我彩他下來，先煮熟了。今 日有人說得好故事的，就請他吃。』眾人道：『有理，有理。』棚下襬著一張椅子， 中間走出一個少年道：『今日待我坐在椅上，說個世情中有最不服人的一段話頭，叫 列位聽了猛然想著也要痛恨起來。"
        
        XCTAssert(text.chinesePercentage() > 90.0, "Chinese text identified as >90% Chinese")
        XCTAssert(text.isChinese() == false, "Chinese text not identified as 100% Chinese")
    }
    
    func testEnglishText() {
        // Excerpt from https://www.gutenberg.org/files/98/98-h/98-h.htm
        let text = "“No, Jerry, no!” said the messenger, harping on one theme as he rode. “It wouldn’t do for you, Jerry. Jerry, you honest tradesman, it wouldn’t suit your line of business! Recalled—! Bust me if I don’t think he’d been a drinking!”His message perplexed his mind to that degree that he was fain, several times, to take off his hat to scratch his head. Except on the crown, which was raggedly bald, he had stiff, black hair, standing jaggedly all over it, and growing down hill almost to his broad, blunt nose. It was so like Smith’s work, so much more like the top of a strongly spiked wall than a head of hair, that the best of players at leap-frog might have declined him, as the most dangerous man in the world to go over.While he trotted back with the message he was to deliver to the night watchman in his box at the door of Tellson’s Bank, by Temple Bar, who was to deliver it to greater authorities within, the shadows of the night took such shapes to him as arose out of the message, and took such shapes to the mare as arose out of her private topics of uneasiness. They seemed to be numerous, for she shied at every shadow on the road.What time, the mail-coach lumbered, jolted, rattled, and bumped upon its tedious way, with its three fellow-inscrutables inside. To whom, likewise, the shadows of the night revealed themselves, in the forms their dozing eyes and wandering thoughts suggested.Tellson’s Bank had a run upon it in the mail. As the bank passenger—with an arm drawn through the leathern strap, which did what lay in it to keep him from pounding against the next passenger, and driving him into his corner, whenever the coach got a special jolt—nodded in his place, with half-shut eyes, the little coach-windows, and the coach-lamp dimly gleaming through them, and the bulky bundle of opposite passenger, became the bank, and did a great stroke of business. The rattle of the harness was the chink of money, and more drafts were honoured in five minutes than even Tellson’s, with all its foreign and home connection, ever paid in thrice the time. Then the strong-rooms underground, at Tellson’s, with such of their valuable stores and secrets as were known to the passenger (and it was not a little that he knew about them), opened before him, and he went in among them with the great keys and the feebly-burning candle, and found them safe, and strong, and sound, and still, just as he had last seen them."
        
        XCTAssert(text.isChinese() == false, "English text identified as NOT written in Chinese")
    }
    
    func testJapaneseText() {
        // Excerpt from http://www.gutenberg.org/files/39287/39287-h/39287-h.htm
        let text = "次の日は日曜日で、デーリー・メールは休刊である。その日はのろのろと足を引きずるように過ぎた。月曜日、ジェフリー・ウエストはとてつもなく早起きをし、通りに出て、お気に入りの新聞を捜した。それを見つけると苦悶の欄……それだけを見た。火曜日も希望をすてずにまた早起きした。しかしそこで希望はついえた。カールトン・ホテルの女性は快く返事をくれなかったのだ。　失敗というわけか、と彼は思った。すべてを賭して大ばくちに出たが、見事にしくじった。彼女が彼のことを考えるとしても、せいぜい取るに足らぬ道化者、タブロイド紙の回し者と決めつけるくらいのものだ。彼は十分に彼女の侮蔑にあたいした。　水曜日は遅くまで寝ていた。デーリー・メールを急いでのぞこうとはしなかった。前日の失望があまりにも大きかったのだ。ひげを剃りはじめてからようやくアパートの管理人ウオルタースを呼びだし、朝刊を調達してきてもらった。　ウオルタースは高価な宝物を抱えて帰ってきた。というのはその日の苦悶の欄を、ウエストは白いシャボンを顔につけたまま、喜びにあふれて読んだからである。"
        
        XCTAssert(text.isChinese() == false, "Japanese text identified as NOT written in Chinese")
    }
    
    func testKoreanText() {
        // Excerpt from https://ko.wikipedia.org/wiki/%ED%95%9C%EA%B5%AD
        let text = "1919년 3.1운동으로 대한제국을 계승한 대한민국 임시정부가 수립되었고, 일본과 계속 투쟁했다. 일제 강점기 동안 일본 제국은 자국에 편입된 대한 제국의 효율적인 식민지 지배를 위해 교육,의료,에너지,교통 등 사회의 소프트웨어적·하드웨어적 인프라를 구축시켰다. 그리고 일본 제국은 자국에 편입된 대한 제국에 대한 식민지정책으로 사회·경제적 수탈뿐만 아니라 한민족을 말살, 소멸시켜서 일본 제국내의 공식·비공식적으로 차별받는 종속 천민신분층으로 만들 것을 목적으로 하는 한민족 말살정책을 집행하였다. 각종의 간악한 제국주의 식민지정책 중에서도 일본제국의 한반도에 대한 식민지정책은 전례 없이 폭압적이고 악랄하였다. 그러나 지리적으로 아시아의 한쪽 끝, 중국과 러시아 그리고 일본을 양 옆에 두고기 때문에 일본과의 태평양전쟁에서 승리한 이후 소련과 대립하게된 미국은 철의 장막의 한쪽 끝인 한반도에 신경을 쓰지 않을 수 없었다. 일제강점기동안 활동하던 임시정부를 자처하는 독립운동단체들은 여럿있었으나, 대한민국의 헌법은 상해에 있던 대한민국 임시정부를 계승했음을 명시한다."
        
        XCTAssert(text.isChinese() == false, "Korean text identified as NOT written in Chinese")
    }
}
