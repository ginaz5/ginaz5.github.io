+++
title = '已解決 - VS code terminal 圖標亂碼'
date = 2022-06-11T19:58:43+08:00
+++
當你安裝oh-my-zsh 主題 Power10k，發現VS Code Terminal 裡面的 Icon 顯示不出來可以嘗試[Github 大神們提供的方法](https://github.com/romkatv/powerlevel10k/issues/671#issuecomment-621031981)

1. 開啟VS Code的設定
    
    On PC: 快捷鍵`Ctrl` + `,` 或者 *File → Preferences → Settings*
    
    On Mac: 快捷鍵 `shift` + `⌘` +  `,`  或者 *Code → Preferences → Settings*
    
2. 直接在上面搜尋設定：terminal.integrated.fontFamily
    
    把你所使用的字體填上去，像我就是 MesloLGS NF