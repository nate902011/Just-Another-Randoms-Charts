function onBeatHit()
    death = 0
    if curSection >= 150 then
        death = death + 1
        playAnim('boyfriend', 'die', true)
        playSound('dead', 1, 'death'.. death)
        playSound('dead', 1, 'death'.. death ..'death')
    end
end