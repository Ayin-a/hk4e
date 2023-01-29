-- 基础信息
local base_info = {
	group_id = 133314155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 28061501, pos = { x = -755.380, y = -127.000, z = 4446.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 },
	{ config_id = 155002, monster_id = 26100501, pos = { x = -761.212, y = -127.014, z = 4440.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 },
	{ config_id = 155003, monster_id = 28061501, pos = { x = -769.258, y = -126.143, z = 4451.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155004, gadget_id = 70211022, pos = { x = -761.053, y = -127.014, z = 4446.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155005, name = "ANY_MONSTER_DIE_155005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155005", action = "action_EVENT_ANY_MONSTER_DIE_155005" },
	{ config_id = 1155006, name = "ANY_MONSTER_DIE_155006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155006", action = "action_EVENT_ANY_MONSTER_DIE_155006" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 155001, 155002, 155003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155005", "ANY_MONSTER_DIE_155006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 玩家行为埋点
function TLA_mark_playeraction(context, evt, param1, param2, param3)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, param1, param2, param3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155005(context, evt)
	if 0 ~= ScriptLib.CreateGadget(context, {config_id=155004}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING: CreateGadget")
		return -1
	end
	
	TLA_mark_playeraction(context, evt, 4001, 3, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133314104, 104001, GadgetState.Default)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133314104, 104002, GadgetState.Default)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133314104, 104003, GadgetState.Default)
	
	ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133314155)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314104, 104003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155006(context, evt)
	-- 改变指定group组133314104中， configid为104003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314104, 104003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end