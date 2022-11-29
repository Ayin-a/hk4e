-- 基础信息
local base_info = {
	group_id = 250004067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57, monster_id = 21010401, pos = { x = -64.651, y = -5.919, z = 381.709 }, rot = { x = 0.000, y = 157.277, z = 0.000 }, level = 10 },
	{ config_id = 58, monster_id = 21010401, pos = { x = -46.787, y = -5.924, z = 352.908 }, rot = { x = 0.000, y = 313.149, z = 0.000 }, level = 10 },
	{ config_id = 59, monster_id = 21010901, pos = { x = -43.891, y = -5.915, z = 380.131 }, rot = { x = 0.000, y = 236.649, z = 0.000 }, level = 10 },
	{ config_id = 60, monster_id = 21010901, pos = { x = -64.769, y = -5.925, z = 356.778 }, rot = { x = 0.000, y = 32.050, z = 0.000 }, level = 10 },
	{ config_id = 61, monster_id = 21030301, pos = { x = -49.962, y = -10.886, z = 373.218 }, rot = { x = 0.000, y = 232.045, z = 0.000 }, level = 12 },
	{ config_id = 62, monster_id = 21030301, pos = { x = -56.942, y = -10.886, z = 360.099 }, rot = { x = 0.000, y = 346.438, z = 0.000 }, level = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 613, gadget_id = 70360002, pos = { x = -53.975, y = -11.060, z = 367.460 }, rot = { x = 0.000, y = 268.856, z = 0.000 }, level = 1 },
	{ config_id = 614, gadget_id = 70211001, pos = { x = -53.741, y = -10.886, z = 364.913 }, rot = { x = 0.000, y = 274.987, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000114, name = "GADGET_CREATE_114", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_114", action = "action_EVENT_GADGET_CREATE_114", trigger_count = 0 },
	{ config_id = 1000115, name = "SELECT_OPTION_115", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115", action = "action_EVENT_SELECT_OPTION_115", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000116, name = "ANY_MONSTER_DIE_116", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116", action = "action_EVENT_ANY_MONSTER_DIE_116", trigger_count = 0 }
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
		gadgets = { 613 },
		regions = { },
		triggers = { "GADGET_CREATE_114", "SELECT_OPTION_115", "ANY_MONSTER_DIE_116" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_114(context, evt)
	if 613 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_114(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_115(context, evt)
	if 613 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_115(context, evt)
	-- 将configid为 613 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 59, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 60, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 61, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 62, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 613 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004067) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116(context, evt)
	-- 创建id为614的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 614 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为613的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 613 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end