---
marp: true
theme: uncover
paginate: true
footer: "![ohyeah](src/ohyeah.png)"
style: |
  section {
    --accent: #2563eb;
    --accent-soft: #2563eb14;
    --text: #1e293b;
    --text-strong: #0f172a;
    --text-muted: #64748b;
    --line: #cbd5e1;
    --surface-top: #f7fbff;
    --surface-bottom: #edf5ff;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    background:
      radial-gradient(circle at 100% 100%, rgba(0, 0, 0, 0.13) 0%, rgba(0, 0, 0, 0) 62%),
      var(--surface-top);
    border-top: 2px solid var(--accent);
    border-bottom: 1px solid var(--line);
    color: var(--text);
    font-family: monospace;
    letter-spacing: 0;
    line-height: 1.4;
    text-align: left;
    padding: 16px 32px 32px;
  }
  
  h1, h2, h3 {
    color: var(--text-strong);
    letter-spacing: 0;
    line-height: 1.2;
  }

  section > h1,
  section > h2 {
    margin-top: 0;
  }

  h1 {
    font-size: 1.5em;
    border-bottom: 1px solid var(--line);
    padding: 4px 0 8px 14px;
  }

  h2 {
    font-size: 0.6em;
    border-bottom: 1px solid var(--line);
    padding: 6px 10px;
    margin-top: -10px;
    margin-bottom: 12px;
  }

  h3 {
    font-size: 0.95em;
    color: var(--text);
    padding-left: 10px;
  }

  ul, ol {
    margin: 0;
    padding-left: 1.2em;
  }

  li {
    margin: 0.2em 0;
  }

  a {
    color: var(--accent);
    text-decoration: none;
    text-underline-offset: 2px;
  }

  a:hover {
    text-decoration: underline;
  }

  strong {
    color: var(--accent);
  }

  li strong {
    font-size: 3em;
    line-height: 2;
  }


  blockquote {
    border-left: none;
    background: var(--accent-soft);
    padding: 0.45em 0.9em;
    margin: 0 2em 0.8em;
  }

  section.refs-list ul,
  section.refs-list li,
  section.refs-list a {
    font-size: 0.75em;
    line-height: 1.25;
  }

  section.title-center {
    justify-content: center;
  }

  section.title-center > p {
    width: 100%;
    text-align: right;
  }

  section footer {
    bottom: 6px;
    left: 16px;
    right: auto;
  }

  .small-link {
    font-size: 0.5em;
  }

  blockquote .quote-source {
    display: inline-block;
    margin-top: 0.3em;
    font-size: 0.5em;
    color: var(--text-muted);
  }
---

<!-- _class: title-center -->
# AIと「ハンドル握るのはどっち？」を話してたと思ってたら、全然違う話になってた件

[kotaoue](https://github.com/kotaoue)

---

## はじめに

> 「エンジニアが朝の通勤中にスマートフォンアプリのSlack経由でバグ修正や機能追加を指示すると、Claudeが作業し、完了後にSlackで返答する。エンジニアはその内容を確認し、問題なければ本番環境に統合するだけでいい」
> <span class="quote-source">— [Shopifyのシニアエンジニアは12月以降1行もコードを書いてない](https://www.itmedia.co.jp/aiplus/articles/2602/13/news074.html)</span>

- 「エンジニアリング」って言葉が示すものが変わったなー
- 個人的にはAIエージェントが登場した時よりもビックリ

---

## AIとエンジニアのこれまでの歩み

### 〜2025 = AIペアプログラミング

- エンジニアがAIに質問して答えてもらう
  - GeminiとかCopilotに質問して答えをコピペ

---

## AIとエンジニアのこれまでの歩み

### 2025年前半 = バイブコーディング

- エンジニアがAIに質問しつつコードを実装する
  - Claude/Codex

---

## AIとエンジニアのこれまでの歩み

### 2025年後半 = スペックドリブン(仕様駆動開発)

- まずはエンジニアが納得行くまで設計し、設計できたらAIが実装
  - Kiro
  - CLAUDE.mdとかAGENTS.mdも似た発想

---

## AIとエンジニアのこれまでの歩み

### 2026年初頭 = ハーネスエンジニアリング

- AIが自由に振る舞えるようにエンジニアが場を整える
  - ガイドライン = AIの振る舞いの境界線を明示する
  - ハーネス = AIが全力で挑戦/失敗できる環境を作る

---

## 気づいてきたこと

- AIすごい！
- AIに全部任せるの怖い
- AIの速度に追いつけない
  - レビュー地獄
  - Human in the Loopの限界
  - 人間が仕様を整理するのがボトルネック
    - あっこれWFじゃない？
- 「わかんないけどできた」 = 認知負債/理解負債

---

## 気づいたことのまとめ

- 人間のスピード << (越えられない壁) <<<<< AIのスピード
  - 実装するのに時間がかかる
  - 理解するのに時間がかかる
- **ボトルネックは人間**

---

## どうしよう？  

- **AIを主役にする**

> 開発プロセス全体を通じて、人間がコードに直接関与することは一切ありませんでした。手書きコード一切禁止、これがチームの核となる理念になりました。
> <span class="quote-source">— [ハーネスエンジニアリング：エージェントファーストの世界における Codex の活用 | OpenAI](https://openai.com/ja-JP/index/harness-engineering/)</span>

---

## 自動運転と開発手法の対比

| 自動運転 | 開発手法 | 人間 | AI |
| --- | --- | --- | --- |
| レベル1 | AIペアプログラミング | 実装 | サポート |
| レベル2 | バイブコーディング | 実装 | サポート・実装 |
| レベル3 | スペックドリブン | 設計 | 実装 |
| レベル4 | ハーネスエンジニアリング | 監査 | 計画・実行 |
| レベル5 | ? | 意図 | 実現 |

---

## ハーネスエンジニアリングの難しさ

- AIを実行主体にしても大丈夫と思える準備が難しい
- 必要なのはソフトウェア開発全般に関する十分な知識
  - アーキテクチャ
  - インフラ
  - コード
  - プロセス
  - etc.

---

## ハーネスエンジニアリングやれる？

- **ジュニアなチームには難しい**

---

## 今日の本題

- **チョットワカル人に任せる**

---

## 今すぐハーネスエンジニアリングを始める方法

- **Copilotに任せる**
  - ガイドライン = ローカル触れない
  - ハーネス = 新しいブランチ作って実装してくれる
- ![assignees](./src/assignees.png)

---

## Copilotでいいの？

- 目的は「コードを書かない」「AIに任せる」を経験すること
  - 「任せられること」「任せにくいこと」
  - 「伝わりやすい任せ方」「伝わりづらい任せ方」
- 「AIに任せる」≒「AIを信じる」
- 親と子 ≒ 人間とAI

- <span class="small-link">[kotaoueがCopilotにまかせてみたIssues](https://github.com/issues/recent?q=is%3Aissue%20involves%3A%40kotaoue%20closed%3A2026-02-06..2026-03-05%20sort%3Aupdated-desc&page=1)</span>

---

## 「コードを書かない」「AIに任せる」を経験することって必要なの？

- コードを書くのって結構楽しい = 達成感がある
  - 意図通りに動いた/ビルド通った/きれいなコードが書けた
- でも、コードは「How」
- **達成感は「What」から**

---

## ずっとCopilotでいいの？

- いいよ！とは言えないけど…
- じゃあどうする？には答えがない…
- **のしかかる認知負債**

---

## 認知負債の問題

- 過去 = 理解しないと実装できない
- 現在 = 理解しなくても実装できちゃう
- AIに任せきりだと成長できない

> ジュニアプログラマーにとっての経験値となる部分を全部AIがやってしまうので、学ぶ機会が少なくなっていく。すると、『業界に入ったけれど学ぶことができない』という暗い未来になりかねません
> <span class="quote-source">— [AI時代、技術の壁は消え「心理の壁」が残る。まつもとゆきひろが40年コードを書き続けて見つけた“欲望”の価値 \- エンジニアtype](https://type.jp/et/feature/30626/)</span>

---

## 1000時間の壁と業務

- セミプロ/中上級者になるには1000時間くらいの学習時間が必要
- 学習時間 != 業務時間
  - 業務の中で新しいことにチャレンジするなら、それは学習時間
- AIに任せる or 学習する

---

## 新たな学習方法

- 学習にもAIを使おう

> エンジニア一人が、週末に、本格的なシステムを実際にCI/CD 含めて、テスト、リリースまでの全ての工程で体験できるということです。AIのお陰で。
> AI と一緒でも、結局自分はそれらのディシジョンメーキングをする必要があるので、めっちゃくちゃ知識が増えます。ただし、理解をスキップするのではなく、徹底的に理解します。
> <span class="quote-source">— [ジュニアエンジニアの人、AI後はこうしたらええんちゃう？という話](https://note.com/simplearchitect/n/nf00d38494ac3)</span>

---

## とりあえずアウトプットする

- 学習にAIを使うこととは、実践を繰り返して理解していくこと
  - ❌️ インプット → アウトプットではない
  - ⭕️ アウトプット → インプットの順番にすること

> アウトプットして失敗したこととか、フィードバックを理解するために、インプットする←ここでようやくインプット
> <span class="quote-source">— [【独学の技術】インプットとアウトプットの順番を逆にしたら学習効率が爆上がりした](<https://note.com/yusuke_motoyama/n/nd0b1def06cb8>)</span>

---

## やってみた

- 毎日英語の問題を出してくれるGitHub Actions用意した
- ![h:420](./src/englishPR.png)
- <span class="small-link">[英語読解練習帳 20260311](https://github.com/kotaoue/EnglishLog/pull/11)</span>

---

## AIに要らないよって言われた

- 3日目くらいで、AIが答えまで書いてきた…
- ![h:420](./src/englishPR2.png)
- <span class="small-link">[英語読解練習帳 20260312](https://github.com/kotaoue/EnglishLog/pull/15/changes/aa3ecfc657d881758ac8c929953bf0155f58c31c)</span>

---

## 最後に

- AIのコストって意外と高い

> Reviews are billed on token usage and generally average $15–25, scaling with PR size and complexity.
> <span class="quote-source">— [Bringing Code Review to Claude Code](https://claude.com/blog/code-review)</span>

- そして日本人の給料は安い

> 「日本は逆に働く人が優秀なのに給料が安すぎるから、急いでAIなどに置き換えるメリットがない。技術革新が進まない理由です」
> <span class="quote-source">— [AIより人間の方がコスパがいい…年収3000万円の元米テック幹部が見抜いた日本で｢技術革新｣が起きない皮肉](https://president.jp/articles/-/108717)</span>

---

## おしまい

- **本当はAI使いたいけど高いから人でいいやー**
- ってならないようにしたいなー

---

<!-- _class: refs-list -->
## 参考資料

- [南場智子「ますます“速さ”が命題に」DeNA AI Day2026全文書き起こし \- エンジニアtype](https://type.jp/et/feature/30605/)
- [AIより人間の方がコスパがいい…年収3000万円の元米テック幹部が見抜いた日本で｢技術革新｣が起きない皮肉](https://president.jp/articles/-/108717)
- [AI時代、技術の壁は消え「心理の壁」が残る。まつもとゆきひろが40年コードを書き続けて見つけた“欲望”の価値 \- エンジニアtype](https://type.jp/et/feature/30626/)
- [ジュニアエンジニアの人、AI後はこうしたらええんちゃう？という話](<https://note.com/simplearchitect/n/nf00d38494ac3>)
- [【独学の技術】インプットとアウトプットの順番を逆にしたら学習効率が爆上がりした](<https://note.com/yusuke_motoyama/n/nd0b1def06cb8>)
- [生成AIが進化してもアウトプットのスピードが上がらないのはなぜか？｜inady](https://note.com/inady/n/nee7a0df38f0f)
- [まだAIコードをレビューするか、しないかで言い争ってるの？](https://zenn.dev/nuits_jp/articles/2026-03-08-reviewing-ai-code)
- [ハーネスエンジニアリング：エージェントファーストの世界における Codex の活用 | OpenAI](https://openai.com/ja-JP/index/harness-engineering/)
- [「人間はコードを1行も書かない」という縛りで5ヶ月間プロダクトを作り続けた結果 ― ハーネスエンジニアリング \- Qiita](https://qiita.com/nogataka/items/43c01957fa1e54d9a079)
- [事例から学ぶ企業でのコーディングエージェントの内製やハーネスの作り方](https://zenn.dev/asterminds/articles/13356a9b5eb492)
- [1,500+ PRs Later: Spotify’s Journey with Our Background Coding Agent (Honk, Part 1\)](https://engineering.atspotify.com/2025/11/spotifys-background-coding-agent-part-1)
- [仕様駆動開発への懐疑](https://zenn.dev/cbmrham/articles/202601-spec-driven-development-skepticism)
- [AI組織の家老が部下8人の報告で圧死したので、将軍に「本音を聞いてやれ」と言ったら](https://zenn.dev/shio_shoppaize/articles/dc85db324bb3f0)
