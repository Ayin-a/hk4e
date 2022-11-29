-- 基础信息
local base_info = {
	group_id = 201059003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3004, monster_id = 21020101, pos = { x = -104.066, y = 154.039, z = -5.507 }, rot = { x = 0.000, y = 58.210, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21020101, pos = { x = -104.093, y = 154.042, z = 5.553 }, rot = { x = 0.000, y = 99.867, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21030201, pos = { x = -104.357, y = 154.042, z = 0.954 }, rot = { x = 0.000, y = 99.867, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21010401, pos = { x = -108.395, y = 153.891, z = -2.859 }, rot = { x = 0.000, y = 61.162, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 21010401, pos = { x = -108.302, y = 153.891, z = 2.534 }, rot = { x = 0.000, y = 104.133, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 21010301, pos = { x = -100.263, y = 153.891, z = 4.316 }, rot = { x = 0.000, y = 113.828, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 21010301, pos = { x = -100.027, y = 153.897, z = -6.701 }, rot = { x = 0.000, y = 55.852, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70360002, pos = { x = -97.715, y = 153.932, z = 0.538 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 3003, gadget_id = 70350005, pos = { x = -115.094, y = 153.771, z = 0.308 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 3011, gadget_id = 70350005, pos = { x = -79.400, y = 153.759, z = -0.231 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70211001, pos = { x = -103.511, y = 153.894, z = 13.853 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3017, gadget_id = 70220013, pos = { x = -101.082, y = 153.902, z = 14.514 }, rot = { x = 0.000, y = 34.547, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220014, pos = { x = -99.931, y = 153.890, z = 16.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70900201, pos = { x = -97.755, y = 155.262, z = 0.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = -158.243, y = 146.664, z = 27.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220014, pos = { x = -102.025, y = 153.904, z = 11.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220026, pos = { x = -101.258, y = 153.890, z = 12.505 }, rot = { x = 0.000, y = 349.596, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220015, pos = { x = -107.600, y = 153.908, z = -12.233 }, rot = { x = 270.020, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220015, pos = { x = -108.057, y = 154.723, z = -12.135 }, rot = { x = 270.020, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220013, pos = { x = -108.768, y = 153.890, z = -10.061 }, rot = { x = 0.000, y = 34.547, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220014, pos = { x = -110.944, y = 153.890, z = -10.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3002, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 15.000 }, pos = { x = -65.975, y = 153.911, z = -0.027 } },
	{ config_id = 3010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -97.714, y = 153.932, z = 0.515 } }
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "ENTER_REGION_3002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3002", action = "action_EVENT_ENTER_REGION_3002" },
	{ config_id = 1003006, name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006" },
	{ config_id = 1003010, name = "ENTER_REGION_3010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3010", action = "action_EVENT_ENTER_REGION_3010" },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012" },
	{ config_id = 1003016, name = "ANY_MONSTER_DIE_3016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3016", action = "action_EVENT_ANY_MONSTER_DIE_3016" }
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
		gadgets = { 3001, 3003, 3011, 3013, 3017, 3018, 3021, 3022, 3023, 3024, 3025, 3026 },
		regions = { 3002, 3010 },
		triggers = { "ENTER_REGION_3002", "ANY_MONSTER_DIE_3006", "ENTER_REGION_3010", "SELECT_OPTION_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3007, 3008, 3009, 3014, 3015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3002(context, evt)
	if evt.param1 ~= 3002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3002(context, evt)
	-- 改变指定group组201059003中， configid为3011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201059003, 3011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059002, EntityType.GADGET, 2018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201059003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3010(context, evt)
	if evt.param1 ~= 3010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3010(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059003, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	-- 判断是gadgetid 3001 option_id 1
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	-- 删除指定group： 201059003 ；指定config：3001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201059003, 3001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3016(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201059003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3016(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201059003, 3001, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end