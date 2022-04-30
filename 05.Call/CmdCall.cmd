:: 呼叫一個新的shell程式(cmd)並於指令執行完成後結束這個 shell ，返回原來的shell環境，外部程式執行在新的shell之中，因此存取的環境變數與原程式不同，有區域變數的遮蔽效果
@echo off
cmd /c notepad.exe

::set myname=Ben
cmd /c child.cmd hello
exit