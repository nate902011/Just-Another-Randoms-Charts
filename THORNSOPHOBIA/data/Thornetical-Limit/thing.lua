function onCreatePost()
    makeLuaSprite('blackthingy', 'blank')
    setProperty('blackthingy.alpha', 1)
    setObjectCamera('blackthingy', 'hud')
    addLuaSprite('blackthingy')
end

function onSectionHit()
    if curSection == 8 then
        doTweenAlpha('blackthingy', 'blackthingy', 0, (crochet/1000)*32, 'linear')
    end
    if curSection == 464 then
        addChromaticAbberationEffect ('camhud', 0.008)
        addChromaticAbberationEffect ('camgame', 0.008)
        addGlitchEffect('dad', 32, 512, 0.0025)
        addGlitchEffect('iconP2', 32, 8, 0.1)
        addGlitchEffect('camgame', 16, 64, 0.0005)
        addGlitchEffect('camhud', 16, 64, 0.0005)
        addGlitchEffect('bg', 16, 128, 0.01)
    end
    if curSection == 480 then
        doTweenAlpha('blackthingy', 'blackthingy', 1, (crochet/1000)*16, 'linear')
    end
end