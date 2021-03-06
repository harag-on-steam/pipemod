local init = {}
local versionsTable = {
    ["0.16.54"] = true,
    ["0.16.53"] = true
}
local migrateToFiveNine = {
    ["0.16.58"] = true,
    ["0.16.57"] = true,
    ["0.16.56"] = true,
    ["0.16.55"] = true,
    ["0.16.54"] = true,
    ["0.16.53"] = true
}
function init.mod_init(modData)
    if not global.correctTable then
        global.correctTable =
        {
            correctMode = false,
            correctableNames = {
                ['one-to-one-forward-pipe'] = true,
                ['one-to-two-L-FL-pipe'] = true,
                ['one-to-two-perpendicular-pipe'] = true,
                ['one-to-three-forward-pipe'] = true,
                ['one-to-one-forward-t2-pipe'] = true,
                ['one-to-two-L-FL-t2-pipe'] = true,
                ['one-to-two-perpendicular-t2-pipe'] = true,
                ['one-to-three-forward-t2-pipe'] = true,
                ['one-to-one-forward-t3-pipe'] = true,
                ['one-to-two-L-FL-t3-pipe'] = true,
                ['one-to-two-perpendicular-t3-pipe'] = true,
                ['one-to-three-forward-t3-pipe'] = true
            },
            entityData = {}
        }
    end
    if modData
        and modData.mod_changes["underground-pipe-pack"]
        and modData.mod_changes["underground-pipe-pack"].old_version
    then
        if versionsTable[modData.mod_changes["underground-pipe-pack"].old_version] then
            game.print("Wiping blueprint correction data for Advanced Underground Piping.")
            game.print("Any outstanding corrections have been lost. This will only happen once.")
            global.correctTable = {
                correctMode = false,
                correctableNames = {
                        ["one-to-one-forward-pipe"] = true,
                        ["one-to-two-L-FL-pipe"] = true,
                        ["one-to-two-perpendicular-pipe"] = true,
                        ["one-to-three-forward-pipe"] = true,

                        ["one-to-one-forward-t2-pipe"] = true,
                        ["one-to-two-L-FL-t2-pipe"] = true,
                        ["one-to-two-perpendicular-t2-pipe"] = true,
                        ["one-to-three-forward-t2-pipe"] = true,

                        ["one-to-one-forward-t3-pipe"] = true,
                        ["one-to-two-L-FL-t3-pipe"] = true,
                        ["one-to-two-perpendicular-t3-pipe"] = true,
                        ["one-to-three-forward-t3-pipe"] = true,
                },
                entityData = {}
            }
        end
        if migrateToFiveNine[modData.mod_changes["underground-pipe-pack"].old_version] then
            game.print("Updating parallel to perpendicular default recipe")
            global.correctTable.correctableNames = {
                        ["one-to-one-forward-pipe"] = true,
                        ["one-to-two-L-FL-pipe"] = true,
                        ["one-to-two-perpendicular-pipe"] = true,
                        ["one-to-three-forward-pipe"] = true,

                        ["one-to-one-forward-t2-pipe"] = true,
                        ["one-to-two-L-FL-t2-pipe"] = true,
                        ["one-to-two-perpendicular-t2-pipe"] = true,
                        ["one-to-three-forward-t2-pipe"] = true,

                        ["one-to-one-forward-t3-pipe"] = true,
                        ["one-to-two-L-FL-t3-pipe"] = true,
                        ["one-to-two-perpendicular-t3-pipe"] = true,
                        ["one-to-three-forward-t3-pipe"] = true,
            }
        end
    end
end


--[[function init.reset(modData)
    local ver = modData.mod_changes["underground-pipe-pack"].old_version
    if versionsTable[ver] then
        game.print("Wiping blueprint correction data for Advanced Underground Piping.")
        game.print("Any outstanding corrections have been lost. This will only happen once.")
        global.correctTable = {
                correctMode = false,
                correctableNames = {
                        ["one-to-one-forward-pipe"] = true,
                        ["one-to-two-L-FL-pipe"] = true,
                        ["one-to-two-parallel-pipe"] = true,
                        ["one-to-three-forward-pipe"] = true,

                        ["one-to-one-forward-t2-pipe"] = true,
                        ["one-to-two-L-FL-t2-pipe"] = true,
                        ["one-to-two-parallel-t2-pipe"] = true,
                        ["one-to-three-forward-t2-pipe"] = true,

                        ["one-to-one-forward-t3-pipe"] = true,
                        ["one-to-two-L-FL-t3-pipe"] = true,
                        ["one-to-two-parallel-t3-pipe"] = true,
                        ["one-to-three-forward-t3-pipe"] = true,
                },
                entityData = {}
        }
    end
end]]--
return init
