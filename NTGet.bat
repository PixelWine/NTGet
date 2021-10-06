@echo off
set ntGet_Version=1.1
set startup_dir=%cd%
set path=%path%;%cd%;%cd%\source
if "%1"=="--help" goto help
if "%1"=="install" goto install
:help
echo 中文(简体)帮助：
echo NTGet 版本 %ntGet_Version% 基于 GPL 3.0 协议
echo Based On cURL
echo PixelWine@Github PixelWine@Gitee
echo NTGet -h （或者不加参数)：显示中英文帮助
echo NTGet install
echo If there is a problem with the display of Chinese characters, please refer to the help in English and feedback to 
echo https://github.com/pixelwine/NTGet/issues/1 (Chinese users submit to https://gitee.com/pixelwine/NTGet/issues/I1HEC7)
pause
goto end
:install
echo 正在更新源数据,请稍后...
curl -O https://raw.githubusercontent.com/PixelWine/NTGet/31dfb521c2277b202de7692844c32d7de23ed5e3/source/source-update/SOURCE >nul
if not exist %2.bat goto install_error_0
%2 >nul
:install_error_0
echo.
echo.
echo.
echo [ERR]  没有正确读取 %2 的源路径
echo [HELP] 导致这个问题的原因可能是 %cd%\source 目录内仍未收录该源
echo [TIPS] 请到 NTGet 的 Gitee 主页(https://gitee.com/pixelwine/NTGet/issues)提交 issues 报告该问题
echo [TIPS] 或者可以将此处截图提交 issues
echo ERR:NOT FOUND %2.bat
goto end
:end
cd %startup_dir%
