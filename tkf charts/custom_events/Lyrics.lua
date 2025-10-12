function onEvent(name, value1, value2)
    if name == 'Lyrics' then
        setTextString('lyric', value1)
        setTextColor('lyric', value2)
    end
end

function onCreate()
    makeLuaText('lyric', '', screenWidth, 0, 545)
    addLuaText('lyric')
	setTextFont('lyric', 'vcr.ttf')
    setTextSize('lyric', 40)
	
	if luaTextExists('lyric') then
		if value1 == '' and value2 == '' then
			removeLuaText('lyric', false)
		end
	end
end