function onUpdate(elapsed)

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenY('opponentmove', 'dad', -0 - 50000*math.sin((currentBeat*6)*math.pi), 2)

doTweenX('opponentmove2', 'dad', -0 - 100000*math.sin((currentBeat*50)*math.pi), 2)

setProperty('dad.angle', 0 + 0.01*(getProperty('boyfriend.angle')*getProperty('gf.angle'))/3)

doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

setProperty('iconP2.angle', getProperty('dad.angle'))

end