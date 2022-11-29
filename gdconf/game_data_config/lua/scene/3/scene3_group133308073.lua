-- 基础信息
local base_info = {
	group_id = 133308073
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
	{ config_id = 73001, gadget_id = 70330407, pos = { x = -2291.416, y = 68.605, z = 4234.895 }, rot = { x = 344.984, y = 300.285, z = 40.303 }, level = 32, area_id = 26 },
	{ config_id = 73002, gadget_id = 70330407, pos = { x = -2303.963, y = 69.154, z = 4232.533 }, rot = { x = 0.000, y = 134.105, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 },
	{ config_id = 73003, gadget_id = 70330407, pos = { x = -2305.835, y = 69.235, z = 4220.299 }, rot = { x = 0.000, y = 314.235, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 73004, shape = RegionShape.POLYGON, pos = { x = -2301.500, y = 70.807, z = 4229.719 }, height = 41.216, point_array = { { x = -2286.855, y = 4235.336 }, { x = -2295.930, y = 4244.502 }, { x = -2316.145, y = 4223.977 }, { x = -2307.103, y = 4214.935 } }, area_id = 26 },
	{ config_id = 73005, shape = RegionShape.POLYGON, pos = { x = -2301.500, y = 70.807, z = 4229.719 }, height = 41.216, point_array = { { x = -2286.855, y = 4235.336 }, { x = -2295.930, y = 4244.502 }, { x = -2316.145, y = 4223.977 }, { x = -2307.103, y = 4214.935 } }, area_id = 26 },
	{ config_id = 73006, shape = RegionShape.POLYGON, pos = { x = -2301.500, y = 70.807, z = 4229.719 }, height = 41.216, point_array = { { x = -2286.855, y = 4235.336 }, { x = -2295.930, y = 4244.502 }, { x = -2316.145, y = 4223.977 }, { x = -2307.103, y = 4214.935 } }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1073004, name = "ENTER_REGION_73004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73004", action = "action_EVENT_ENTER_REGION_73004", trigger_count = 0 },
	{ config_id = 1073005, name = "LEAVE_REGION_73005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_73005", action = "action_EVENT_LEAVE_REGION_73005", trigger_count = 0 },
	{ config_id = 1073006, name = "LEAVE_REGION_73006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_73006", action = "action_EVENT_LEAVE_REGION_73006" }
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
		gadgets = { 73001, 73002, 73003 },
		regions = { 73004, 73005, 73006 },
		triggers = { "ENTER_REGION_73004", "LEAVE_REGION_73005", "LEAVE_REGION_73006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_73004(context, evt)
	if evt.param1 ~= 73004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73004(context, evt)
	-- 将configid为 73002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定73002物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 73002, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	-- 将configid为 73003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定73003物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 73003, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_73005(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_73005(context, evt)
	-- 将configid为 73002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定73002物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 73002, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	-- 将configid为 73003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定73003物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 73003, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_73006(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7305251)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_73006(context, evt)
	-- 调用提示id为 1000050047 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end