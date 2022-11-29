-- 基础信息
local base_info = {
	group_id = 250004063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49, monster_id = 21010401, pos = { x = -142.856, y = -5.937, z = 608.730 }, rot = { x = 0.000, y = 123.744, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 50, monster_id = 21010501, pos = { x = -130.749, y = -5.937, z = 619.847 }, rot = { x = 0.000, y = 165.384, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 51, monster_id = 21010901, pos = { x = -125.430, y = -5.931, z = 618.071 }, rot = { x = 0.000, y = 222.491, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 52, monster_id = 21011001, pos = { x = -137.126, y = -5.934, z = 618.164 }, rot = { x = 0.000, y = 147.928, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 54, monster_id = 21010401, pos = { x = -120.932, y = -5.933, z = 613.424 }, rot = { x = 0.000, y = 236.528, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 55, monster_id = 21010401, pos = { x = -141.926, y = -5.929, z = 614.032 }, rot = { x = 0.000, y = 139.574, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 56, monster_id = 21010401, pos = { x = -119.632, y = -5.930, z = 607.499 }, rot = { x = 0.000, y = 269.998, z = 0.000 }, level = 20, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 605, gadget_id = 70211001, pos = { x = -131.041, y = -5.981, z = 619.958 }, rot = { x = 0.000, y = 180.768, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 606, gadget_id = 70360002, pos = { x = -131.563, y = -7.710, z = 606.083 }, rot = { x = 0.000, y = 181.498, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000110, name = "ANY_MONSTER_DIE_110", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_110", action = "action_EVENT_ANY_MONSTER_DIE_110", trigger_count = 0 },
	{ config_id = 1000111, name = "GADGET_CREATE_111", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_111", action = "action_EVENT_GADGET_CREATE_111", trigger_count = 0 },
	{ config_id = 1000112, name = "SELECT_OPTION_112", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_112", action = "action_EVENT_SELECT_OPTION_112", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 606 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_110", "GADGET_CREATE_111", "SELECT_OPTION_112" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_110(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004063) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_110(context, evt)
	-- 创建id为605的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 605 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_111(context, evt)
	if 606 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_111(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250004063, 606, {104}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_112(context, evt)
	if 606 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_112(context, evt)
	-- 将configid为 606 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 51, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 55, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 50, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 52, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 606 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end