function onCreatePost()
    triggerEvent('Set RTX Data', '0.25,0,0,0.5,0.25,0,0,0.75,0.60833333333333,0,0,0.5,270,20')
    makeLuaSprite('finalsongdaveback', 'finalsongdaveback', -1250, -1000);
    setLuaSpriteScrollFactor('finalsongdaveback', 1, 1);
    scaleObject('finalsongdaveback', 2, 2);
	addGlitchEffect('finalsongdaveback', 2, 4);
    addLuaSprite('finalsongdaveback', false)
end