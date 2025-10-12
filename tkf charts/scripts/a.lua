local newX1 = 775
-- local newY = 575
local newX2 = 350
-- local newYDown = 0

function onCreate()
cheaterplaymode = getTextFromFile('cheater instakill.txt')
originmovingenabled = getTextFromFile('enable origin points on icons.txt')
fuckmeforcodingthisshit = getTextFromFile('da hud shit.txt')
end

function onCreatePost()
    if fuckmeforcodingthisshit == 'false' or fuckmeforcodingthisshit == '' then
    return Function_Stop;
    end
    setObjectOrder('iconP1', getObjectOrder('iconP2')+1)
end

function onUpdatePost()
    if fuckmeforcodingthisshit == 'false' or fuckmeforcodingthisshit == '' then
    return Function_Stop;
    end
local health = getProperty('health')
local maxHealth = getProperty('maxHealth')
    -- if downscroll == false then
    -- setProperty('iconP1.y', newY)
    -- setProperty('iconP2.y', newY)
    -- elseif downscroll == true then
    -- setProperty('iconP1.y', newYDown)
    -- setProperty('iconP2.y', newYDown)
    -- end

    setProperty('iconP1.x', newX1)
    setProperty('iconP2.x', newX2)

    if getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Dave and Bambi'  then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25 + 25*(health/maxHealth))
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25 - 25*(maxHealth - health))
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    end
    if getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Plank Engine' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 50)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 50)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    end
    if getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'VS Steve' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y') + 25)
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y') + 25)
    end
    if getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Golden Apple' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    end
    if getPropertyFromClass('ClientPrefs', 'smoothHPBug') == true then
        if (health/maxHealth) < 0 or (health/maxHealth) > 1 then
            setProperty('iconP1.x', getProperty('iconP1.x')-4*(health-maxHealth))
            setProperty('iconP2.x', getProperty('iconP2.x')-4*(health-maxHealth))
        end
    else end
-- if da showcase mode bc you'd die
    if getPropertyFromClass('ClientPrefs', 'showcaseMode') == true then
    return Function_Stop;
    end
    if getPropertyFromClass('ClientPrefs', 'ffmpegMode') == true then --incase the person using this just using rendering mode without showcase mode
    return Function_Stop;
    end
    if cheaterplaymode == 'false' or cheaterplaymode == '' then
    return Function_Stop;
    end
    if fuckmeforcodingthisshit == 'false' or fuckmeforcodingthisshit == '' then
    return Function_Continue;
    end
    if practice == true then
        setProperty('health', -getProperty('maxHealth')*10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
    end
    if botPlay == true then
        setProperty('health', -getProperty('maxHealth')*10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
    end
end