-- 基础信息
local base_info = {
	group_id = 155006205
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
	-- 灵庙三合一仙灵宝箱
	{ config_id = 205001, gadget_id = 70211132, pos = { x = 413.171, y = 175.999, z = -229.080 }, rot = { x = 12.425, y = 358.814, z = 8.370 }, level = 16, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205002, name = "GROUP_LOAD_205002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_205002", action = "action_EVENT_GROUP_LOAD_205002", trigger_count = 0 },
	{ config_id = 1205003, name = "VARIABLE_CHANGE_205003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205003", action = "action_EVENT_VARIABLE_CHANGE_205003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 205001 },
		regions = { },
		triggers = { "GROUP_LOAD_205002", "VARIABLE_CHANGE_205003" },
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
function condition_EVENT_GROUP_LOAD_205002(context, evt)
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_205002(context, evt)
	-- 改变指定group组155006205中， configid为205001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006205, 205001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205003(context, evt)
	-- 将configid为 205001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end