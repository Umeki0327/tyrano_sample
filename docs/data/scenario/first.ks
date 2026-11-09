*start

; ============================================
; 1. 初期設定とレイアウトの修正（位置被りの調整）
; ============================================
[cm]
[clearfix]
[start_keyconfig]

[title name="慶應義塾とタテジマキンチャクダイ"]
[hidemenubutton]

; キャラクター定義
[chara_new name="keio" storage="keio_normal.png" jname="慶應義塾大学"]
[chara_new name="tatejima" storage="tatejima_normal.png" jname="タテジマキンチャクダイ"]

; 【修正】メッセージウィンドウの位置（画面下部に配置）
[position layer="message0" left="40" top="340" width="1200" height="320" page="fore" visible="true"]
[position layer="message0" page="fore" frame="none" opacity="200" color="0x0f172a"]
; 【修正】本文の印字開始位置（名前枠と被らないように上部余白 margin_t を確保）
[position layer="message0" margin_l="40" margin_t="60" margin_r="40" margin_b="20"]

[current layer="message0"]
[font color="0xffffff" size="24" face="sans-serif"]
[setdafaultfont color="0xffffff" size="24"]

; 【修正】名前表示領域の位置（メッセージ枠の『少し上』 y="295" に配置）
[ptext name="chara_name_area" layer="message0" color="0x38bdf8" size="26" x="60" y="295" bold="true"]
[chara_config ptext="chara_name_area"]

; 背景表示
[bg storage="mita_campus.jpg" time="1000"]
[wait time="500"]

; ============================================
; 2. イントロダクション
; ============================================

#
三田キャンパス・大講堂の前。[l][r]
空から突如降ってきた塩水タワーの中で、タテジマキンチャクダイちゃんは優雅にヒレを動かしていた。[p]

[chara_show name="keio" left="100" top="80" time="500"]

#慶應義塾大学
「見てごらん、タテジマキンチャクダイちゃん。今日の僕は一段と輝いているだろう？」[l][r]
「日吉で育まれたマウント気質と、三田で熟成された選民意識が、秋の木漏れ日に反射しているよ」[p]

[chara_show name="tatejima" left="520" top="100" time="500"]

#タテジマキンチャクダイ
「相変わらず主語がでかいわね、慶應くん！」[l][r]
「というか、さっきから生協の前で虚無の目をして缶コーヒーを飲んでいる経済学部の学生たちの視線が痛いのよ！」[p]

#タテジマキンチャクダイ
「私をまじまじと見ないで！ 私はただの海水魚（体長約40cm、主食はカイメン）よ！」[p]

#慶應義塾大学
「ははは！ 照れるなよ。彼らは君の圧倒的な縞模様に見とれているだけさ」[l][r]
「なにしろ君の模様は……『慶應幼稚舎から上がってきた内部生の純血の血統書』のように美しい」[p]

; フラッシュ演出
[bg opacity="255" time="100" color="0xffffff"]
[bg storage="mita_campus.jpg" time="100"]
[chara_mod name="tatejima" storage="tatejima_angry.png"]

#タテジマキンチャクダイ
「っ〜〜〜〜！ 刺すわよ！？ 魚類をナメたら毒棘（えらぶたの棘）で刺すわよ！？」[l][r]
「内部生と外部生の微妙な空気感を魚類の模様に例えるんじゃないわよ！」[p]

; 画面振動演出
[quake count="5" time="600" vmax="10"]
[bg opacity="255" time="100" color="0xd97706"]
[bg storage="mita_campus.jpg" time="300"]

#慶應義塾大学
「……くッ！ この地響きは……！？」[p]

#タテジマキンチャクダイ
「な、なにアレ！？ 巨大なエンジ色の文字で『在野の精神』って書かれたお化け屋敷みたいな建築物が這い寄ってくるんだけど！？」[p]

#慶應義塾大学
「我が宿敵……早稲田大学さ！ 彼らは僕が君とイチャついているのを聞きつけ、伝統の『早慶戦』を生物学の領域にまで持ち込もうとしている！」[p]

#早稲田大学（天空の声）
「おい慶應！！ お前がタテジマキンチャクダイと恋愛ごっこをしている間、俺たちは高田馬場のロータリーで嘔吐しながら文脈を模索しているんだぞ！！」[p]

#タテジマキンチャクダイ
「被害妄想が凄まじいわね！？ 誰も頼んでないのに勝手に自傷行為して突っかかってこないで！」[p]

#慶應義塾大学
「タテジマキンチャクダイちゃん！ 僕の真の力を解き放つ時が来た。決断してくれ、僕たちはどうやってこの試練を乗り越えるべきか！？」[p]

; ============================================
; 3. 選択肢
; ============================================

[layopt layer="message0" visible="false"]

*select_branch

[glink color="blue" stroke="1" opacity="240" target="*tag_mita" text="▶ 三田会の圧倒的資金力で早稲田を丸ごと買収する" size="20" width="700" x="90" y="160"]
[glink color="red" stroke="1" opacity="240" target="*tag_jiro" text="▶ ラーメン二郎三田本店を召喚して全員の血管を詰まらせる" size="20" width="700" x="90" y="240"]
[glink color="black" stroke="1" opacity="240" target="*tag_himono" text="▶ 【即死】自ら陸に上がり干物となって悟りを開く" size="20" width="700" x="90" y="320"]

[s]

; ============================================
; 分岐 1：三田会買収ルート（HAPPY END）
; ============================================
*tag_mita

[cm]
[layopt layer="message0" visible="true"]
[bg storage="money_bg.jpg" time="500"]

#慶應義塾大学
「出よ、世界のOB・OGネットワーク！ 『三田会』の権力！」[p]

[bg opacity="255" time="200" color="0xfacc15"]
[bg storage="money_bg.jpg" time="300"]

#早稲田大学（天空の声）
「ぐぬぬ……！ 圧倒的資本力……！ これが企業の中枢を牛耳る組織の力か……！ 撤退だー！」[p]

#タテジマキンチャクダイ
「買った！？ 大学を丸ごと買収して解決したわ！？ でも待って、買収したってことは早稲田も慶應になっちゃうの！？」[p]

#慶應義塾大学
「そうさ！ これで日本全国のキャンパスが僕のものだ。さあ、タテジマキンチャクダイちゃん、次は東大を買いに行こうか」[p]

#タテジマキンチャクダイ
「世の中お金が全てじゃないって、誰かこの大学に教えてあげてー！！」[p]

[cm]
[font color="0xfacc15" size="36" bold="true"]
【 HAPPY END 1：資本主義の完全勝利 】[l][cm]
[resetfont]
[jump target=*start]

; ============================================
; 分岐 2：ラーメン二郎ルート（BAD END）
; ============================================
*tag_jiro

[cm]
[layopt layer="message0" visible="true"]
[quake count="10" time="1000" vmax="25"]
[bg storage="ramen_jiro.jpg" time="300"]

#慶應義塾大学
「行くぞ……『ニンニクマシマシヤサイアブラカラメ』！！」[p]

#早稲田大学（天空の声）
「な、なんだこの超ド級のアブラは……！ 油そばで鍛えた俺たちの胃袋すら……破壊されていく……ゴフッ！」[p]

#タテジマキンチャクダイ
「きゃー！ 塩分濃度が3.5％どころの話じゃないわ！ 濃縮された塩分と脂質で私のエラが完全に物理詰まりを起こしてる！！」[p]

#慶應義塾大学
「ははは！ 見ろ、タテジマキンチャクダイちゃん！ ギルティ（残飯）を出した者は去るのみ！ これぞ三田のソウルフードが生み出す絶対的カオスだ！」[p]

#タテジマキンチャクダイ
「狂ってる……！ 全員ギロチン背脂の露と消えたわ……！」[p]

[cm]
[font color="0xef4444" size="36" bold="true"]
【 BAD END 2：全滅のギルティ 】[l][cm]
[resetfont]
[jump target=*start]

; ============================================
; 分岐 3：即死ルート（DEAD END）
; ============================================
*tag_himono

[cm]
[layopt layer="message0" visible="true"]
[bg storage="sunset_beach.jpg" time="800"]
[chara_hide_all time="300"]

#タテジマキンチャクダイ
「学歴社会の闇も、高田馬場の狂気も、もう疲れちゃった……。私はただの干物になるわ」[p]

#慶應義塾大学
「待って！ タテジマキンチャクダイちゃん！ 日陰に入って！ 乾いちゃうからー！」[p]

#
（タテジマキンチャクダイちゃんは秋のカラッとした空気の中で香ばしく乾き、高級おつまみとして三田会のパーティーで振る舞われた）[p]

[cm]
[font color="0x94a3b8" size="36" bold="true"]
【 DEAD END：美味しくいただきました 】[l][cm]
[resetfont]
[jump target=*start]