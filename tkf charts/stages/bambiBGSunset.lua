function onCreatePost()
	makeLuaSprite('theBg','bambiBG/sun',-680,-130)
	addLuaSprite('theBg',false)
	setLuaSpriteScrollFactor('theBg', 0.1, 0.1)
	doTweenColor('bg', 'theBg', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('grasshill','bambiBG/gm_flatgrass', 450, 95)
	scaleObject('grasshill', 0.3, 0.3);
	addLuaSprite('grasshill',false)
	setLuaSpriteScrollFactor('grasshill', 0.3, 0.3)
	doTweenColor('grhill', 'grasshill', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('hills','bambiBG/orangey hills', -380, 120)
	addLuaSprite('hills',false)
	setLuaSpriteScrollFactor('hills', 0.3, 0.3)
	doTweenColor('h', 'hills', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('farm','bambiBG/funfarmhouse', -20, 160)
	addLuaSprite('farm',false)
	setLuaSpriteScrollFactor('farm', 0.6, 0.6)
	doTweenColor('f', 'farm', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('ground','bambiBG/grass lands', -680, 550)
	addLuaSprite('ground',false)
	setLuaSpriteScrollFactor('ground', 1, 1)
	doTweenColor('grpun', 'ground', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('corn1','bambiBG/CornFence', -440, 275)
	addLuaSprite('corn1',false)
	setLuaSpriteScrollFactor('corn1', 1, 1)
	doTweenColor('c1', 'corn1', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('corn2','bambiBG/CornFence2', 1080, 275)
	addLuaSprite('corn2',false)
	setLuaSpriteScrollFactor('corn2', 1, 1)
	doTweenColor('c2', 'corn2', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('thecornbag','bambiBG/cornbag', 1180, 605)
	addLuaSprite('thecornbag',false)
	setLuaSpriteScrollFactor('thecornbag', 1, 1)
	doTweenColor('cb', 'thecornbag', '0xffff8fb2', 0.01, 'quadInOut')

	makeLuaSprite('sign','bambiBG/Sign', -40, 415)
	addLuaSprite('sign',false)		
	setLuaSpriteScrollFactor('sign', 1, 1)
	doTweenColor('ctsign', 'sign', '0xffff8fb2', 0.01, 'quadInOut')

    doTweenColor('boyfriendColorTween', 'boyfriend', '0xffff8fb2', 0.01, 'quadInOut')
    doTweenColor('dadColorTween', 'dad', '0xffff8fb2', 0.01, 'quadInOut')
    doTweenColor('gfColorTween', 'gf','0xffff8fb2', 0.01, 'quadInOut')
end
