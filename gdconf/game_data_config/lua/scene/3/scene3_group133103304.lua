-- 基础信息
local base_info = {
	group_id = 133103304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304001, monster_id = 21011201, pos = { x = 803.068, y = 336.411, z = 1856.910 }, rot = { x = 351.063, y = 230.580, z = 16.186 }, level = 24, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 304002, monster_id = 28020301, pos = { x = 802.909, y = 336.603, z = 1856.985 }, rot = { x = 351.063, y = 230.580, z = 16.186 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 304003, monster_id = 28020102, pos = { x = 802.934, y = 336.608, z = 1856.942 }, rot = { x = 351.063, y = 230.580, z = 16.186 }, level = 24, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304004, gadget_id = 70360045, pos = { x = 803.073, y = 335.939, z = 1856.936 }, rot = { x = 351.063, y = 230.580, z = 16.186 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 304005, gadget_id = 70211101, pos = { x = 803.024, y = 336.483, z = 1856.866 }, rot = { x = 351.063, y = 230.580, z = 16.186 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304006, name = "GADGET_STATE_CHANGE_304006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304006", action = "action_EVENT_GADGET_STATE_CHANGE_304006", trigger_count = 0 },
	{ config_id = 1304007, name = "GADGET_STATE_CHANGE_304007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304007", action = "action_EVENT_GADGET_STATE_CHANGE_304007" },
	{ config_id = 1304008, name = "GADGET_STATE_CHANGE_304008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304008", action = "action_EVENT_GADGET_STATE_CHANGE_304008" }
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
		gadgets = { 304004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 304004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 304004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304006(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304006(context, evt)
	-- 创建id为304005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 304005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 304003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304007(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 304001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304008(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 304002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end