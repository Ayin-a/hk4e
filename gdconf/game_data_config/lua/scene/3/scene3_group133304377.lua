-- 基础信息
local base_info = {
	group_id = 133304377
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
	{ config_id = 377001, gadget_id = 70330234, pos = { x = -1325.650, y = 99.008, z = 2838.180 }, rot = { x = 0.000, y = 355.576, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 377002, gadget_id = 70330234, pos = { x = -1320.891, y = 98.666, z = 2840.960 }, rot = { x = 0.000, y = 343.650, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 377003, gadget_id = 70330234, pos = { x = -1315.736, y = 98.815, z = 2843.544 }, rot = { x = 0.000, y = 168.616, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 377004, gadget_id = 70330234, pos = { x = -1318.681, y = 98.752, z = 2836.019 }, rot = { x = 0.000, y = 347.275, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 377005, gadget_id = 70330234, pos = { x = -1323.147, y = 98.190, z = 2845.848 }, rot = { x = 0.000, y = 173.177, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 377006, gadget_id = 70211101, pos = { x = -1318.476, y = 99.069, z = 2835.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1377007, name = "GADGET_STATE_CHANGE_377007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377007", action = "action_EVENT_GADGET_STATE_CHANGE_377007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1377008, name = "GADGET_STATE_CHANGE_377008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377008", action = "action_EVENT_GADGET_STATE_CHANGE_377008" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 377001, 377002, 377003, 377004, 377005, 377006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_377007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	if 377006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133304220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end