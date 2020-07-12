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
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/f6496d5a-f2c9-4121-9be4-601469f1a482?P1=1594556773&P2=402&P3=2&P4=nVbV3foK4ahpM15iUKNVzntucGlWlucbm5VTssY%2fqrrAPO7ihcxfnAa68XUN9NPcxR6pK%2fSuFC2ZvgqicYpY6w%3d%3d -- out Microsoft.YourPhone.AppxBundle
@echo Install YourPhone
powershell -command "Add-AppxPackage -Path "Microsoft.YourPhone.AppxBundle""
