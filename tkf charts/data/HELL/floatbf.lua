function onCreate()
setProperty('boyfriend.angle', 45)
end

function onUpdate(elapsed)

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenX('bfmove', 'boyfriend', -0 - 2000*math.sin(((currentBeat+12*12)/10)*math.pi),  4)

doTweenY('bfmove2', 'boyfriend', -0 - 2000*math.sin(((currentBeat+12*12)/5)*math.pi), 2)

setProperty('boyfriend.angle', (getProperty('boyfriend.angle') + (180/framerate)*math.sin(((currentBeat/5))*math.pi)))

doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

setProperty('iconP1.angle', getProperty('boyfriend.angle'))

end