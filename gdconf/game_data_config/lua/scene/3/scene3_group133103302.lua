-- 基础信息
local base_info = {
	group_id = 133103302
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302001, monster_id = 21030401, pos = { x = 736.016, y = 316.497, z = 1772.000 }, rot = { x = 0.000, y = 290.414, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", area_id = 6 },
	{ config_id = 302002, monster_id = 28020301, pos = { x = 735.989, y = 316.624, z = 1772.225 }, rot = { x = 0.000, y = 290.414, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 302003, monster_id = 28030404, pos = { x = 735.964, y = 316.641, z = 1772.185 }, rot = { x = 0.000, y = 290.414, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 302004, gadget_id = 70360045, pos = { x = 736.065, y = 316.049, z = 1771.861 }, rot = { x = 0.000, y = 290.414, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 302005, gadget_id = 70211101, pos = { x = 735.952, y = 316.558, z = 1772.035 }, rot = { x = 0.000, y = 290.414, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302006, name = "GADGET_STATE_CHANGE_302006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302006", action = "action_EVENT_GADGET_STATE_CHANGE_302006", trigger_count = 0 },
	{ config_id = 1302007, name = "GADGET_STATE_CHANGE_302007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302007", action = "action_EVENT_GADGET_STATE_CHANGE_302007" },
	{ config_id = 1302008, name = "GADGET_STATE_CHANGE_302008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302008", action = "action_EVENT_GADGET_STATE_CHANGE_302008" }
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
		gadgets = { 302004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_302006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 302004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_302007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 302004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_302008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302006(context, evt)
	if 302004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302006(context, evt)
	-- 创建id为302005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 302005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302007(context, evt)
	if 302004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302008(context, evt)
	if 302004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end