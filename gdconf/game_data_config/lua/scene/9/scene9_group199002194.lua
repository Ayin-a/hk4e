-- 基础信息
local base_info = {
	group_id = 199002194
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
	{ config_id = 194001, gadget_id = 70310332, pos = { x = 439.589, y = 209.489, z = -446.390 }, rot = { x = 0.000, y = 174.470, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 194002, gadget_id = 70300111, pos = { x = 436.438, y = 209.411, z = -450.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 194003, gadget_id = 70300111, pos = { x = 439.648, y = 209.353, z = -452.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 194004, gadget_id = 70300111, pos = { x = 441.876, y = 209.386, z = -449.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 194005, gadget_id = 70211002, pos = { x = 435.763, y = 209.600, z = -446.584 }, rot = { x = 0.000, y = 99.171, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194006, name = "ANY_GADGET_DIE_194006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_194006", trigger_count = 0 },
	{ config_id = 1194007, name = "GROUP_LOAD_194007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_194007", trigger_count = 0 },
	{ config_id = 1194009, name = "TIME_AXIS_PASS_194009", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "condition_EVENT_TIME_AXIS_PASS_194009", action = "action_EVENT_TIME_AXIS_PASS_194009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "time", value = 0, no_refresh = false }
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
		gadgets = { 194001, 194002, 194003, 194004, 194005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_194006", "GROUP_LOAD_194007", "TIME_AXIS_PASS_194009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 194001, 194005 },
		regions = { },
		triggers = { "GROUP_LOAD_194007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_194006(context, evt)
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id=199002194 , gadget_id=0}) == 2 and ScriptLib.GetGroupVariableValue(context, "finish") == 0 then
		ScriptLib.SetGroupVariableValue(context, "finish", 1)
		
		ScriptLib.SetGadgetStateByConfigId(context,194005, GadgetState.Default)
		
		ScriptLib.SetGadgetTalkByConfigId(context, 199002194, 194001, 6800357)
		
		ScriptLib.GoToGroupSuite(context, 199002194, 2)
	else
		if ScriptLib.GetGroupVariableValue(context, "finish") == 0 and ScriptLib.GetGroupVariableValue(context, "time") == 0 then
			ScriptLib.SetGroupVariableValue(context, "time", 1)
			
			ScriptLib.InitTimeAxis(context, "temp", {2}, false)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_194007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "finish") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,194005, GadgetState.Default)
		
		ScriptLib.GoToGroupSuite(context, 199002194, 2)
	else
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_194009(context, evt)
	if "temp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_194009(context, evt)
	-- 将本组内变量名为 "time" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002194, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end