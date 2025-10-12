function onCreatePost()
    makeLuaSprite('kade/alpha 5/davehouseback', 'kade/alpha 5/davehouseback', -600, -300);
    setLuaSpriteScrollFactor('kade/alpha 5/davehouseback', 1, 1);
    scaleObject('kade/alpha 5/davehouseback', 1, 1);

    makeLuaSprite('kade/alpha 5/davehousefloor', 'kade/alpha 5/davehousefloor', -600, 600);
    setLuaSpriteScrollFactor('kade/alpha 5/davehousefloor', 1, 1);
    scaleObject('kade/davehousefloor', 1, 1);

    makeLuaSprite('kade/alpha 5/davehouseceiling', 'kade/alpha 5/davehouseceiling', -600, -350);
    setLuaSpriteScrollFactor('kade/alpha 5/davehouseceiling', 1, 1);
    scaleObject('kade/alpha 5/davehouseceiling', 1, 1);

    doTweenColor('boyfriendColorTween', 'boyfriend', '0xff6060C1', 0.00000001, 'quadInOut')
	doTweenColor('dadColorTween', 'dad', '0xff6060C1', 0.00000001, 'quadInOut')
	doTweenColor('gfcolortween', 'gf', '0xff6060C1', 0.000000001, 'quadInOut')

    doTweenColor('fuck', 'kade/alpha 5/davehouseback', '0xff6060C1', 0.00000001, 'quadInOut')
	doTweenColor('fuck2', 'kade/alpha 5/davehousefloor', '0xff6060C1', 0.00000001, 'quadInOut')
	doTweenColor('fuck3', 'kade/alpha 5/davehouseceiling', '0xff6060C1', 0.000000001, 'quadInOut')

	doTweenColor('fuck4', 'healthBar', '0xff6060C1', 0.000000001, 'quadInOut')
	doTweenColor('fuck5', 'iconP1', '0xff6060C1', 0.00000001, 'quadInOut')
	doTweenColor('fuck6', 'iconP2', '0xff6060C1', 0.000000001, 'quadInOut')

    addLuaSprite('kade/alpha 5/davehouseback', false)
    addLuaSprite('kade/alpha 5/davehousefloor', false)
    addLuaSprite('kade/alpha 5/davehouseceiling', false)
end