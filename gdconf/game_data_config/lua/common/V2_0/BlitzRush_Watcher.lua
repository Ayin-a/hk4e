--对“天选之人”释放“强力技”时攻击弱点瘫痪boss
function SLC_Activity_BlitzRush_Enhanced_WeakTrigger (context)
	local varName = "SLC_Activity_BlitzRush_Enhanced_WeakTrigger"
	local uid = context.uid
	AddPlayerTempValue(context, uid, varName)
	return 0
end

--通过攻击弱点瘫痪过X次怪物
function SLC_Activity_BlitzRush_WeakTrigger (context)
	local varName = "SLC_Activity_BlitzRush_WeakTrigger"
	local uid = context.uid
	AddPlayerTempValue(context, uid, varName)
	return 0
end

--对X个“天选之人”造成最后一击
function SLC_Activity_BlitzRush_Enhanced_Killed(context)
	local varName = "SLC_Activity_BlitzRush_Enhanced_Killed"
	local uid = context.uid
	AddPlayerTempValue(context, uid, varName)
	return 0
end

--未受到过任何“强力技”伤害击败boss
function SLC_Activity_BlitzRush_AttackTagTrigger(context)
	local varName = "SLC_Activity_BlitzRush_AttackTagTrigger"
	local uid = context.uid
	AddPlayerTempValue(context, uid, varName)
	return 0
end

--用3电桩冲击波造成伤害
function SLC_RoleElectricPowerSource_AttackSum(context)
        local uid_list = ScriptLib.GetSceneUidList(context)
        local varName = "SLC_RoleElectricPowerSource_AttackSum_S4"
        ScriptLib.PrintContextLog(context, "##BiltzRush LOG : Activity_BlitzRush_Call_RoleElectricPowerSource")
        for k,uid in pairs(uid_list) do
        	AddPlayerTempValue(context, uid, varName)
        end
        return 0
end

--挑战中雷暴石发动攻击
function SLC_RoleElectricBomb_AttackSum(context)
        local uid_list = ScriptLib.GetSceneUidList(context)
        local varName = "SLC_RoleElectricBomb_AttackSum_S4"
        ScriptLib.PrintContextLog(context, "##BiltzRush LOG : Activity_BlitzRush_Call_RoleElectricBomb")
        for k,uid in pairs(uid_list) do
        	AddPlayerTempValue(context, uid, varName)
        end
        return 0
end

--雷暴石的不需要处理的SLC
function SLC_RoleElectricBomb_MultiAttack(context)
	return 0
end

--给玩家的tempValue+1
function AddPlayerTempValue(context, uid, varName)
	local value = ScriptLib.GetGroupTempValue(context, varName..uid, {})
	value = value + 1
	ScriptLib.SetGroupTempValue(context, varName..uid, value, {})
	ScriptLib.AddExhibitionReplaceableData(context, uid, varName, 1)
	ScriptLib.PrintContextLog(context, "##BiltzRush LOG : player add "..uid..varName..value)
	return 0
end

