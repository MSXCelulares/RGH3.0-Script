@ECHO off
@CHCP 850 >NUL
SETLOCAL EnableDelayedExpansion
SET python=python.exe
SET errorlevel=0
SET erroinfo=
mode 75,26

:bof
@COLOR 85
CLS
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                 MMM   MMM    SS        S     XX   XX                  �
ECHO  �                 M MM MM M    SS               XX XX                   �
ECHO  �                 M  MMM  M     SSSSSSSSS        XXX                    �
ECHO  �                 M       M             SS      XX XX                   �
ECHO  �                 M       M    S        SS     XX   XX                  �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �            Firmware Update Tool Microsoft XBox 360 RGH 3.0            �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �                             C R E D I T S                             �
ECHO  �                                                                       �
ECHO  � Thanks DrSchottky, 15432, Octal450 and Creators Build.py for ECC Code �
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
ECHO.
PAUSE

:nochoice
CLS
SET model=
SET nand=
SET ecc=
SET cpukey=
SET imagem=
GOTO start

:help
@COLOR F1
SET erroinfo=
CLS
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  �                               A J U D A                               �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �           Firmware Update Tool Microsoft XBox 360 RGH 3.0             �
ECHO  �                                                                       �
ECHO  � 1) Copie e cole os arquivos de NAND (nanddump.bin ou updflash.bin) e  �
ECHO  �   o arquivo de CPUKEY (cpukey.txt ou key.txt) para a pasta NAND_DATA  �
ECHO  �   ou Digite a CPUKEY corretamente no Campo quando solicitado.         �
ECHO  �                                                                       �
ECHO  � 2) Selecione o modelo correto de sua placa Microsoft XBox360 no MENU; �
ECHO  �                                                                       �
ECHO  � 3) Execute o Script e aguarde a cria��o do arquivo NAND_RGH3.BIN.     �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �                    "<<< MSX Celulares e Games >>>"                    �
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
ECHO.
PAUSE 
GOTO start

:start
@COLOR 79
SET erroinfo=
CLS
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  � Qual o Modelo Correto de sua Placa Microsoft XBox360?                 �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  � MENU PRINCIPAL:                                                       �
ECHO  �                                                                       �
ECHO  �   1.) Corona V1, V3 e V5 com Nand 16Mb                                �
ECHO  �   2.) Corona V2, V4 e V6 com Nand 4Gb                                 �
ECHO  �   3.) Falcon Osc. 10Mhz                                               �
ECHO  �   4.) Falcon Osc. 27Mhz                                               �
ECHO  �   5.) Jasper Osc. 10Mhz                                               �
ECHO  �   6.) Jasper Osc. 27Mhz                                               �
ECHO  �   7.) Jasper64 Osc. 10Mhz                                             �
ECHO  �   8.) Jasper64 Osc. 27Mhz                                             �
ECHO  �   9.) Trinity                                                         �
ECHO  �   0.) Help                                                            �
ECHO  �   X.) Exit                                                            �
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
ECHO.
SET choice=
SET /p choice= Escolha uma op��o acima: 
IF /i "%choice%"=="1" (
	SET model=CORONA 16Mb
	SET ecc=.\ecc\RGH3_Corona.bin
	SET imagem=.\images\Slim_Corona.jpg
) ELSE IF /i "%choice%"=="2" (
	SET model=CORONA 4Gb
	SET ecc=.\ecc\RGH3_Corona_4G.bin
	SET imagem=.\images\Slim_Corona.jpg
) ELSE IF /i "%choice%"=="3" (
	SET model=FALCON 10Mhz
	SET ecc=.\ecc\RGH3_Falcon_10mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="4" (
	SET model=FALCON 27Mhz
	SET ecc=.\ecc\RGH3_Falcon_27mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="5" (
	SET model=JASPER 10Mhz
	SET ecc=.\ecc\RGH3_Jasper_10mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="6" (
	SET model=JASPER 27Mhz
	SET ecc=.\ecc\RGH3_Jasper_27mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="7" (
	SET model=JASPER64 10Mhz
	SET ecc=.\ecc\RGH3_Jasper64_10mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="8" (
	SET model=JASPER64 27Mhz
	SET ecc=.\ecc\RGH3_Jasper64_27mhz.bin
	SET imagem=.\images\Jasper_Falcon.jpg
) ELSE IF /i "%choice%"=="9" (
	SET model=TRINITY
	SET ecc=.\ecc\RGH3_Trinity.bin
	SET imagem=.\images\Trinity_SMC_PLL.jpg
) ELSE IF /i "%choice%"=="0" (
	GOTO help
) ELSE IF /i "%choice%"=="X" (
	exit /b
) ELSE GOTO nochoice

:files
@COLOR 79
CLS
SET erroinfo=xellfile
IF NOT EXIST %ecc% GOTO error
SET erroinfo=nandfile
IF EXIST .\NAND_DATA\nanddump.bin SET nand=.\NAND_DATA\nanddump.bin
IF EXIST .\NAND_DATA\updflash.bin SET nand=.\NAND_DATA\updflash.bin
IF /i "%nand%"=="" GOTO error
IF /i "%nand%"==" " GOTO error
IF EXIST "%imagem%" %imagem%
SET erroinfo=keyfile
SET $c=-1
FOR /F "delims=" %%c in ('cmd /D /U /C echo %cpukey% ^| find /V ""') do (set /a $c+=1)
IF %$c% NEQ 32 (
	IF EXIST .\NAND_DATA\cpukey.txt FOR /F "eol=f tokens=1" %%a IN (.\NAND_DATA\cpukey.txt) DO SET cpukey=%%a
	IF EXIST .\NAND_DATA\key.txt FOR /F "eol=f tokens=1" %%a IN (.\NAND_DATA\key.txt) DO SET cpukey=%%a
)
IF /i "%cpukey%"=="" GOTO error
IF /i "%cpukey%"==" " GOTO error
SET erroinfo=
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                 MMM   MMM    SS        S     XX   XX                  �
ECHO  �                 M MM MM M    SS               XX XX                   �
ECHO  �                 M  MMM  M     SSSSSSSSS        XXX                    �
ECHO  �                 M       M             SS      XX XX                   �
ECHO  �                 M       M    S        SS     XX   XX                  �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �            Firmware Update Tool Microsoft XBox 360 RGH 3.0            �
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
CALL :c 79 "  Modelo de XBox 360 => " & CALL :c 74 "%model%" & ECHO.
IF /i "%model%"=="CORONA 4Gb" ( 
	CALL :c 73 "      POST_BUS_1     => DB3R3 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB3R4 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="CORONA 16Mb" (
	CALL :c 73 "      POST_BUS_1     => DB3R3 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB3R4 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="FALCON 10Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="FALCON 27Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="JASPER 10Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="JASPER 27Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="JASPER64 10Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="JASPER64 27Mhz" (
	CALL :c 73 "      POST_BUS_1     => R3P7 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB1F1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
) ELSE IF /i "%model%"=="TRINITY" (
	CALL :c 73 "      POST_BUS_1     => R3R19 (Lado B)" & ECHO. & CALL :c 7D "      CPU_PLL_BYPASS => DB2G3 (Lado A) OU FT2V1 (Lado B)" & ECHO. & CALL :c 7C "      RECOMENDADO    => INSTALAR REGULADOR 1.2V" & ECHO.
)
ECHO.
CALL :c 79 "  Arquivo Xell/ECC   => " & CALL :c 0f "%ecc%" & ECHO.
ECHO.
SET $c=-1
FOR /F "delims=" %%c in ('cmd /D /U /C echo %cpukey% ^| find /V ""') do (set /a $c+=1)
IF %$c% NEQ 32 (
	CALL :c 79 "  CPUKEY do Console  => " & CALL :c 8B "%cpukey%" & CALL :c 8C " RUIM" & ECHO.
) ELSE (
	CALL :c 79 "  CPUKEY do Console  => " & CALL :c 8A "%cpukey%" & CALL :c 8B " OKAY" & ECHO.
)
ECHO.
SET kyn=
SET /p kyn= "A Chave de CPUKey est� correta? (S/N)": 
IF /i "%kyn%"=="S" (
	GOTO nandrgh3
) ELSE GOTO getkey

:nandrgh3
ECHO.
SET yn=
SET /p yn= "Deseja criar a nand RGH3.0 com os Dados do Console? (S/N)": 
IF /i "%yn%"=="S" (
	ECHO Criando Arquivo de NAND...
	ECHO.
	%python% 2to3.py %ecc% %nand% %cpukey% .\NAND_DATA\NAND_RGH3.bin
	IF %errorlevel% NEQ 0 GOTO error
	PAUSE & GOTO start
) ELSE GOTO start

:error
@COLOR 7c
CLS
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                 MMM   MMM    SS        S     XX   XX                  �
ECHO  �                 M MM MM M    SS               XX XX                   �
ECHO  �                 M  MMM  M     SSSSSSSSS        XXX                    �
ECHO  �                 M       M             SS      XX XX                   �
ECHO  �                 M       M    S        SS     XX   XX                  �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �                             A T E N C A O                             �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �               Houve um erro de execu��o no procedimento.              �
ECHO  �                                                                       �
IF /i "%erroinfo%"=="xellfile" ECHO  �           O Arquivo de Xell n�o foi encontrado na pasta ecc.          �
IF /i "%erroinfo%"=="nandfile" ECHO  �        O Arquivo de Nand n�o foi encontrado na pasta NAND_DATA.       �
IF /i "%erroinfo%"=="keyfile" (
	ECHO  � O Arquivo CPUKey.txt ou key.txt n�o foi encontrado na pasta NAND_DATA.�
	ECHO  �         Digite a CPUKey corretamente no Campo Especificado.           �
)
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
ECHO.
IF /i "%erroinfo%"=="xellfile" PAUSE && GOTO help
IF /i "%erroinfo%"=="nandfile" PAUSE && GOTO help
IF /i "%erroinfo%"=="keyfile" PAUSE && GOTO getkey
PAUSE

:getkey
@COLOR F2
CLS
ECHO.
ECHO  �����������������������������������������������������������������������ͻ
ECHO  �    Scrip Desenvolvido por Marcelo Soler - MSX Celulares e Games.      �
ECHO  �����������������������������������������������������������������������͹
ECHO  �                                                                       �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                 MMM   MMM    SS        S     XX   XX                  �
ECHO  �                 M MM MM M    SS               XX XX                   �
ECHO  �                 M  MMM  M     SSSSSSSSS        XXX                    �
ECHO  �                 M       M             SS      XX XX                   �
ECHO  �                 M       M    S        SS     XX   XX                  �
ECHO  �                MMM     MMM    SSSSSSSSS    XXX     XXX                �
ECHO  �                                                                       �
ECHO  �                                                                       �
ECHO  �            Firmware Update Tool Microsoft XBox 360 RGH 3.0            �
ECHO  �                                                                       �
ECHO  �����������������������������������������������������������������������ͼ
ECHO.
ECHO Digite aqui a chave CPU_KEY
SET $c=-1
SET cpukey=
SET /p cpukey= CPU_Key: 
FOR /F "delims=" %%c in ('cmd /D /U /C echo %cpukey% ^| find /V ""') do (set /a $c+=1)
IF %$c% LSS 32 ECHO CPUKey inv�lida, falta caracteres... & PAUSE & GOTO getkey
IF %$c% GTR 32 ECHO CPUKey inv�lida, caracteres a mais... & PAUSE & GOTO getkey
ECHO.
GOTO files
exit /b


:c
setlocal enableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:colorPrint Color  Str  [/n]
setlocal
set "s=%~2"
call :colorPrintVar %1 s %3
exit /b

:colorPrintVar  Color  StrVar  [/n]
if not defined DEL call :initColorPrint
setlocal enableDelayedExpansion
pushd .
':
cd \
set "s=!%~2!"
:: The single blank line within the following IN() clause is critical - DO NOT REMOVE
for %%n in (^"^

^") do (
  set "s=!s:\=%%~n\%%~n!"
  set "s=!s:/=%%~n/%%~n!"
  set "s=!s::=%%~n:%%~n!"
)
for /f delims^=^ eol^= %%s in ("!s!") do (
  if "!" equ "" setlocal disableDelayedExpansion
  if %%s==\ (
    findstr /a:%~1 "." "\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%"
  ) else if %%s==/ (
    findstr /a:%~1 "." "/.\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%"
  ) else (
    >colorPrint.txt (echo %%s\..\')
    findstr /a:%~1 /f:colorPrint.txt "."
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
  )
)
if /i "%~3"=="/n" echo(
popd
exit /b

:initColorPrint
for /f %%A in ('"Prompt $H&for %%B in (1) do rem"') do set "DEL=%%A %%A"
<nul >"%temp%\'" set /p "=."
subst ': "%temp%" >nul
exit /b

:cleanupColorPrint
2>nul del "%temp%\'"
2>nul del "%temp%\colorPrint.txt"
>nul subst ': /d
exit /b
