function onCreatePost()
    makeLuaText('Credits', "can i call\n\nSong by BobbbyTheSecond\n\nChart by Just Another Random\n\nSprites ripped from BobbbyTheSecond's 'can i call' video", 1250, 0, 720)
	setTextAlignment('Credits', 'Center')
	addLuaText('Credits')
	setTextSize('Credits', 40)
	setObjectCamera('Credits', 'camOther')
	setTextBorder('Credits', 3, '000000')
	setProperty('ytWatermark.alpha', 0)
	if lowQuality then
	end

	addBlockedGlitchEffect('camHUD', 0.1, 1000000, 0.1)
	addBlockedGlitchEffect('dad', 0.1, 1000000, 0.1)
end

function onStepHit()
	if curStep == 256 then
		doTweenY('creditTween', 'Credits', 270, 2, 'expoOut')
	end
	if curStep == 272 then
		doTweenY('creditTween', 'Credits', -420, 1, 'expoIn')
		doTweenAlpha('ytWatermarkIn', 'ytWatermark', 0.75, 1, 'linear')
    end
	if curStep == 1808 and not lowQuality then
		addBlockedGlitchEffect('camGAME', 0.1, 1000000, 0.1)
	end
end

function onSectionHit()
health = getProperty('health')
max = getProperty('maxHealth')
	if curSection >= 16 and health >= max/5 then
		setProperty('health', health-(max/(15)))
	end
	if curSection >= 64 and health >= max/5 then
		setProperty('health', health-(max/10))
	end
end