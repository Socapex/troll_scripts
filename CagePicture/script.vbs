For i=1 To 10000000000000
Dim a
Set fso = CreateObject("Scripting.FileSystemObject")
a = "T:\nicolas-cage-" & i & ".jpg"
fso.CopyFile "T:\nicolas-cage.jpg", a, True
Set fso = Nothing
Next