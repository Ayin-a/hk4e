-- 基础信息
local base_info = {
	group_id = 199002169
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
	{ config_id = 169001, gadget_id = 70310332, pos = { x = 462.476, y = 111.837, z = -461.864 }, rot = { x = 0.000, y = 349.925, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 169002, gadget_id = 70310332, pos = { x = 452.218, y = 111.855, z = -476.195 }, rot = { x = 0.000, y = 69.801, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 169003, gadget_id = 70211101, pos = { x = 463.239, y = 111.803, z = -463.240 }, rot = { x = 0.000, y = 331.195, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 169007, gadget_id = 70360001, pos = { x = 464.893, y = 109.672, z = -463.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1169004, name = "GADGETTALK_DONE_169004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800390", condition = "", action = "action_EVENT_GADGETTALK_DONE_169004", trigger_count = 0 },
	{ config_id = 1169005, name = "GROUP_LOAD_169005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169005", action = "action_EVENT_GROUP_LOAD_169005", trigger_count = 0 },
	{ config_id = 1169006, name = "GROUP_LOAD_169006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169006", action = "action_EVENT_GROUP_LOAD_169006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 169007 },
		regions = { },
		triggers = { "GADGETTALK_DONE_169004", "GROUP_LOAD_169005", "GROUP_LOAD_169006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 169001, 169002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 169003 },
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
function action_EVENT_GADGETTALK_DONE_169004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002169, 3)
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169005(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002169, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199002168) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002169, 2)
	
	return 0
end