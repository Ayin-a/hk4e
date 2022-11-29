-- 基础信息
local base_info = {
	group_id = 133217229
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
	{ config_id = 229001, gadget_id = 70211102, pos = { x = -4430.264, y = 205.717, z = -3980.760 }, rot = { x = 0.000, y = 350.336, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229002, name = "QUEST_FINISH_229002", event = EventType.EVENT_QUEST_FINISH, source = "7216209", condition = "", action = "action_EVENT_QUEST_FINISH_229002", trigger_count = 0 },
	{ config_id = 1229003, name = "TIME_AXIS_PASS_229003", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_229003", action = "action_EVENT_TIME_AXIS_PASS_229003", trigger_count = 0 }
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
		gadgets = { 229001 },
		regions = { },
		triggers = { "QUEST_FINISH_229002", "TIME_AXIS_PASS_229003" },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_229002(context, evt)
	-- 将configid为 229001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 229001 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229001, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Finish"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Finish", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_229003(context, evt)
	if  1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_229003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217229, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end