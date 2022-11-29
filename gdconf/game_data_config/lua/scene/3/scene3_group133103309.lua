-- 基础信息
local base_info = {
	group_id = 133103309
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 309001, monster_id = 21030401, pos = { x = 661.571, y = 415.565, z = 1879.853 }, rot = { x = 4.429, y = 307.879, z = 354.176 }, level = 24, drop_tag = "丘丘萨满", area_id = 6 },
	{ config_id = 309002, monster_id = 28030101, pos = { x = 661.614, y = 415.663, z = 1880.091 }, rot = { x = 4.429, y = 307.879, z = 354.176 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 309003, monster_id = 28050102, pos = { x = 661.578, y = 415.684, z = 1880.062 }, rot = { x = 4.429, y = 307.879, z = 354.176 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 309004, gadget_id = 70360045, pos = { x = 661.574, y = 415.139, z = 1879.649 }, rot = { x = 4.429, y = 307.879, z = 354.176 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 309005, gadget_id = 70211101, pos = { x = 661.521, y = 415.619, z = 1879.913 }, rot = { x = 4.429, y = 307.879, z = 354.176 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1309006, name = "GADGET_STATE_CHANGE_309006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309006", action = "action_EVENT_GADGET_STATE_CHANGE_309006", trigger_count = 0 },
	{ config_id = 1309007, name = "GADGET_STATE_CHANGE_309007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309007", action = "action_EVENT_GADGET_STATE_CHANGE_309007" },
	{ config_id = 1309008, name = "GADGET_STATE_CHANGE_309008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309008", action = "action_EVENT_GADGET_STATE_CHANGE_309008" }
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
		gadgets = { 309004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_309006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 309004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_309007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 309004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_309008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309006(context, evt)
	if 309004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309006(context, evt)
	-- 创建id为309005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 309003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309007(context, evt)
	if 309004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 309001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309008(context, evt)
	if 309004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 309002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end