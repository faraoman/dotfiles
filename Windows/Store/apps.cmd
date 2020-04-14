@echo off
@echo Download QuickLook
curl -L http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/9c1110b1-9e3c-472c-8b19-f0df0a698ddb?P1=1586857167&P2=402&P3=2&P4=XNHYtknNai25pH7XnY5a6YW8EynDvGxbcIMd8am4K80Wl0A98%2fNjzLWShBRrINrFy0CBaaLGOvEGllvYS5sl1g%3d%3d --output QuickLook.appx
@echo Intalling QuickLook
powershell -command "Add-AppxPackage -Path "QuickLook.Appx""
