Imports System

Module RussianRoulette
    Sub Main()
        Dim chambers As Boolean() = {False, False, False, False, False}
        Dim rand As New Random()
        chambers(rand.Next(6)) = True  ' 1 chamber with a bullet

        Console.WriteLine("Welcome to Russian Roulette!")
        Console.ReadLine()  ' Wait for Enter key

        If chambers(0) Then
            Console.WriteLine("Bang! You're dead!")
        Else
            Console.WriteLine("Click. You're safe... for now.")
        End If
    End Sub
End Module
