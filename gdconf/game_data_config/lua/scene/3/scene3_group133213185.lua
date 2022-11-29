-- 基础信息
local base_info = {
	group_id = 133213185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 185001, gadget_id = 70310006, pos = { x = -3184.624, y = 200.719, z = -3428.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1185002, name = "QUEST_FINISH_185002", event = EventType.EVENT_QUEST_FINISH, source = "7216903", condition = "condition_EVENT_QUEST_FINISH_185002", action = "action_EVENT_QUEST_FINISH_185002" },
	{ config_id = 1185003, name = "QUEST_FINISH_185003", event = EventType.EVENT_QUEST_FINISH, source = "7216904", condition = "", action = "action_EVENT_QUEST_FINISH_185003" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { 185001 },
		regions = { },
		triggers = { "QUEST_FINISH_185002", "QUEST_FINISH_185003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_185002(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133213185, 185001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_185002(context, evt)
	-- 将configid为 185001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_185003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213185, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end