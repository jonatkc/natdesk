## jumping with buffers
:b [buffer name]
:bn [next buffer]

## list buffers
:ls

## opening a new buffer
:e [file name]
:edit [file name]
:find [file name]

## get current file name
:echo expand("%")

## cat a file to current buffer
:r [filename]

## alphabetize in vmode
:sort ui

## more buffers in one screen
:sp [filename]  or :split [filename]
:vs [filename] or :vertical split [filename]

ctrl+ww -> switch through buffers

## find and replace 
:%s/[find]/[replace]/g -> replaces all
:%s/[find]/[replace] -> replaces first find in all lines
:s/[find]/[replace]/g -> replaces line find
:s/[find]/[replace] -> replaces first instance find


