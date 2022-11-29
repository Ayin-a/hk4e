-- 基础信息
local base_info = {
	group_id = 199003108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 28030103, pos = { x = -669.326, y = 124.221, z = -129.955 }, rot = { x = 0.000, y = 48.277, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 },
	{ config_id = 108002, monster_id = 28020307, pos = { x = -659.643, y = 122.210, z = -127.805 }, rot = { x = 0.000, y = 278.084, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 },
	{ config_id = 108003, monster_id = 28020106, pos = { x = -664.964, y = 122.528, z = -119.122 }, rot = { x = 0.000, y = 169.348, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 },
	{ config_id = 108004, monster_id = 28030103, pos = { x = -758.853, y = 121.845, z = -187.185 }, rot = { x = 0.000, y = 48.277, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108005, gadget_id = 70211112, pos = { x = -666.165, y = 123.218, z = -125.247 }, rot = { x = 0.000, y = 0.000, z = 352.204 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108006, name = "VARIABLE_CHANGE_108006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_108006", action = "action_EVENT_VARIABLE_CHANGE_108006", trigger_count = 0 },
	{ config_id = 1108007, name = "GADGET_STATE_CHANGE_108007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_108007", action = "action_EVENT_GADGET_STATE_CHANGE_108007", trigger_count = 0 },
	{ config_id = 1108008, name = "GROUP_LOAD_108008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_108008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "a", value = 0, no_refresh = false },
	{ config_id = 2, name = "b", value = 0, no_refresh = false },
	{ config_id = 3, name = "c", value = 0, no_refresh = false },
	{ config_id = 4, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 108001, 108002, 108003, 108004 },
		gadgets = { 108005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_108006", "GADGET_STATE_CHANGE_108007", "GROUP_LOAD_108008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 108005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_108006", "GADGET_STATE_CHANGE_108007", "GROUP_LOAD_108008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_108006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"a"为2
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 2 then
			return false
	end
	
	-- 判断变量"b"为1
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 1 then
			return false
	end
	
	-- 判断变量"c"为3
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_108006(context, evt)
	-- 将configid为 108005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003121, 1)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003118, 1)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003116, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_108007(context, evt)
	if 108005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_108007(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_108008(context, evt)
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then	 
	 if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 2 }) 
		  else
			ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 1 }) 
			end
	else
	ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 2 }) 
	end
	-- 变量"a"赋值为0
	ScriptLib.SetGroupVariableValue(context, "a", 0)
	
	-- 变量"b"赋值为0
	ScriptLib.SetGroupVariableValue(context, "b", 0)
	
	-- 变量"c"赋值为0
	ScriptLib.SetGroupVariableValue(context, "c", 0)
	
	return 0
end