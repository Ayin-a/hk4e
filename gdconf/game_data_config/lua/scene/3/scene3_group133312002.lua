-- 基础信息
local base_info = {
	group_id = 133312002
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
	{ config_id = 2001, gadget_id = 70330285, pos = { x = -3289.096, y = 232.915, z = 4588.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 2002, gadget_id = 70350451, pos = { x = -3254.429, y = 194.780, z = 4556.281 }, rot = { x = 30.950, y = 140.548, z = 0.001 }, level = 1, area_id = 28 },
	{ config_id = 2004, gadget_id = 70350436, pos = { x = -3287.656, y = 233.245, z = 4587.553 }, rot = { x = 337.776, y = 308.981, z = 350.115 }, level = 32, state = GadgetState.GearStart, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "QUEST_FINISH_2003", event = EventType.EVENT_QUEST_FINISH, source = "7308416", condition = "", action = "action_EVENT_QUEST_FINISH_2003", trigger_count = 0 }
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
		gadgets = { 2004 },
		regions = { },
		triggers = { "QUEST_FINISH_2003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2001, 2002, 2004 },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_2003(context, evt)
	-- 将configid为 2004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end