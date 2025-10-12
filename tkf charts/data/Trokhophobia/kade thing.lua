function onCreatePost()
    setTextString('EngineWatermark', 'Furiosity Normal - JSE '.. getPropertyFromClass('MainMenuState', 'psychEngineJSVersion'))
    setTextAlignment('EngineWatermark', 'left')
    setProperty('EngineWatermark.x', 40)
    setProperty('EngineWatermark.y', screenHeight - 40)
    setTextFont('EngineWatermark', 'vcr.ttf')
    setTextSize('EngineWatermark', 15)
    setTextBorder('EngineWatermark', 1, '000000')

    setTextFont('scoreTxt', 'vcr.ttf')
    setTextSize('scoreTxt', 16)
    setTextBorder('scoreTxt', 1, '000000')
    
    if luaTextExists('healthcount') then
        setProperty('healthcount.alpha', 0)
    end
end

function onSectionHit()
    playAnim('dad', 'idle')
end


function onUpdatePost()
    setProperty('timeBar.alpha', 0)
    setProperty('timeBarBG.alpha', 0)
    setProperty('timeTxt.alpha', 0)

    setHealthBarColors('FF0000', '00FF00')
    setTextString('scoreTxt', 'Score:'.. score)
    setTextColor('scoreTxt', 'ffffff') -- just here in case scoreTxt style is set to JS Engine
end