@echo off
rem ˵�������д���sample���۵ľ�Ϊʾ������X:\Sample��
rem ����һ��ָ�������װλ��(Ĭ��ΪX:\Sample)
set startup_dir=%cd%
set path=%path%;%cd%;%cd%\source
cd D:\
if "%1"=="--help" goto help
if "%1"=="install" goto install
:help
echo ����(����)������
echo NTGet �汾1.0 ����GPL 3.0Э��
echo Based On cURL
echo PixelWine@Github PixelWine@Gitee
echo NTGet -h �����߲��Ӳ���)����ʾ��Ӣ�İ���
echo NTGet install
echo If there is a problem with the display of Chinese characters, please refer to the help in English and feedback to 
echo https://github.com/pixelwine/NTGet/issues/1 (Chinese users submit to https://gitee.com/pixelwine/NTGet/issues/I1HEC7)
pause
:install
echo ���ڸ���Դ����,���Ժ�
curl -O http://ntget.pixelwine.top/source-update/source >nul
%2 >nul
if not exist %2.bat goto install_error_0
:install_error_0
echo.
echo.
echo.
echo ERR:û����ȷ��ȡ %2 ��Դ·��
echo HELP:������������ԭ�������./source Ŀ¼����δ��¼��Դ
echo TIPS:�뵽NTGet ��Gitee ��ҳ(https://gitee.com/pixelwine/NTGet/issues)�ύ issues ���������
echo TIPS:���߿��Խ��˴���ͼ�ύ issues
echo ERR_CODE:NOT_FOUND_BATCH_FILE
echo NOT_FOUND:%2.bat
goto end
:end
cd %startup_dir%