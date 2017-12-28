<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ahshoe.20161120121808.1" a="E"><vh>@settings</vh>
<v t="ahshoe.20170315212615.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="ahshoe.20170315212626.1"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh></v>
<v t="yen.20170429132400.1"><vh>協同著作規劃</vh></v>
<v t="leo.20171218141522.1"><vh>報告章節規劃</vh></v>
<v t="yen.20170429103742.1" a="E"><vh>@path ./../</vh>
<v t="yen.20170429103940.1" a="E"><vh>@path markdown</vh>
<v t="ahshoe.20170322182713.1"><vh>@edit reference.md</vh></v>
<v t="ahshoe.20170322181453.1"><vh>@edit refer.bib</vh></v>
<v t="leo.20171119234752.1" a="E"><vh>封面以及摘要</vh>
<v t="ahshoe.20161120122151.1" a="E"><vh>@clean cover_and_abstract.md</vh>
<v t="ahshoe.20170317115820.1"><vh>摘要</vh></v>
<v t="leo.20171228150036.1"><vh>摘要</vh></v>
</v>
</v>
<v t="leo.20171119234822.1" a="E"><vh>各章節內容</vh>
<v t="yen.20170429214845.1" a="E"><vh>@path paragraph</vh>
<v t="yen.20170429214838.1" a="E"><vh>@clean introduction.md</vh>
<v t="yen.20170429214838.3"><vh>前言內容</vh></v>
</v>
<v t="yen.20170429215041.1" a="E"><vh>個工作內容分工</vh>
<v t="yen.20170429215130.1"><vh>各工作分工介紹</vh></v>
</v>
<v t="yen.20170429215252.1" a="E"><vh>@clean python_introduction.md</vh>
<v t="yen.20170429215308.1"><vh>Python 程式語法介紹</vh></v>
</v>
<v t="yen.20170429215416.1"><vh>@clean pyqt5_introduction.md</vh></v>
</v>
</v>
</v>
</v>
<v t="leo.20171228140504.2" a="E"><vh>Recovered Nodes</vh>
<v t="leo.20171228140504.3"><vh>Recovered node "摘要" from @clean cover_and_abstract.md</vh>
<v t="leo.20171228140504.4"><vh>old:摘要</vh></v>
<v t="leo.20171228140504.5"><vh>new:摘要</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170123213451.1">@language python
filename = "report"
import os, platform
# 更換目錄到 markdown 
os.chdir("./../markdown")

# 若在 Linux 環境則使用 ukai.ttc 系統字形
if platform.system().lower()=="linux": font = "ukai.ttc"
# 在 windows 環境使用 SimSun 字形
elif platform.system().lower()=="windows": font = "SimSun"
else: font = "Arial"
fontsize = "12"
margin = "1in"
# --pdf-engine 使用 xelatex
# lang 請參照 https://tools.ietf.org/html/bcp47, 這裡的 zh-cmn 為 Mandarin Chinese 國語
# -V lang=zh-cmn 為一組 key=value 對應的 Variable 設定
# -N 表示 Number section headings in LaTeX, ConTeXt, HTML, or EPUB output. By default, sections are not numbered.
settingFlag = "--pdf-engine=xelatex -V lang=zh-cmn -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --filter pandoc-tablenos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2} --bibliography=refer.bib --csl=ieee.csl".format(font, fontsize, margin)
g.es("---Pandoc---")

# 選擇所要納入的 Markdown 檔案, 不納入的檔案名稱前方加上  # 即可
chapter_list = " ".join("./paragraph/" + i for i in [
"introduction.md",
"portable_system.md", 
"python_introduction.md", 
"pyqt5_introduction.md", 
"calculator.md", 
#"discussion.md", 
"results.md", 
])

# 若系統並未正確轉檔, 可以將 os.system 改為 g.es 表示要使用 Leo Editor 的 global 物件中的 echo string 將指令印在 log 區
# 然後複製指令, 然後在命令列視窗中的 markdown 目錄中執行, 就可以得到錯誤訊息
# 或許可以再從 https://stackoverflow.com/questions/26005583/return-value-of-x-os-system 中的建議改進此一指令
g.es(os.system("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag)))
g.es("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("PDF 轉換完畢")
g.es('-'*12)</t>
<t tx="ahshoe.20161120121808.1"></t>
<t tx="ahshoe.20161120122151.1">---
university_zh: '國立虎尾科技大學'
institute_zh: '機械設計工程系'
category_zh: '電腦輔助設計實習 ag3   期末報告'
title_zh: '第三組'
title_en: '提球系統線上報告'
author:
- 設計二乙 40523107 鄭佩宜
- 設計二乙 40523108 王信為
- 設計二乙 40523109 王振偉
- 設計二乙 40523116 辛泊剛
- 設計二乙 40523117 周哲宇
- 設計二乙 40523118 林兆戎

advisor_zh: '嚴家銘'
date: '2017.12.18'
---

@others
</t>
<t tx="ahshoe.20170315212615.1">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="ahshoe.20170315212626.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="ahshoe.20170317115820.1">---
abstract: |
    我們這組以類似挖土機的方式將球從起始點帶上高處，在設計出一條專屬的軌道，使球在軌道中運行可以再度回到起始點，周而復始。
    
    + 球會聚集在最低處當提球系統的凹槽靠近後會滾入。
    + 滾入後會將球帶到高處軌道，由於軌道是斜面所以球會向下滾.
    + 經過設計的軌道後會回到最開始的初始點。
    
    使用的軟體為V-rep.    on-shape.   SolidWorks   solvespace  四種軟體
---


</t>
<t tx="leo.20171119234752.1"></t>
<t tx="leo.20171119234822.1"></t>
<t tx="leo.20171218141522.1">標題頁 - 含報告標題、作者、日期與所屬單位
目錄 - 列出全文章節與所屬頁面連結
摘要 - 解釋報告編寫動機、報告重點、結論、建議與關鍵字

前言 - 簡要描述全文意旨與背景, 說明報告目標與報告內容組成架構

內文 - 依照章節標題, 詳細說明報告內容, 包括方法、操作步驟與所得結果的詳細說明

結論 - 條列所獲致的重要成果, 與摘要及導言中的目標互相呼應

討論與建議 - 說明後續值得進行的方向、方法與可能遭遇問題的討論

參考 - 詳列所引用的參考內容

附錄 - 附加值得參考的詳細內容</t>
<t tx="leo.20171228140504.2"></t>
<t tx="leo.20171228140504.3">(uncached) ahshoe.20170317115820.1
Diff...
  ---
  abstract: |
-     我們這組以類似挖土機的方式將球從起始點帶上高處，在設計出一條專屬的軌道，使球在軌道中運行可以再度回到起始點，周而復始。
+     這裡是摘要內容。A pipe character, followed by an indented block of text is treated as a literal block, in which newlines are preserved throughout the block, including the final newline.
      
-     + 球會聚集在最低處當提球系統的凹槽靠近後會滾入。
-     + 滾入後會將球帶到高處軌道，由於軌道是斜面所以球會向下滾.
-     + 經過設計的軌道後會回到最開始的初始點。
+     + 以 YAML 的方式插入。
+     + The '+' indicator says to keep newlines at the end of text blocks.
+     + 使用 Markdown 語法。
+     + 前面使用加號
      
-     使用的軟體為V-rep.    on-shape.   SolidWorks   solvespace  四種軟體
+     本研究的重點在於 ...
  ---
  
  
</t>
<t tx="leo.20171228140504.4">---
abstract: |
    這裡是摘要內容。A pipe character, followed by an indented block of text is treated as a literal block, in which newlines are preserved throughout the block, including the final newline.
    
    + 以 YAML 的方式插入。
    + The '+' indicator says to keep newlines at the end of text blocks.
    + 使用 Markdown 語法。
    + 前面使用加號
    
    本研究的重點在於 ...
---


</t>
<t tx="leo.20171228140504.5">---
abstract: |
    我們這組以類似挖土機的方式將球從起始點帶上高處，在設計出一條專屬的軌道，使球在軌道中運行可以再度回到起始點，周而復始。
    
    + 球會聚集在最低處當提球系統的凹槽靠近後會滾入。
    + 滾入後會將球帶到高處軌道，由於軌道是斜面所以球會向下滾.
    + 經過設計的軌道後會回到最開始的初始點。
    
    使用的軟體為V-rep.    on-shape.   SolidWorks   solvespace  四種軟體
---


</t>
<t tx="leo.20171228150036.1">各工作內容分工
---

組長:林兆戎

期末報告報告內容編輯人:林兆戎

主軸構思:整組人員

使用繪圖軟體繪製主軸:鄭佩宜.周哲宇
使用軟體:on-shape SolidWorks

模擬人員:  王信為.辛泊剛
使用軟體:  solvespace v-rep

軌道設計:鄭佩宜.周哲宇.林兆戎</t>
<t tx="yen.20170429103742.1"></t>
<t tx="yen.20170429103940.1"></t>
<t tx="yen.20170429132400.1">每一位協同人員各在 users 目錄中建立一個 .leo 檔案

各自選擇要編輯的 .md 檔案, 可以使用 @edit 或 @clean 節點編輯指令

除非必要否則不更動 markdown 目錄下的 template.tex 檔案</t>
<t tx="yen.20170429214838.1">主題
===

期末報告主題

@others</t>
<t tx="yen.20170429214838.3">主題內容。

\

一個完整的提球系統

\ 

https://mde1a1.kmol.info/2017fall/doc/trunk/blog/kmol-2017-fall-cadp-fourbar-three-position-synthesis.html
這是老師的影片參考網址
</t>
<t tx="yen.20170429214845.1"></t>
<t tx="yen.20170429215041.1">各工作內容分工
===

@others</t>
<t tx="yen.20170429215130.1">各工作內容分工
---

組長:林兆戎

期末報告報告內容編輯人:林兆戎

主軸構思:整組人員

使用繪圖軟體繪製主軸:鄭佩宜.周哲宇
使用軟體:on-shape SolidWorks

模擬人員:  王信為.辛泊剛
使用軟體:  solvespace v-rep

軌道設計:鄭佩宜.周哲宇.林兆戎</t>
<t tx="yen.20170429215252.1">Python 程式語法
===

Python 程式語法

@others</t>
<t tx="yen.20170429215308.1">變數命名
---

IPv4 的內容

有一張圖片：

![Kmol][]

稱為圖 {@fig:駱駝}。

各 md 檔案可以在 images 目錄下自訂與 md 檔案名稱相同的子目錄存放影像檔案

[Kmol]: ./images/kmol.png {#fig:駱駝}

print 函式
---

重複迴圈
---

判斷式
---

數列
---</t>
<t tx="yen.20170429215416.1"> PyQt5 簡介
===

說明 PyQt5 基本架構與程式開發流程

@others</t>
</tnodes>
</leo_file>
