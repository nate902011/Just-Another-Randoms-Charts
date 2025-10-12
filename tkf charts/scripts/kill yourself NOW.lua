function onCreate()
cheaterplaymode = getTextFromFile('cheater instakill.txt')
-- luaDebugMode = true --just to make sure nothing went wrong
    makeLuaText('healthcount', '', 1280, 0, 480) --value 3 is there to prevent memory leaks
    setTextAlignment('healthcount', 'center')
    addLuaText('healthcount')
    setTextSize('healthcount', 40)
    setTextBorder('healthcount', 3, '000000')
    setTextFont('healthcount', 'comic.ttf') --comic sans hehe
    setProperty('healthcount.alpha', 0.75)
end
function onUpdate()
local health = getProperty('health')
local maxHealth = getProperty('maxHealth')
    if getPropertyFromClass('ClientPrefs', 'showcaseST') == 'JS' then
        if getPropertyFromClass('ClientPrefs', 'showcaseMode') == true then
        removeLuaText('healthcount')
        return Function_Stop;
        end
    end
    if (health/maxHealth)*100 > 100 then
        setTextColor('healthcount', 'ffff00')
        setTextString('healthcount', '(OVERBOARD!)\n'.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
        setProperty('healthcount.y', 425)
    end
    if (health/maxHealth)*100 > 81 and (health/maxHealth)*100 <= 100 then
        setTextColor('healthcount', '00ff00')
        setTextString('healthcount', ''.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
        setProperty('healthcount.y', 480)
    end
    if (health/maxHealth)*100 < 80 then
        setTextColor('healthcount', 'ffffff')
        setTextString('healthcount', ''.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
    end
    if (health/maxHealth)*100 <= 20 then
        setTextColor('healthcount', 'ff0000')
        setTextString('healthcount', ''.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
    end

    if getPropertyFromClass('ClientPrefs', 'showcaseST') == 'AMZ' then
        if getPropertyFromClass('ClientPrefs', 'showcaseMode') == true then
        return Function_Stop;
        end
    end
    if getPropertyFromClass('ClientPrefs', 'showcaseMode') == true then --an attempt to make it compatable with older js engine versions
    return Function_Stop;
    end
    if getPropertyFromClass('ClientPrefs', 'ffmpegMode') == true then --incase the person using this just using rendering mode without showcase mode
    return Function_Stop;
    end
    if cheaterplaymode == 'false' or cheaterplaymode == '' then
    return Function_Stop;
    end
    if practice == true then
        setTextColor('healthcount', 'ffffff')
        setTextBorder('healthcount', 3, 'ff0000')
        setProperty('healthcount.y', 370)
        setTextString('healthcount', 'Fuck you, you practice mode cheater trash!\n- Bambi Bambi Bambi FNF\n'.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
        if botPlay == true then
            setTextString('healthcount', 'Ha! You didn\'t even try just practice mode and gave up cheater!\n- Bambi Bambi Bambi FNF\n'.. (health/maxHealth)*100 ..'/'.. (maxHealth/maxHealth)*100)
        else end
    end
end