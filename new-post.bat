@echo off
setlocal enabledelayedexpansion

echo ============================================
echo   Create New Blog Post
echo ============================================
echo.

REM Get the folder where this .bat file is located
cd /d "%~dp0"

REM Set posts folder relative to script location
set POSTS_PATH=%CD%\_posts

REM Check if _posts folder exists, create if not
if not exist "%POSTS_PATH%" (
    echo [INFO] _posts folder not found. Creating it...
    mkdir "%POSTS_PATH%"
)

echo Posts folder: %POSTS_PATH%
echo.

REM Get post details
set /p title="Enter post title (required): "
if "%title%"=="" (
    echo ERROR: Title is required!
    pause
    exit /b 1
)

set /p categories="Enter categories (comma-separated, e.g., announcement, reviews): "
set /p tags="Enter tags (comma-separated, e.g., welcome, updates): "

REM Get current date/time formatted for Jekyll
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "filenameDate=%YYYY%-%MM%-%DD%"
set "fullDate=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec% -0500"

REM Create slug
set "slug=%title%"
set "slug=%slug: =-%"
set "slug=%slug:"=%"

REM Use absolute path to _posts folder
set "filename=%POSTS_PATH%\%filenameDate%-%slug%.md"

REM Parse categories into YAML array format
set "categories_yaml=[]"
if not "%categories%"=="" (
    set "categories_yaml=["
    set "first=true"
    for %%c in (%categories%) do (
        if "!first!"=="true" (
            set "categories_yaml=!categories_yaml!"%%c""
            set "first=false"
        ) else (
            set "categories_yaml=!categories_yaml!, "%%c""
        )
    )
    set "categories_yaml=!categories_yaml!]"
)

REM Parse tags into YAML array format
set "tags_yaml=[]"
if not "%tags%"=="" (
    set "tags_yaml=["
    set "first=true"
    for %%t in (%tags%) do (
        if "!first!"=="true" (
            set "tags_yaml=!tags_yaml!"%%t""
            set "first=false"
        ) else (
            set "tags_yaml=!tags_yaml!, "%%t""
        )
    )
    set "tags_yaml=!tags_yaml!]"
)

echo.
echo Creating file: %filename%
echo.

REM Delete file if it exists (start fresh)
if exist "%filename%" del "%filename%"

REM Write YAML front matter line by line
echo --- >> "%filename%"
echo title: "%title%" >> "%filename%"
echo date: %fullDate% >> "%filename%"
echo categories: %categories_yaml% >> "%filename%"
echo tags: %tags_yaml% >> "%filename%"
echo layout: post >> "%filename%"
echo --- >> "%filename%"
echo. >> "%filename%"
echo ## Introduction >> "%filename%"
echo. >> "%filename%"
echo Write your blog post content here... >> "%filename%"
echo. >> "%filename%"

REM Verify file was created
if exist "%filename%" (
    echo.
    echo [SUCCESS] File created successfully!
    echo.
    echo File contents:
    echo ============================================
    type "%filename%"
    echo ============================================
    echo.
    echo Opening in Notepad...
    notepad "%filename%"
) else (
    echo.
    echo [ERROR] File was NOT created!
    echo.
    echo Debug Info:
    echo   Script Location: %CD%
    echo   Posts Path: %POSTS_PATH%
    echo   Filename: %filename%
)

pause