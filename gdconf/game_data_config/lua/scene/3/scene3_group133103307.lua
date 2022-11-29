-- 基础信息
local base_info = {
	group_id = 133103307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 20011501, pos = { x = 743.398, y = 389.651, z = 1883.312 }, rot = { x = 6.762, y = 105.412, z = 5.192 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 307002, monster_id = 28050102, pos = { x = 743.463, y = 389.782, z = 1883.097 }, rot = { x = 6.762, y = 105.412, z = 5.192 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 307003, monster_id = 28030401, pos = { x = 743.486, y = 389.794, z = 1883.140 }, rot = { x = 6.762, y = 105.412, z = 5.192 }, level = 24, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307004, gadget_id = 70360045, pos = { x = 743.275, y = 389.208, z = 1883.420 }, rot = { x = 6.762, y = 105.412, z = 5.192 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 307005, gadget_id = 70211101, pos = { x = 743.472, y = 389.704, z = 1883.286 }, rot = { x = 6.762, y = 105.412, z = 5.192 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307006, name = "GADGET_STATE_CHANGE_307006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307006", action = "action_EVENT_GADGET_STATE_CHANGE_307006", trigger_count = 0 },
	{ config_id = 1307007, name = "GADGET_STATE_CHANGE_307007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307007", action = "action_EVENT_GADGET_STATE_CHANGE_307007" },
	{ config_id = 1307008, name = "GADGET_STATE_CHANGE_307008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307008", action = "action_EVENT_GADGET_STATE_CHANGE_307008" }
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
		gadgets = { 307004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 307004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 307004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307006(context, evt)
	if 307004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307006(context, evt)
	-- 创建id为307005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 307005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 307003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307007(context, evt)
	if 307004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 307001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307008(context, evt)
	if 307004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 307002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end