-- 基础信息
local base_info = {
	group_id = 133103308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308001, monster_id = 20011301, pos = { x = 650.030, y = 419.126, z = 1858.390 }, rot = { x = 0.000, y = 292.601, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 308002, monster_id = 28020301, pos = { x = 650.012, y = 419.253, z = 1858.617 }, rot = { x = 0.000, y = 292.601, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 308003, monster_id = 28050102, pos = { x = 649.986, y = 419.270, z = 1858.578 }, rot = { x = 0.000, y = 292.601, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308004, gadget_id = 70360045, pos = { x = 650.073, y = 418.677, z = 1858.250 }, rot = { x = 0.000, y = 292.601, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 308005, gadget_id = 70211101, pos = { x = 649.968, y = 419.187, z = 1858.428 }, rot = { x = 0.000, y = 292.601, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1308006, name = "GADGET_STATE_CHANGE_308006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308006", action = "action_EVENT_GADGET_STATE_CHANGE_308006", trigger_count = 0 },
	{ config_id = 1308007, name = "GADGET_STATE_CHANGE_308007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308007", action = "action_EVENT_GADGET_STATE_CHANGE_308007" },
	{ config_id = 1308008, name = "GADGET_STATE_CHANGE_308008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308008", action = "action_EVENT_GADGET_STATE_CHANGE_308008" }
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
		gadgets = { 308004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_308006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 308004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_308007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 308004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_308008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308006(context, evt)
	if 308004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308006(context, evt)
	-- 创建id为308005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 308003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308007(context, evt)
	if 308004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 308001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308008(context, evt)
	if 308004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 308002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end