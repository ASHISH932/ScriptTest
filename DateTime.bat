@echo off

:loop

set ReadmePath="Readme.md"
set ArchivePath="archive.txt"
set date-Time=%DATE% %TIME%

type %ArchivePath% > %ReadmePath%
echo #This file contains the archive data of all the date-time displayed> %ArchivePath%
echo LastUpdated:- %date-Time% >> %ArchivePath%
type %ReadmePath% >> %ArchivePath%
echo #This file is updated automatically with latest time after some time> %ReadmePath%
echo LastUpdated:- %date-Time% >> %ReadmePath%

git status
git add .
git commit -m "Hey"
git status
git push origin master

TIMEOUT /T 2500

goto loop