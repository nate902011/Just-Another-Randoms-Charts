function onCreate()
ytWatermarkPosition = getPropertyFromClass('ClientPrefs', 'ytWatermarkPosition')
end

function onCreatePost()
    setTextString('ytWatermark', '@just-another-random-y2x\nLike and subscribe for more awesome content!')
	setTextFont('ytWatermark', 'impact.ttf')
    setTextBorder('ytWatermark', 3, 'ffffff')
    setTextColor('ytWatermark', 'ff0000')
    setProperty('ytWatermark.alpha', 0.5)
end

function onUpdate(elapsed)
    if curStep >= 0 then 
        if ytWatermarkPosition == Hidden then
        end
        cameraShake('other', 0.005, getProperty('songLength')*1000)
    end
end

function onPause()
    cameraShake('other', 0, getProperty('songLength')*1000)

    return Function_Continue;
end

function onResume()
    if ytWatermarkPosition == Hidden then
    end
    cameraShake('other', 0.005, getProperty('songLength')*1000)
end

function onEndSong()
    cameraShake('other', 0, getProperty('songLength')*1000)
end