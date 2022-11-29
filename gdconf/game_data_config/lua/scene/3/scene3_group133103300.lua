-- 基础信息
local base_info = {
	group_id = 133103300
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 300001, monster_id = 20010401, pos = { x = 696.455, y = 246.190, z = 1736.578 }, rot = { x = 357.649, y = 359.937, z = 3.083 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 300002, monster_id = 28020602, pos = { x = 696.650, y = 246.332, z = 1736.676 }, rot = { x = 357.649, y = 359.937, z = 3.083 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 300003, monster_id = 28030401, pos = { x = 696.603, y = 246.347, z = 1736.685 }, rot = { x = 357.649, y = 359.937, z = 3.083 }, level = 24, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 300004, gadget_id = 70360045, pos = { x = 696.366, y = 245.733, z = 1736.502 }, rot = { x = 357.649, y = 359.937, z = 3.083 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 300005, gadget_id = 70211101, pos = { x = 696.462, y = 246.255, z = 1736.647 }, rot = { x = 357.649, y = 359.937, z = 3.083 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300006, name = "GADGET_STATE_CHANGE_300006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300006", action = "action_EVENT_GADGET_STATE_CHANGE_300006", trigger_count = 0 },
	{ config_id = 1300007, name = "GADGET_STATE_CHANGE_300007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300007", action = "action_EVENT_GADGET_STATE_CHANGE_300007" },
	{ config_id = 1300008, name = "GADGET_STATE_CHANGE_300008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300008", action = "action_EVENT_GADGET_STATE_CHANGE_300008" }
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
		gadgets = { 300004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_300006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 300004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_300007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 300004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_300008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_300006(context, evt)
	if 300004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_300006(context, evt)
	-- 创建id为300005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 300005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 300003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_300007(context, evt)
	if 300004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_300007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 300001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_300008(context, evt)
	if 300004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_300008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 300002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end