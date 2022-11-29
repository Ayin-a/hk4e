-- 基础信息
local base_info = {
	group_id = 133220321
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321003, monster_id = 28040103, pos = { x = -2793.037, y = 200.000, z = -4216.725 }, rot = { x = 0.000, y = 13.022, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 11 },
	{ config_id = 321004, monster_id = 28040103, pos = { x = -2794.296, y = 200.000, z = -4215.375 }, rot = { x = 0.000, y = 55.211, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 11 },
	{ config_id = 321005, monster_id = 28040103, pos = { x = -2791.213, y = 200.000, z = -4215.636 }, rot = { x = 0.000, y = 6.461, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321001, gadget_id = 70330092, pos = { x = -2791.391, y = 199.458, z = -4213.406 }, rot = { x = 356.744, y = 224.788, z = 1.298 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1321002, name = "USE_WIDGET_TOY_FOX_CAMERA_321002", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_321002", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_321002", trigger_count = 0 }
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
		gadgets = { 321001 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_321002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_321002(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==321001 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_321002(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 321003, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 321004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 321005, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 321001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end