function onCreatePost()
    makeLuaSprite('kade/davehouseback', 'kade/davehouseback', -600, -300);
    setLuaSpriteScrollFactor('kade/davehouseback', 1, 1);
    scaleObject('kade/davehouseback', 1, 1);

    makeLuaSprite('kade/davehousefloor', 'kade/davehousefloor', -600, 600);
    setLuaSpriteScrollFactor('kade/davehousefloor', 1, 1);
    scaleObject('kade/davehousefloor', 1, 1);

    makeLuaSprite('kade/davehouseceiling', 'kade/davehouseceiling', -600, -350);
    setLuaSpriteScrollFactor('kade/davehouseceiling', 1, 1);
    scaleObject('kade/davehouseceiling', 1, 1);

    addLuaSprite('kade/davehouseback', false)
    addLuaSprite('kade/davehousefloor', false)
    addLuaSprite('kade/davehouseceiling', false)
end