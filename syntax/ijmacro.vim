" Vim syntax file
" Language:     ImageJ Macro Language
" Maintainer:   Kota Miura <miura@embl.de>
" Filenames:    *.ijm
" Last Change:  20 December 2013
" Web Page:     http://cmci.embl.de
"
" Modified by Tomas Kazmar, 2017

if !exists("main_syntax")
    if exists("b:current_syntax")
        finish
    endif
    let main_syntax = 'ijmacro'
endif

syn keyword ijmacroCommentTodo TODO FIXME NOTE contained
syn match ijmacroComment "\/\/.*" contains=@Spell,ijmacroCommentTodo
syn region ijmacroComment start="/\*" end="\*/" contains=@Spell,ijmacroCommentTodo
syn match ijmacroNumber "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn match ijmacroNumber "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match ijmacroNumber "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match ijmacroNumber "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
syn region ijmacroString start=+"+ end=+"+ end=+$+

" ijmacro operators
syn match ijmacroOperator "\s[-+\*/%!~]\s"
syn match ijmacroOperator "="
syn match ijmacroOperator "[-+\*/%]="
syn match ijmacroOperator "\s\(&\||\|^\|<<\|>>\)=\=\s"

" ijmacro keywords
syn keyword ijmacroConditional if else
syn keyword ijmacroRepeat for while do
syn keyword ijmacroBranch break
syn keyword ijmacroType function macro
syn keyword ijmacroStatement return
syn keyword ijmacroIdentifier var
syn keyword ijmacroBoolean true false
syn keyword ijmacroNull NaN
syn keyword ijmacroConstant PI

syn keyword ijmacroFunctions abs acos asin atan atan2 autoUpdate beep bitDepth calibrate call changeValues charCodeAt close close cos d2s doCommand doWand doWand drawLine drawOval drawRect drawString drawString dump endsWith eval eval eval eval exec exit exp Ext fill fillOval fillRect floodFill floor fromCharCode getArgument getBoolean getBoundingRect getCursorLoc getDateAndTime getDimensions getDirectory getDirectory getDirectory getDirectory getDirectory getDirectory getDirectory getDirectory getDirectory getDirectory getDisplayedArea getFileList getHeight getHistogram getImageID getImageInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getInfo getLine getList getList getList getList getLocationAndSize getLut getMetadata getMetadata getMinAndMax getNumber getPixel getPixelSize getProfile getRawStatistics getResult getResultString getResultLabel getSelectionBounds getSelectionCoordinates getSliceNumber getStatistics getString getStringWidth getThreshold getTime getTitle getValue getValue getValue getValue getValue getValue getValue getVoxelSize getVersion getWidth getZoom imageCalculator indexOf indexOf is is is is is is is is is is is isActive isKeyDown isNaN isOpen isOpen lastIndexOf lengthOf lineTo log makeEllipse makeLine makeLine makeOval makePoint makePolygon makeRectangle makeRectangle makeSelection makeText matches maxOf minOf moveTo newArray newImage newMenu nImages nResults nSlices open open P parseFloat parseInt parseInt PI pow print random random rename replace requires reset resetMinAndMax resetThreshold restorePreviousTool restoreSettings roiManager roiManager roiManager roiManager roiManager roiManager round run runMacro save saveAs saveSettings screenHeight screenWidth selectionContains selectionName selectionType selectImage selectWindow setAutoThreshold setAutoThreshold setBackgroundColor setBackgroundColor setBatchMode setBatchMode setBatchMode setBatchMode setColor setColor setColor setFont setFont setForegroundColor setForegroundColor setJustification setKeyDown setLineWidth setLocation setLocation setLut setMetadata setMetadata setMinAndMax setMinAndMax setOption setPasteMode setPixel setResult setRGBWeights setSelectionLocation setSelectionName setSlice setThreshold setTool setTool setupUndo setVoxelSize setZCoordinate showMessage showMessage showMessageWithCancel showProgress showStatus showText showText sin snapshot split sqrt startsWith substring substring tan toBinary toHex toLowerCase toolID toScaled toUnscaled toScaled toUnscaled toString toString toUpperCase updateDisplay updateResults wait waitForUser waitForUser waitForUser
syn match ijmacroFunction2 "\<\a*\>\.\<\a*\>" contains=ijmacroFunctionDot

syn keyword ijmacroFunctionDot contained Array concat copy fill findMaxima findMinima getStatistics print rankPositions resample reverse show show slice sort trim
syn keyword ijmacroFunctionDot contained Dialog create addMessage addString addString addNumber addNumber addSlider addCheckbox addCheckboxGroup addRadioButtonGroup addChoice addChoice addHelp setInsets show getString getNumber getCheckbox getChoice getRadioButton
syn keyword ijmacroFunctionDot contained File append close copy dateLastModified delete directory exists getName getParent isDirectory lastModified length makeDirectory name nameWithoutExtension open openAsString openAsRawString openAsRawString openUrlAsString openDialog rename saveString separator
syn keyword ijmacroFunctionDot contained Fit doFit doFit rSquared p nParams f nEquations getEquation plot logResults showDialog
syn keyword ijmacroFunctionDot contained IJ deleteRows getToolName freeMemory currentMemory log maxMemory pad redirectErrorMessages renameResults renameResults
syn keyword ijmacroFunctionDot contained List moveTo lineTo drawLine add setPosition setPosition drawRect drawEllipse drawString show hide hidden remove size addSelection addSelection addSelection addSelection activateSelection moveSelection removeSelection copy paste drawLabels
syn keyword ijmacroFunctionDot contained Overlay moveTo show removeSelection lineTo drawString size remove drawLine drawEllipse drawRect add hide hidden
syn keyword ijmacroFunctionDot contained Stack isHyperstack getDimensions setDimensions setChannel setSlice setFrame getPosition setPosition getFrameRate setFrameRate getFrameInterval setFrameInterval getUnits setTUnit setZUnit setDisplayMode getDisplayMode setActiveChannels getActiveChannels swap getStatistics
syn keyword ijmacroFunctionDot contained String resetBuffer append buffer copy copyResults getResultsHeadings paste show show
syn keyword ijmacroFunctionDot contained Plot create setLimits setFrameSize setLineWidth setColor add addText setJustification drawLine show update getValues
syn keyword ijmacroFunctionDot contained Ext

"if exists("ijmacro_fold")
"    syn match ijmacroFunction "\<function\>"
"    syn region ijmacroFunctionFold start="\<function\>.*[^};]$" end="^\z1}.*$" transparent fold keepend

"    syn sync match ijmacroSync grouphere ijmacroFunctionFold "\<function\>"
"    syn sync match ijmacroSync grouphere NONE "^}"

"    setlocal foldmethod=syntax
"    setlocal foldtext=getline(v:foldstart)
"else
    syn keyword ijmacroFunction function
    syn keyword ijmacroMacro macro
    syn match ijmacroBraces "[{}\[\]]"
    syn match ijmacroParens "[()]"
"endif

syn sync fromstart
syn sync maxlines=100

if main_syntax == "ijmacro"
    syn sync ccomment ijmacroComment
endif

" Define the default highlighting.
command -nargs=+ HiLink hi def link <args>
HiLink ijmacroComment Comment
HiLink ijmacroLineComment Comment
HiLink ijmacroCommentTodo Todo
" HiLink ijmacroSpecial Special
HiLink ijmacroString String
"  HiLink ijmacroStringS String
"  HiLink ijmacroStringD String
"  HiLink ijmacroCharacter Character
"  HiLink ijmacroSpecialCharacter ijmacroSpecial
"  HiLink ijmacroNumber ijmacroValue
HiLink ijmacroNumber Number
HiLink ijmacroConditional Conditional
HiLink ijmacroRepeat Repeat
HiLink ijmacroBranch Conditional
HiLink ijmacroOperator Operator
HiLink ijmacroType Type
HiLink ijmacroStatement Statement
HiLink ijmacroFunction Function
HiLink ijmacroBraces Function
HiLink ijmacroMacro Function
HiLink ijmacroError Error
HiLink javaScrParenError ijmacroError
HiLink ijmacroNull Keyword
HiLink ijmacroBoolean Boolean
"  HiLink ijmacroRegexpString String
HiLink ijmacroFunctions Keyword
HiLink ijmacroFunctionDot Keyword
HiLink ijmacroIdentifier Identifier
HiLink ijmacroLabel Label
HiLink ijmacroException Exception
HiLink ijmacroMessage Keyword
HiLink ijmacroGlobal Keyword
HiLink ijmacroMember Keyword
HiLink ijmacroDeprecated Exception
HiLink ijmacroReserved Keyword
HiLink ijmacroDebug Debug
HiLink ijmacroConstant Label
delcommand HiLink

let b:current_syntax = "ijmacro"
if main_syntax == 'ijmacro'
    unlet main_syntax
endif
