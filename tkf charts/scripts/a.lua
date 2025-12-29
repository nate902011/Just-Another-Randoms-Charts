local newX1 = 775
-- local newY = 575
local newX2 = 350
-- local newYDown = 0

function onCreatePost()
    setObjectOrder('iconP1', getObjectOrder('iconP2')+1)
end

function onUpdatePost()
local health = getProperty('health')
local maxHealth = getProperty('maxHealth')
    -- if downscroll == false then
    -- setProperty('iconP1.y', newY)
    -- setProperty('iconP2.y', newY)
    -- elseif downscroll == true then
    -- setProperty('iconP1.y', newYDown)
    -- setProperty('iconP2.y', newYDown)
    -- end
    if getPropertyFromClass('ClientPrefs', 'smoothHealth') and getPropertyFromClass('ClientPrefs', 'smoothHPBug') then
        if (health/maxHealth) >= 0 and (health/maxHealth) <= 1 then
            setProperty('iconP1.x', newX1)
            setProperty('iconP2.x', newX2)
        elseif (health/maxHealth) < 0 or (health/maxHealth) > 1 then
            setProperty('iconP1.x', newX1-4*(health-maxHealth))
            setProperty('iconP2.x', newX2-4*(health-maxHealth))
        end
    else
        setProperty('iconP1.x', newX1)
        setProperty('iconP2.x', newX2)
    end

    if getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Dave and Bambi'  then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25 + 25*(health/maxHealth))
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25 - 25*(maxHealth - health))
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    elseif getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Plank Engine' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 50)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 50)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    elseif getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'VS Steve' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y') + 25)
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y') + 25)
    elseif getPropertyFromClass('ClientPrefs', 'iconBounceType') == 'Golden Apple' then
        setProperty('iconP1.origin.x', getProperty('iconP1.origin.x') + 25)
        setProperty('iconP1.origin.y', getProperty('iconP1.origin.y'))
        setProperty('iconP2.origin.x', getProperty('iconP2.origin.x') - 25)
        setProperty('iconP2.origin.y', getProperty('iconP2.origin.y'))
    end

end