--雷暴石单次命中3个怪
function SLC_RoleElectricBomb_MultiAttack(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		ScriptLib.AddExhibitionAccumulableData(context, v, "SLC_RoleElectricBomb_MultiAttack", 1)
	end
	return 0
end

--挑战中雷暴石发动攻击
function SLC_RoleElectricBomb_AttackSum(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		ScriptLib.AddExhibitionAccumulableData(context, v, "SLC_RoleElectricBomb_AttackSum", 1)
	end
	return 0
end