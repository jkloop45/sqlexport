::---------------------------------�޸���־-----------------------------------
::2014-10-24 13:45:13  �ļ�����
::----------------------------------------------------------------------------
@echo off
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::������ַ���ͻ�������WCF����
set db=localhost
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::������ַ�����ڿͻ��˸���ʱ��
set uid=sa
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::������ַ�����ڿͻ������ظ����ļ� 
set pwd=123456
echo ������������������������������������������������
echo ��                                            ��
echo ��       ��ӭʹ��Ʒ�ܿƼ����ݿⰲװ����       ��
echo ��               V1.1(2014-10-31)             ��
echo ��                                            ��
echo ������������������������������������������������
:PrintConfigInfo
echo ****************************************
echo ��ȷ�����ã�                       
echo 1. ���ݿ��ַΪ��%db%        
echo 2. �˺�Ϊ��%uid%   
echo 3. ����Ϊ��%pwd%
echo ****************************************
set /p changeconfig=�Ƿ��޸ģ�Y/N��:
if not "%changeconfig%"=="Y" goto setup
set /p db=���������ݿ������:
set /p uid=�������¼��:
set /p pwd=�������¼����:
goto PrintConfigInfo
:setup
echo ��ʼ��װ
sqlcmd -S %db% -U %uid% -P %pwd% -d master -i Scripts.sql -b
pause