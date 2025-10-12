function onGhostTap()
beatboxthingy = getRandomInt(1, 2)
    if getPropertyFromClass('ClientPrefs', 'ghostTapAnim') == true then
        if beatboxthingy == 1 then
            playSound('Beatbox1', 1)
            else playSound('Beatbox2', 1)
        end
        setProperty('health', getProperty('health')+0.005)
    end
end