--[[
=====================================================================================================================
||  Filename      ||    MonsterQuickDeath 怪物快速死亡引用脚本
||  RelVersion    ||    2.5
||  Owner         ||    chao.jin
||  Description   ||    2.5版本，封装的怪物快速死亡引用
||  LogName       ||    
||  Protection    ||    防止找不到Affix是否判断，如果没有affix则手动插入一个
===================================================================================================================]]

function CITE_Monster_quick_death()
    for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 9009)
        else
            infos["affix"] = {9009}
        end
    end
end

CITE_Monster_quick_death()