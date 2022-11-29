-- 基础信息
local base_info = {
	group_id = 133308489
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 489001, monster_id = 25310101, pos = { x = -1990.966, y = 192.949, z = 4414.552 }, rot = { x = 0.000, y = 113.651, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9004, area_id = 26 },
	{ config_id = 489002, monster_id = 25210402, pos = { x = -1975.215, y = 195.579, z = 4407.479 }, rot = { x = 0.000, y = 237.211, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9502, area_id = 26 },
	{ config_id = 489003, monster_id = 25210201, pos = { x = -1985.081, y = 194.588, z = 4422.031 }, rot = { x = 0.000, y = 184.268, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 489004, gadget_id = 70211102, pos = { x = -1980.456, y = 194.080, z = 4412.345 }, rot = { x = 11.000, y = 190.359, z = 353.980 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	-- 宝箱
	{ config_id = 489007, gadget_id = 70330430, pos = { x = -1980.679, y = 194.030, z = 4412.619 }, rot = { x = 345.044, y = 13.566, z = 11.227 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	-- 无
	{ config_id = 489008, gadget_id = 70330430, pos = { x = -1983.242, y = 191.958, z = 4399.385 }, rot = { x = 343.605, y = 107.043, z = 354.164 }, level = 32, persistent = true, area_id = 26 },
	-- 射手
	{ config_id = 489009, gadget_id = 70330430, pos = { x = -1984.510, y = 194.382, z = 4421.693 }, rot = { x = 356.323, y = 0.379, z = 5.517 }, level = 32, persistent = true, area_id = 26 },
	-- 拳刃
	{ config_id = 489010, gadget_id = 70330430, pos = { x = -1975.297, y = 195.540, z = 4408.134 }, rot = { x = 24.787, y = 278.151, z = 9.909 }, level = 32, persistent = true, area_id = 26 },
	-- 刺客
	{ config_id = 489011, gadget_id = 70330430, pos = { x = -1990.167, y = 192.507, z = 4414.406 }, rot = { x = 358.353, y = 312.942, z = 11.314 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 489017, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1980.764, y = 194.145, z = 4412.378 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 怪没全死
	{ config_id = 1489005, name = "ANY_GADGET_DIE_489005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_489005", action = "action_EVENT_ANY_GADGET_DIE_489005" },
	-- 怪死一个+1
	{ config_id = 1489006, name = "ANY_MONSTER_DIE_489006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_489006", trigger_count = 3 },
	-- 怪全死了
	{ config_id = 1489012, name = "ANY_GADGET_DIE_489012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_489012", action = "action_EVENT_ANY_GADGET_DIE_489012" },
	-- 刷射手
	{ config_id = 1489013, name = "ANY_GADGET_DIE_489013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_489013", action = "action_EVENT_ANY_GADGET_DIE_489013" },
	-- 刷拳刃
	{ config_id = 1489014, name = "ANY_GADGET_DIE_489014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_489014", action = "action_EVENT_ANY_GADGET_DIE_489014" },
	-- 刷刺客
	{ config_id = 1489015, name = "ANY_GADGET_DIE_489015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_489015", action = "action_EVENT_ANY_GADGET_DIE_489015" },
	{ config_id = 1489016, name = "VARIABLE_CHANGE_489016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_489016", action = "action_EVENT_VARIABLE_CHANGE_489016" },
	{ config_id = 1489017, name = "ENTER_REGION_489017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_489017", action = "action_EVENT_ENTER_REGION_489017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "kills", value = 0, no_refresh = true }
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
		gadgets = { 489004, 489007, 489008, 489009, 489010, 489011 },
		regions = { 489017 },
		triggers = { "ANY_GADGET_DIE_489005", "ANY_MONSTER_DIE_489006", "ANY_GADGET_DIE_489012", "ANY_GADGET_DIE_489013", "ANY_GADGET_DIE_489014", "ANY_GADGET_DIE_489015", "ENTER_REGION_489017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_489016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_489005(context, evt)
	if 489007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"kills"为3
	if ScriptLib.GetGroupVariableValue(context, "kills") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_489005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308489, 2)
	
	-- 将configid为 489004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 489004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 489009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 489010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 489011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_489006(context, evt)
	-- 针对当前group内变量名为 "kills" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "kills", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_489012(context, evt)
	if 489007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"kills"为3
	if ScriptLib.GetGroupVariableValue(context, "kills") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_489012(context, evt)
	-- 将configid为 489004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 489004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_489013(context, evt)
	if 489009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_489013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 489003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_489014(context, evt)
	if 489010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_489014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 489002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_489015(context, evt)
	if 489011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_489015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 489001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_489016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"kills"为3
	if ScriptLib.GetGroupVariableValue(context, "kills") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_489016(context, evt)
	-- 将configid为 489004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 489004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_489017(context, evt)
	if evt.param1 ~= 489017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_489017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 489007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end