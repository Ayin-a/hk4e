-- 基础信息
local base_info = {
	group_id = 201017006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6013, monster_id = 20011501, pos = { x = -114.389, y = 47.049, z = 149.189 }, rot = { x = 0.000, y = 119.355, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70900201, pos = { x = -120.937, y = 48.324, z = 156.556 }, rot = { x = 0.000, y = 11.778, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70360002, pos = { x = -120.899, y = 47.042, z = 156.520 }, rot = { x = 0.000, y = 119.633, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 6004, gadget_id = 70900201, pos = { x = -125.231, y = 47.073, z = 148.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70220036, pos = { x = -113.990, y = 48.878, z = 152.680 }, rot = { x = 342.623, y = 154.935, z = 354.045 }, level = 1 },
	{ config_id = 6006, gadget_id = 70690008, pos = { x = -124.927, y = 44.510, z = 148.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -125.233, y = 54.074, z = 148.554 } },
	{ config_id = 6012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -121.558, y = 47.374, z = 137.699 } }
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "ENTER_REGION_6003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6003", action = "action_EVENT_ENTER_REGION_6003" },
	{ config_id = 1006007, name = "ANY_MONSTER_DIE_6007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6007", action = "action_EVENT_ANY_MONSTER_DIE_6007" },
	{ config_id = 1006011, name = "SELECT_OPTION_6011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6011", action = "action_EVENT_SELECT_OPTION_6011" },
	{ config_id = 1006012, name = "ENTER_REGION_6012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6012", action = "action_EVENT_ENTER_REGION_6012" }
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
		monsters = { 6013 },
		gadgets = { 6002, 6005 },
		regions = { 6012 },
		triggers = { "ANY_MONSTER_DIE_6007", "SELECT_OPTION_6011", "ENTER_REGION_6012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 6006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 6004 },
		regions = { 6003 },
		triggers = { "ENTER_REGION_6003" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_ENTER_REGION_6003(context, evt)
	if evt.param1 ~= 6003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 将configid为 6002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201017006, 6002, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6011(context, evt)
	-- 判断是gadgetid 6002 option_id 2
	if 6002 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6011(context, evt)
	-- 创建id为6006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 201017006 ；指定config：6002；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201017006, 6002, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017006, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6012(context, evt)
	if evt.param1 ~= 6012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6012(context, evt)
	-- 调用提示id为 101700301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 101700301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end