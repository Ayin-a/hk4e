-- 基础信息
local base_info = {
	group_id = 133313016
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
	{ config_id = 16001, gadget_id = 71700288, pos = { x = -802.900, y = -846.070, z = 5271.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 16002, gadget_id = 70950145, pos = { x = -802.859, y = -846.099, z = 5271.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 16005, gadget_id = 70300107, pos = { x = -802.903, y = -846.073, z = 5271.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016003, name = "GADGET_CREATE_16003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16003", action = "action_EVENT_GADGET_CREATE_16003", trigger_count = 0 },
	{ config_id = 1016004, name = "SELECT_OPTION_16004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16004", action = "action_EVENT_SELECT_OPTION_16004", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16001, 16002 },
		regions = { },
		triggers = { "GADGET_CREATE_16003", "SELECT_OPTION_16004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 结束状态,
		monsters = { },
		gadgets = { 16005 },
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

-- 删除指定操作台的option
function TLA_del_work_options_by_group_configid(context, evt, group_id, config_id, option_id)
	-- 删除指定group： group_id ；指定config：config_id；物件身上指定option：option_id；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16003(context, evt)
	if 16002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313016, 16002, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16004(context, evt)
	-- 判断是gadgetid 16002 option_id 35
	if 16002 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7322004")
	
	TLA_del_work_options_by_group_configid(context, evt, 133313016, 16002, 35)
	
	return 0
end