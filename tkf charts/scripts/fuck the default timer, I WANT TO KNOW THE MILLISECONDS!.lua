---Turns any number into like a clock or smth idk. musicTime is time in milliseconds and precision is the decimal places after the seconds place.
---@param musicTime number
---@param precision number
---@return string
function formatTime(musicTime, precision)
    local function toInt(number) --lua equivalent to std.int in haxe
        local theNumber = 0
        if nil ~= number ~= 0 then
            theNumber = number
            if theNumber > 0 then
                theNumber = math.floor(theNumber)
            else
                theNumber = math.ceil(theNumber)
            end
        end
        return theNumber
    end  
       
    precision = (precision and (precision < 0 and 0 or musicTime == songLength and precision > 3 and 3 or precision) or 0)
    local digits = 2 + (math.floor(musicTime / 1000 / 3600) ~= 0 and 1 or 0) + (math.floor(musicTime / 1000 / 86400) ~= 0 and 1 or 0) + (math.floor(musicTime / 1000 / 604800) ~= 0 and 1 or 0)
    
    local secs = (4 > digits and string.format("%02d",math.floor(musicTime / 1000) % 60) or digits > 3 and ''.. math.floor(musicTime / 1000) % 60)
    local mins = (digits == 3 and string.format("%02d",math.floor(musicTime / 1000 / 60) % 60) or digits > 3 and ''.. math.floor(musicTime / 1000 / 60) % 60 or ''.. math.floor(musicTime / 1000 / 60))
    local hrs = (digits > 3 and ''.. math.floor(musicTime / 1000 / 3600) % 24 or ''.. math.floor(musicTime / 1000 / 3600))
    local days = (digits == 5 and ''.. math.floor(musicTime / 1000 / 86400) % 7 or ''.. math.floor(musicTime / 1000 / 86400))
    local wks = ''.. math.floor(musicTime / 1000 / 604800)
    
    local msStr = ''

    if precision > 0 then
        local secondsForMS = (musicTime / 1000) % 60
        local seconds = toInt((secondsForMS - toInt(secondsForMS)) * math.pow(10, precision))
        msStr = '.'
        if #tostring(seconds) < precision and precision > 1 then
            local zerosToAdd = precision - #tostring(seconds)
            for i = 1, zerosToAdd do
                msStr = msStr ..'0'
            end
        end
        msStr = msStr .. seconds
    end

    return (digits <= 3 and (digits == 3 and ''.. hrs ..':' or '') .. mins ..':'.. secs .. msStr or digits > 3 and (digits == 5 and ''.. wks ..'w ' or '') .. (digits >= 4 and ''.. days ..'d ' or '') .. hrs ..'h '.. mins ..'m '.. secs .. msStr ..'s')
end

---Turns any number into like a clock or smth idk. musicTime is time in milliseconds, toFixed is how many places (like secs = 1, mins = 2, hrs = 3, days = 4, and wks = 5), and precision is the decimal places after the seconds place.
---@param musicTime number
---@param toFixed number
---@param precision number
---@return string
function fixedFormatTime(musicTime, toFixed, precision)
    local function toInt(number) --lua equivalent to std.int in haxe
        local theNumber = 0
        if nil ~= number ~= 0 then
            theNumber = number
            if theNumber > 0 then
                theNumber = math.floor(theNumber)
            else
                theNumber = math.ceil(theNumber)
            end
        end
        return theNumber
    end
    
    precision = (precision and (precision < 0 and 0 or musicTime == songLength and precision > 3 and 3 or precision) or 0)
    toFixed = (toFixed and not (5 < toFixed or toFixed < 1) and toFixed or 2)
    
    local secs = (4 > toFixed and toFixed > 1 and string.format("%02d",math.floor(musicTime / 1000) % 60) or toFixed > 3 and ''.. math.floor(musicTime / 1000) % 60 or ''.. math.floor(musicTime / 1000))
    local mins = (toFixed == 3 and string.format("%02d",math.floor(musicTime / 1000 / 60) % 60) or toFixed > 3 and ''.. math.floor(musicTime / 1000 / 60) % 60 or ''.. math.floor(musicTime / 1000 / 60))
    local hrs = (toFixed > 3 and ''.. math.floor(musicTime / 1000 / 3600) % 24 or ''.. math.floor(musicTime / 1000 / 3600))
    local days = (toFixed == 5 and ''.. math.floor(musicTime / 1000 / 86400) % 7 or ''.. math.floor(musicTime / 1000 / 86400))
    local wks = ''.. math.floor(musicTime / 1000 / 604800)
    
    local msStr = ''

    if precision > 0 then
        local secondsForMS = (toFixed > 1 and (musicTime / 1000) % 60 or (musicTime / 1000) % 100)
        local seconds = toInt((secondsForMS - toInt(secondsForMS)) * math.pow(10, precision))
        msStr = '.'
        if #tostring(seconds) < precision and precision > 1 then
            local zerosToAdd = precision - #tostring(seconds)
            for i = 1, zerosToAdd do
                msStr = msStr ..'0'
            end
        end
        msStr = msStr .. seconds
    end

    return (toFixed <= 3 and (toFixed == 3 and hrs ..':' or '') .. (toFixed >= 2 and mins ..':' or '') .. secs .. msStr or toFixed > 3 and (toFixed == 5 and ''.. wks ..'w ' or '') .. (toFixed >= 4 and ''.. days ..'d ' or '') .. hrs ..'h '.. mins ..'m '.. secs .. msStr ..'s')
end

function onCreate()
    -- setTextAlignment('timeTxt', 'center')
    setTextWidth('timeTxt', screenWidth)
    setProperty('timeTxt.x', 0)
end

function onUpdatePost(elapsed)
    local decimals = 18
    local songname, a = string.find(timeBarType, 'Song Name')
    local time, a = string.find(timeBarType, 'Time')
    local modernTime, a = string.find(timeBarType, 'Modern')
    local timeLeft, a = string.find(timeBarType, 'Left')
    local timeElapsed, a = string.find(timeBarType, 'Elapsed')
    setTextString('timeTxt', (songname and songName or '') .. (time and (songname and ' ('..formatTime(getSongPosition(), decimals) ..' / '..formatTime(songLength, decimals)..')' or timeElapsed and formatTime(getSongPosition(), decimals) or timeLeft and formatTime(songLength - getSongPosition(), decimals) or modernTime and formatTime(getSongPosition(), decimals) ..' / '..formatTime(songLength, decimals) or '') .. (botPlay and getPropertyFromClass('ClientPrefs', 'botWatermark') and ' (Bot)' or '')) ..'\n'.. fixedFormatTime(--[[elapsed*1000 elapsed]] os.clock()*1000, 5, 3) ..'\n'.. os.date())
end