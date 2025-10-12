function onUpdate(elapsed)
    --da bf scared
    if curBeat >= 96 and curBeat < 103 then
        playAnim('boyfriend', 'scared', false)
    end
    if curBeat >= 128 and curBeat < 135 then
        playAnim('boyfriend', 'scared', false)
    end
    --da gf scared
    if curBeat >= 96 and curBeat < 112 then
        playAnim('gf', 'scared', false)
    end
    if curBeat >= 128 and curBeat < 144 then
        playAnim('gf', 'scared', false)
    end
end