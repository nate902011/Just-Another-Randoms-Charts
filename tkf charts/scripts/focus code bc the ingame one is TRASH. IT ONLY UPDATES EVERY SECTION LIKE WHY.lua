function onUpdate()
    if gfSection then
        cameraSetTarget('gf')
    end
    if not gfSection then
        if mustHitSection == true then
            cameraSetTarget('boyfriend')
            else cameraSetTarget('dad')
        end
    end
end