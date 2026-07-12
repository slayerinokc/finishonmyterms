@echo off
echo Cleaning lock files...
del /f "D:\Chris\Documents\Anthropic\finishonmyterms\.git\index.lock" 2>nul
del /f "D:\Chris\Documents\Anthropic\finishonmyterms\.git\HEAD.lock" 2>nul
del /f "D:\Chris\Documents\Anthropic\finishonmyterms\.git\packed-refs.lock" 2>nul
del /f "D:\Chris\Documents\Anthropic\finishonmyterms\.git\refs\heads\main.lock" 2>nul
cd /d "D:\Chris\Documents\Anthropic\finishonmyterms"
echo Switching to main...
git checkout main 2>nul || git checkout -b main origin/main
echo Staging changes...
git add -A
echo Committing...
git commit -m "Update site"
echo Pulling + rebasing...
git pull --rebase --autostash origin main
echo Pushing...
git push -u origin main
echo.
echo Done! Check output above.
pause
