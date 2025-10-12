function onCreate()
cheaterplaymode = getTextFromFile('cheater instakill.txt')
end

function onUpdatePost()
    if getPropertyFromClass('ClientPrefs', 'showcaseMode') == true then
    return Function_Stop;
    end
    if getPropertyFromClass('ClientPrefs', 'ffmpegMode') == true then --incase the person using this just using rendering mode without showcase mode
    return Function_Stop;
    end
    if cheaterplaymode == 'false' or cheaterplaymode == '' then
    return Function_Stop;
    end
    setTextBorder('botplayTxt', 3, 'ff0000') setTextColor('botplayTxt', 'ffffff') setTextFont('botplayTxt', 'comic.ttf')
    if practice == true then
        setTextString('botplayTxt', 'Cheater Mode')
    end
    if getPropertyFromClass('ClientPrefs', 'randomBotplayText') == true then
    return Function_Stop;
    end
    if botPlay == true then
        setTextString('botplayTxt', 'Cheaterplay Mode')
    end
end
