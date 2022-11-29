-- 基础信息
local base_info = {
	group_id = 133309118
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
	{ config_id = 118001, gadget_id = 70330342, pos = { x = -2753.006, y = -47.334, z = 5361.009 }, rot = { x = 1.503, y = 125.291, z = 2.711 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 118003, gadget_id = 70330434, pos = { x = -2754.112, y = -46.883, z = 5361.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 118004, gadget_id = 70690001, pos = { x = -2753.679, y = -4.683, z = 5360.044 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 118009, gadget_id = 70220048, pos = { x = -2757.047, y = -46.329, z = 5362.841 }, rot = { x = 2.107, y = 58.339, z = 356.603 }, level = 32, area_id = 27 },
	{ config_id = 118010, gadget_id = 70690001, pos = { x = -2753.679, y = -23.428, z = 5360.044 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 118011, gadget_id = 70690001, pos = { x = -2753.679, y = -13.971, z = 5360.044 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118006, name = "GADGET_STATE_CHANGE_118006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118006", action = "action_EVENT_GADGET_STATE_CHANGE_118006" },
	{ config_id = 1118012, name = "GROUP_LOAD_118012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118012", action = "action_EVENT_GROUP_LOAD_118012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 118001, 118009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118006", "GROUP_LOAD_118012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 118003, 118004, 118010, 118011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_STATE_CHANGE_118006(context, evt)
	if 118001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118006(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309118, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_118012(context, evt)
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309118, 2)
	
	return 0
end