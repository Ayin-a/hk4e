-- 基础信息
local base_info = {
	group_id = 166001122
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
	{ config_id = 122001, gadget_id = 70800132, pos = { x = 776.875, y = 791.000, z = 649.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, fishing_id = 2012, fishing_areas = { 600001, 600004 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122002, name = "FISHING_QTE_FINISH_122002", event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "condition_EVENT_FISHING_QTE_FINISH_122002", action = "action_EVENT_FISHING_QTE_FINISH_122002", trigger_count = 0 },
	{ config_id = 1122003, name = "FISHING_STOP_122003", event = EventType.EVENT_FISHING_STOP, source = "", condition = "condition_EVENT_FISHING_STOP_122003", action = "action_EVENT_FISHING_STOP_122003", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 122001 },
		regions = { },
		triggers = { "FISHING_QTE_FINISH_122002", "FISHING_STOP_122003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_FISHING_QTE_FINISH_122002(context, evt)
	if 1 ~= evt.param2 then
		return false
	elseif 0 ~= evt.param1 and 0 ~= 0 then
	  return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_FISHING_QTE_FINISH_122002(context, evt)
	-- 针对当前group内变量名为 "fishdone" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fishdone", 1, 166001611) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_FISHING_STOP_122003(context, evt)
	-- 判断变量"fishdone"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "fishdone", 166001611) > 0 then
			return true
	end
	
	return false
	
end

-- 触发操作
function action_EVENT_FISHING_STOP_122003(context, evt)
	-- 将本组内变量名为 "fishstop" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fishstop", 1, 166001611) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end