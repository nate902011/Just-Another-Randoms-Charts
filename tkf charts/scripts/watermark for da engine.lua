function onCreatePost()
engineName = {'FNF JS Engine', 'FNF Jordan Santiago Engine', 'FNF Psych Engine: No BotPlay Lag', 'FNF JavaScript Engine', 'FNF Annoying Jorange Engine', 'fnf bambiphobia engine', 'FNF Spam Engine', 'FNF OS Engine But Better'};
random = getRandomInt(1, 18)
daname = ''

    if random == 1 or random == 2 or random == 3 or random == 4 or random == 5 or random == 6 or random == 7 then
        daname = engineName[1]
    elseif random == 8 or random == 9 or random == 10 then
        daname = engineName[2]
    elseif random == 11 or random == 12 then
        daname = engineName[3]
    elseif random == 13 or random == 14 then
        daname = engineName[4]
    elseif random == 15 then
        daname = engineName[5]
    elseif random == 16 then
        daname = engineName[6]
    elseif random == 17 then
        daname = engineName[7]
    elseif random == 18 then
        daname = engineName[8]
    end

    setTextFont('EngineWatermark', 'vcr.ttf')
    setTextAlignment('EngineWatermark', 'right')
    setProperty('EngineWatermark.x', -8)
    setProperty('EngineWatermark.y', 4)
    setTextSize('EngineWatermark', 16)
    setTextWidth('EngineWatermark', screenWidth)
    setTextBorder('EngineWatermark', 2, '000000')
    setTextFont('EngineWatermark', 'vcr.ttf')
    outdate = '';
        if stringEndsWith(getPropertyFromClass("openfl.Lib", "application.window.title"), '!)') then
            outdate = ' (Outdated!)'
        end
    thename = 'You\'re playing '.. songName ..' on it\'s '.. string.upper(difficultyName) ..' difficulty!\n'.. daname ..' v'.. jsVersion .. outdate ..'\nFNF Psych Engine v'.. version
    if daname == engineName[6] then
        setTextFont('EngineWatermark', 'comic.ttf')
        thename = string.lower(thename)
    end
    setTextString('EngineWatermark', thename)
end