
--用于处理怪物脱战后的处理，需要通知group重置。

function SLC_CombatEnd(context)

    local g_id = ScriptLib.GetContextGroupId(context)
    ScriptLib.RefreshGroup(context, {group_id = g_id, suite = 1})
    return 0
end