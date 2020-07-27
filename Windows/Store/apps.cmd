@echo off

@echo Download QuickLook
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/9c1110b1-9e3c-472c-8b19-f0df0a698ddb?P1=1586857167&P2=402&P3=2&P4=XNHYtknNai25pH7XnY5a6YW8EynDvGxbcIMd8am4K80Wl0A98%2fNjzLWShBRrINrFy0CBaaLGOvEGllvYS5sl1g%3d%3d --output QuickLook.AppxBundle
@echo Intalling QuickLook
powershell -command "Add-AppxPackage -Path "QuickLook.AppxBundle""

@echo Download plugins
curl -L https://github.com/QL-Win/QuickLook.Plugin.EpubViewer/releases/download/1/QuickLook.Plugin.EpubViewer.qlplugin --output QuickLook.Plugin.EpubViewer.qlplugin
curl -L https://github.com/QL-Win/QuickLook.Plugin.OfficeViewer/releases/download/3/QuickLook.Plugin.OfficeViewer.qlplugin --output QuickLook.Plugin.OfficeViewer.qlplugin
curl -L https://github.com/jeremyhart/QuickLook.Plugin.FontViewer/releases/download/1.0.0/QuickLook.Plugin.FontViewer.qlplugin --output QuickLook.Plugin.FontViewer.qlplugin

@echo Download Spotify
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/42ce3ffa-13de-4173-a865-fea5740b78f2?P1=1593729269&P2=402&P3=2&P4=lG14KsuRuJF8mxbMCkim%2fJhuDTMY5RWoeaOu8FUvCaisX3%2fts01Us%2bk85J2OvUyCorHavG%2bR3pVqX1Fo2eQZ2g%3d%3d --output Spotify.AppxBundle
@echo Installing Spotify
powershell -command "Add-AppxPackage -Path "Spotify.AppxBundle""

@echo Download Windows Terminal
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/1240571b-81cc-4252-9154-c171629f892b?P1=1593728359&P2=402&P3=2&P4=c%2fSt1%2f6HJE8%2fX6NYMIL0MY8%2bJ7v8nD8cFmQGgTyiLcwN6PgOOpZQ3Vn1M3TloxjyQDb5YEEc2HhzE%2fxIYwaaZg%3d%3d --output WindowsTerminal.AppxBundle
@echo Install Windows Terminal
powershell -command "Add-AppxPackage -Path "WindowsTerminal.AppxBundle""

@echo Download YourPhone
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/f6496d5a-f2c9-4121-9be4-601469f1a482?P1=1594556773&P2=402&P3=2&P4=nVbV3foK4ahpM15iUKNVzntucGlWlucbm5VTssY%2fqrrAPO7ihcxfnAa68XUN9NPcxR6pK%2fSuFC2ZvgqicYpY6w%3d%3d --output Microsoft.YourPhone.AppxBundle
@echo Install YourPhone
powershell -command "Add-AppxPackage -Path "Microsoft.YourPhone.AppxBundle""

@echo Download HEVC Video Extensions from Device Manufacturer
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/c6d93e06-a2a4-4fdc-b207-2ddd8349dbfa?P1=1594556371&P2=402&P3=2&P4=gs8KNDAjg0lGYC57jSrc31mkkgWVwxfq%2fVnQvo35utdC1IAE7WlWVaYj70Y6Qg6VBGz1JCWLpc1yJ4Q59ZaJCg%3d%3d --outpit HEVCVideoExtension.AppxBundle
@echo Install HEVC Video Extensions from Device Manufacturer
powershell -command "Add-AppxPackage -Path "HEVCVideoExtension.AppxBundle""

@echo Download HEIF Image Extensions
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/84c6d18f-97ad-436f-961b-bd10f20a4e0a?P1=1594556503&P2=402&P3=2&P4=JIj5L6mt4jY%2fxh2luQaskTiIJy8p6AWorIEzOYGiUpSJ5bOJfqjTcdP%2fxIZCNvKSQ5WKLREcUeZHE9QKfvC2ng%3d%3d --output HEIFImageExtension.AppxBundle
@echo Install HEIF Image Extensions
powershell -command "Add-AppxPackage -Path "HEIFImageExtension.AppxBundle""

@echo Download Netflix
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/f21cbf4b-161b-4d1f-b592-baf05e16376c?P1=1594798540&P2=402&P3=2&P4=GHCYDnPrvHduernRR1w1uAdxU662Y4sAEwiLG2G6j0Td81zq6CqmEXf9q%2bo4lzE3nTNipd1AaNeipg7fS9NmPw%3d%3d --output Netflix.AppxBundle
@echo Install Netflix
powershell -command "Add-AppxPackage -Path "Netflix.AppxBundle""

@echo Download Shazam
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/42893d2a-6de0-42b4-8d4c-1af6a0065fa1?P1=1594888363&P2=402&P3=2&P4=OF6bLn%2fpSWSF0ZNINDy47jqbbf26r8hCLWa0rUb%2f6Abkl2NtStuKbL02oqFehLfUspWiLVdDHAr0ioxqaVmj4w%3d%3d --output Shazam.AppxBundle
@echo Install Shazam
powershell -command "Add-AppxPackage -Path "Shazam.AppxBundle""

@echo Download Microsoft Office OneNote
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/c97bdd6e-3755-4315-8f42-e058a0ed1b76?P1=1595534518&P2=402&P3=2&P4=UROVn9SvQRSZU27BZ6VSktYSicKtsHCdxNKRJrFdp8IVx8xcVMlPtZwKx9Obw1S23p1ooHC6i5o8Vy%2fmgTR9Eg%3d%3d --output Microsoft.Office.OneNote.AppxBundle
@echo Install Microsoft Office OneNote
powershell -command "Add-AppxPackage -Path "Microsoft.Office.OneNote.AppxBundle""

<<<<<<< Updated upstream
@echo Download Microsoft Todos
curl -L http://11.tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/d3e67fd8-0a34-4008-8939-4fc17cf72cd7?P1=1595837147&P2=402&P3=2&P4=QW4SfDuPKXwVbjRQxEZitAqQ7dD5FLOO%2b4G0buOZmwxXUJR4GtHU045KemqBglv1JVTi43stIPQN4wxEuqS7sA%3d%3d --output Microsoft.Todos.AppxBundle
@echo Install Microsoft Todos
powershell -command "Add-AppxPackage -Path "Microsoft.Todos.AppxBundle""

@echo Download Telegram Desktop
curl -L http://3.tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/9274f14d-2587-45c7-ae25-847b3f933977?P1=1595836267&P2=402&P3=2&P4=oa%2fC6J%2f3%2fzBQjPa9m0L9mMWLQC%2fEUST7ykRFRy5pYjReJjct077MiWT9t9zYMRuUWz6JvyWUtF18xxSOEnnPOQ%3d%3d --output TelegramDesktop.AppxBundle
@echo Install Telegram Dektop
powershell -command "Add-AppxPackage -Path "TelegramDesktop.AppxBundle""
=======
@echo Download DBeaver CE
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/04ba7fee-1016-4e24-9938-78c3c7164a50?P1=1595535204&P2=402&P3=2&P4=QJopKvWyQ8WBTnlppOFaxAujguqG168QShxVLusCr7NDVBXE%2fFG%2b7LQS2tdUqfbCq%2fVkJbg5OaSlTVMyxkii7Q%3d%3d --output DBeaverCE.AppxBundle
@echo Install DBeaver CE
powershell -command "Add-AppxPackage -Path "DBeaverCE.AppxBundle""
>>>>>>> Stashed changes
