@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Dec 25 10:24:01 +0100 2020
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 8363c5a1f64f48b4bb52e71edde6f096 --incr --debug typical --relax --mt 2 -L work -L secureip --snapshot Register_RE_behav work.Register_RE -log elaborate.log"
call xelab  -wto 8363c5a1f64f48b4bb52e71edde6f096 --incr --debug typical --relax --mt 2 -L work -L secureip --snapshot Register_RE_behav work.Register_RE -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
