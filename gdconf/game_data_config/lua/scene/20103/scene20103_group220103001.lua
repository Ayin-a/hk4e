-- 基础信息
local base_info = {
	group_id = 220103001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1008, monster_id = 21010101, pos = { x = -53.208, y = -8.094, z = 100.026 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9015 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360002, pos = { x = -30.792, y = -7.983, z = 94.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70900202, pos = { x = -30.792, y = -6.610, z = 94.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350003, pos = { x = -34.772, y = -8.103, z = 97.992 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70220007, pos = { x = -55.082, y = -8.140, z = 100.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70211111, pos = { x = -57.298, y = -8.095, z = 100.219 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = -49.207, y = -7.984, z = 85.149 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220013, pos = { x = -51.316, y = -7.984, z = 85.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220026, pos = { x = -47.174, y = -7.984, z = 85.062 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220025, pos = { x = -42.021, y = -7.938, z = 91.364 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220025, pos = { x = -43.319, y = -7.923, z = 90.052 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70900205, pos = { x = -62.503, y = -28.519, z = 114.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70220005, pos = { x = -53.627, y = -7.983, z = 104.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70220005, pos = { x = -52.878, y = -7.984, z = 105.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70900201, pos = { x = -61.989, y = -6.169, z = 90.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70900201, pos = { x = -77.826, y = -7.083, z = 102.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1018, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 20.000 }, pos = { x = -29.063, y = -4.557, z = 98.900 } },
	{ config_id = 1020, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 30.000 }, pos = { x = -63.554, y = -6.705, z = 97.164 } }
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "GADGET_CREATE_1004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1004", action = "action_EVENT_GADGET_CREATE_1004" },
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005" },
	{ config_id = 1001018, name = "ENTER_REGION_1018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1018", action = "action_EVENT_ENTER_REGION_1018" },
	{ config_id = 1001020, name = "ENTER_REGION_1020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1020", action = "action_EVENT_ENTER_REGION_1020" }
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
		monsters = { 1008 },
		gadgets = { 1001, 1002, 1003, 1006, 1007, 1009, 1010, 1012, 1013, 1014, 1015, 1016, 1017 },
		regions = { 1018 },
		triggers = { "GADGET_CREATE_1004", "SELECT_OPTION_1005", "ENTER_REGION_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1015, 1019 },
		regions = { 1020 },
		triggers = { "ENTER_REGION_1020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1004(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220103001, 1001, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1005(context, evt)
	-- 判断是gadgetid 1001 option_id 1
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1005(context, evt)
	-- 改变指定group组220103001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220103001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220103001 ；指定config：1001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220103001, 1001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220103001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220103001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220103001, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220103001, EntityType.GADGET, 1002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1018(context, evt)
	if evt.param1 ~= 1018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1018(context, evt)
	-- 调用提示id为 201030101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201030101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1020(context, evt)
	if evt.param1 ~= 1020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1020(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220103001, monsters = {}, gadgets = {1019} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220103002, 2)
	
	return 0
end