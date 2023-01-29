-- 基础信息
local base_info = {
	group_id = 133106032
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
	{ config_id = 32001, gadget_id = 70360189, pos = { x = -779.211, y = 237.883, z = 1383.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 32004, gadget_id = 70900394, pos = { x = -779.374, y = 237.388, z = 1383.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 32005, gadget_id = 70300118, pos = { x = -779.379, y = 238.297, z = 1383.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 32006, gadget_id = 70710181, pos = { x = -780.967, y = 237.917, z = 1384.452 }, rot = { x = 323.443, y = 324.441, z = 16.860 }, level = 1, area_id = 8 },
	{ config_id = 32007, gadget_id = 70710790, pos = { x = -776.179, y = 237.942, z = 1382.890 }, rot = { x = 340.573, y = 311.969, z = 253.345 }, level = 1, area_id = 8 },
	{ config_id = 32008, gadget_id = 70900401, pos = { x = -780.647, y = 236.969, z = 1384.901 }, rot = { x = 0.000, y = 0.000, z = 36.306 }, level = 1, area_id = 8 },
	{ config_id = 32009, gadget_id = 70710663, pos = { x = -781.867, y = 238.315, z = 1381.754 }, rot = { x = 354.866, y = 51.485, z = 25.937 }, level = 1, area_id = 8 },
	{ config_id = 32010, gadget_id = 70900394, pos = { x = -782.010, y = 239.258, z = 1381.820 }, rot = { x = 0.000, y = 69.160, z = 139.781 }, level = 1, area_id = 8 },
	{ config_id = 32011, gadget_id = 70710790, pos = { x = -763.866, y = 236.259, z = 1390.136 }, rot = { x = 22.746, y = 62.112, z = 258.436 }, level = 1, area_id = 8 },
	{ config_id = 32012, gadget_id = 70900401, pos = { x = -11.085, y = 237.955, z = -9.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032002, name = "SELECT_OPTION_32002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_32002", action = "action_EVENT_SELECT_OPTION_32002" },
	{ config_id = 1032003, name = "GADGET_CREATE_32003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_32003", action = "action_EVENT_GADGET_CREATE_32003", trigger_count = 0 }
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
		gadgets = { 32001, 32004, 32005, 32006, 32007, 32008, 32009, 32010, 32011, 32012 },
		regions = { },
		triggers = { "SELECT_OPTION_32002", "GADGET_CREATE_32003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_32002(context, evt)
	-- 判断是gadgetid 32001 option_id 70
	if 32001 ~= evt.param1 then
		return false	
	end
	
	if 70 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_32002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2103303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133106032 ；指定config：32001；物件身上指定option：70；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106032, 32001, 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106032, EntityType.GADGET, 32001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106032, EntityType.GADGET, 32005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106032, EntityType.GADGET, 32004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_32003(context, evt)
	if 32001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_32003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106032, 32001, {70}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end