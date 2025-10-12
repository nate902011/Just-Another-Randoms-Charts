function onCreatePost()
    makeLuaSprite('blackthingy', 'blank')
    setProperty('blackthingy.alpha', 0)
    setObjectCamera('blackthingy', 'hud')
    makeLuaSprite('blackthingy2', 'blank', -950, -550)
    setProperty('blackthingy2.alpha', 0)
    setObjectCamera('blackthingy2', 'game')
    scaleObject('blackthingy2', 2, 2)
    setLuaSpriteScrollFactor('blackthingy2', 0, 0)
    doTweenColor('boyfriendColorTween', 'boyfriend', '0xff000000', 0.00000001, 'quadInOut')
	doTweenColor('dadColorTween', 'dad', '0xff000000', 0.00000001, 'quadInOut')
    makeLuaText('Credits', "[CONTENT REDACTED] MY REDACTED FANTRACK V7 (RE-ARCHED)\n\nSong by Tymek Kaszubowski Fortnite\n\nRedacted Sprites By Enzo Polis", 1250, 0, 720)
	setTextAlignment('Credits', 'Center')
	addLuaText('Credits')
	setTextSize('Credits', 40)
	setObjectCamera('Credits', 'camOther')
	setTextBorder('Credits', 3, '000000')
	setProperty('ytWatermark.alpha', 0)
end

function onStepHit()
    if curStep == 256 then
        doTweenColor('boyfriendColorTween', 'boyfriend', '0xffffffff', 0.00000001, 'quadInOut')
	    doTweenColor('dadColorTween', 'dad', '0xffffffff', 0.00000001, 'quadInOut')
        initLuaShader("shaderredacted")
        setSpriteShader("bg", "shaderredacted")
    end
	if curStep == 512 then
		doTweenY('creditTween', 'Credits', 270, 2, 'expoOut')
	end
	if curStep == 532 then
		doTweenY('creditTween', 'Credits', -420, 1, 'expoIn')
		doTweenAlpha('ytWatermarkIn', 'ytWatermark', 0.5, 1, 'linear')
    end
    if curStep == 1024 then
        removeSpriteShader('bg')
        doTweenColor('boyfriendColorTween', 'boyfriend', '0xff000000', 0.00000001, 'quadInOut')
	    doTweenColor('dadColorTween', 'dad', '0xff000000', 0.00000001, 'quadInOut')
    end
    if curStep == 1280 then
        doTweenColor('boyfriendColorTween', 'boyfriend', '0xffffffff', 0.00000001, 'quadInOut')
	    doTweenColor('dadColorTween', 'dad', '0xffffffff', 0.00000001, 'quadInOut')
        initLuaShader("shaderredacted")
        setSpriteShader("bg", "shaderredacted")
    end
    if curStep == 1536 then
        removeSpriteShader('bg')
        doTweenColor('boyfriendColorTween', 'boyfriend', '0xff000000', 0.00000001, 'quadInOut')
	    doTweenColor('dadColorTween', 'dad', '0xff000000', 0.00000001, 'quadInOut')
    end
    if curStep == 1792 then
        doTweenColor('boyfriendColorTween', 'boyfriend', '0xffffffff', 0.00000001, 'quadInOut')
	    doTweenColor('dadColorTween', 'dad', '0xffffffff', 0.00000001, 'quadInOut')
        initLuaShader("shaderredacted")
        setSpriteShader("bg", "shaderredacted")
    end
    if curStep == 2304 then
        addLuaSprite('blackthingy', true)
        doTweenAlpha('blank', 'blackthingy', 1, 21.94)
        addLuaSprite('blackthingy2', true)
        doTweenAlpha('blank2', 'blackthingy2', 1, 21.94)
    end
end

function onUpdate(elapsed)
    setShaderFloat('bg', 'iTime', os.clock())
end
--[CONTENT REDACTED] MY REDACTED FANTRACK V7 (RE ARCHED)