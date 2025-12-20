function onUpdate(elapsed)
    if curSection == 24 then
	    addHaxeLibrary('FlxTrail', 'flixel.addons.effects');
	    runHaxeCode("game.insert(game.members.indexOf(game.dadGroup) - 1, new FlxTrail(game.dad, null, 4, 24, 0.1, 0.025));");
    end
    if curSection < 24 then

        songPos = getSongPosition()

        local currentBeat = (songPos/1000)*(bpm/80)

        doTweenY('dadTweenY', 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)

    elseif curSection >= 24 then
        songPos = getSongPosition()

        local currentBeat = (songPos/5000)*(curBpm/60)

        doTweenY('opponentmove', 'dad', 1000+defaultOpponentY - (1200*math.sin((currentBeat)*math.pi^2)*32)/(getProperty('health'))*1.75, 32)

        doTweenX('opponentmove2', 'dad', 1000-defaultOpponentX - (3600*math.cos((currentBeat)*math.pi^2)*32)/(getProperty('health'))*1.75, 32)

        doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

        doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
        -- for i = 0,getProperty('opponentStrums.length')-1 do
        --     -- noteTweenX('notextween'.. i, i, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat)*math.pi + (i*4) * 2*getProperty('health')) * 300)/(getProperty('opponentStrums.length')-1)*i*2, 0.1)
        --     -- noteTweenY('noteytween'.. i, i, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat)*math.pi + (i*4) * 2/getProperty('health')) * 300)/(getProperty('opponentStrums.length')-1)*i*2, 0.1)
        --     noteTweenX('notextween'.. i, i, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat)*math.sqrt(math.pi)/getProperty('health') + (i+4) * 2) * 300)*2, 0.01)
        --     noteTweenY('noteytween'.. i, i, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat)*math.sqrt(math.pi)/getProperty('health') + (i+4) * 2) * 300)*2, 0.01)
        -- end

        -- for i = 0+getProperty('opponentStrums.length'),getProperty('playerStrums.length')-1+getProperty('opponentStrums.length') do
        --     noteTweenX('notextween'.. i ..'2', i, (screenWidth/math.sqrt(math.pi))*(i/(getProperty('playerStrums.length')-1+getProperty('opponentStrums.length'))), 1)
        --     noteTweenY('noteytween'.. i ..'2', i, ((screenHeight / 3) + (math.pi)) - (math.cos((currentBeat) + (i+4) * 2) * 300), 1)
        -- end
    end
end