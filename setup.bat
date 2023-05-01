@echo off
setlocal EnableDelayedExpansion

set url=http://data.gharchive.org/
set ext=.json.gz

for /L %%y in (2015,1,2015) do (
  for %%m in (01,02,03) do (
    for /L %%d in (1,1,31) do (
      set day=0%%d
      set day=!day:~-2!
      for /L %%h in (0,1,23) do (
        set h=0%%h
        curl -O "%url%%%y-%%m-!day!-%%h!%ext%"
      )
    )
  )
)