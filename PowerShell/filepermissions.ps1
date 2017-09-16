# Snippet to change the owner and ACL's for all files in a directory - gives the current user full rights
# Useful when dealing with Windows protected directories and files

(gci "C:\windows.old\" -Rec).foreach{icacls $_.fullname /setowner $env:USERNAME; icacls $_.fullname /grant $env:USERNAME`:F}