-- 基础信息
local base_info = {
	group_id = 133223420
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
	{ config_id = 420001, gadget_id = 70217011, pos = { x = -5944.543, y = 178.092, z = -2579.635 }, rot = { x = 0.000, y = 310.621, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1420004, name = "GADGET_STATE_CHANGE_420004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_420004", action = "action_EVENT_GADGET_STATE_CHANGE_420004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 420002, gadget_id = 70330114, pos = { x = -5978.032, y = 217.049, z = -2561.629 }, rot = { x = 0.000, y = 114.014, z = 188.606 }, level = 1, area_id = 18 },
		{ config_id = 420003, gadget_id = 70330114, pos = { x = -5969.283, y = 215.435, z = -2564.723 }, rot = { x = 39.034, y = 111.435, z = -0.001 }, level = 1, area_id = 18 },
		{ config_id = 420005, gadget_id = 70330114, pos = { x = -5960.746, y = 208.386, z = -2567.623 }, rot = { x = 89.096, y = 180.000, z = 180.000 }, level = 1, area_id = 18 },
		{ config_id = 420006, gadget_id = 70330114, pos = { x = -5960.680, y = 194.750, z = -2567.483 }, rot = { x = 61.527, y = 90.257, z = 90.226 }, level = 1, area_id = 18 },
		{ config_id = 420007, gadget_id = 70330114, pos = { x = -5954.535, y = 178.018, z = -2571.375 }, rot = { x = 0.000, y = 130.954, z = 0.000 }, level = 1, area_id = 18 }
	}
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
		gadgets = { 420001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_420004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_420004(context, evt)
	if 420001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_420004(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223516) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end