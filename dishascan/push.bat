@echo off
cd /d "%~dp0"
echo Working in: %cd%
echo.
echo Adding and committing changes...
git add .
git commit -m "Update from Claude"
echo.
echo Pushing to GitHub...
git push
echo.
if %ERRORLEVEL%==0 (
    echo Done. Check github.com/sajaltripathi/dishascan -^> Actions tab.
) else (
    echo git reported an error above - copy it back to Claude exactly as shown.
)
pause
