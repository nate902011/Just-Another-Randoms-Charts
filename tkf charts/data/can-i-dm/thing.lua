function onCreatePost()
    makeLuaText('Credits', "can i dm\n\nSong by Tymek Kaszubowski Fortnite\n\nChart by Just Another Random\n\nSprites ripped from BobbbyTheSecond's 'can i call' video", 1250, 0, 720)
	setTextAlignment('Credits', 'Center')
	addLuaText('Credits')
	setTextSize('Credits', 40)
	setObjectCamera('Credits', 'camOther')
	setTextBorder('Credits', 3, '000000')
	setProperty('ytWatermark.alpha', 0)
end

function onStepHit()
	if curStep == 128 then
		doTweenY('creditTween', 'Credits', 270, 2, 'expoOut')
	end
	if curStep == 152 then
		doTweenY('creditTween', 'Credits', -420, 1, 'expoIn')
		doTweenAlpha('ytWatermarkIn', 'ytWatermark', 0.5, 1, 'linear')
    end
end