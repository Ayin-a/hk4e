-- 基础信息
local base_info = {
	group_id = 133103305
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305001, monster_id = 20010601, pos = { x = 769.742, y = 362.790, z = 1898.377 }, rot = { x = 357.231, y = 313.546, z = 341.254 }, level = 24, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 305002, monster_id = 28030101, pos = { x = 769.828, y = 362.850, z = 1898.616 }, rot = { x = 357.231, y = 313.546, z = 341.254 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 305003, monster_id = 28020102, pos = { x = 769.796, y = 362.881, z = 1898.593 }, rot = { x = 357.231, y = 313.546, z = 341.254 }, level = 24, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 305004, gadget_id = 70360045, pos = { x = 769.623, y = 362.397, z = 1898.143 }, rot = { x = 357.231, y = 313.546, z = 341.254 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 305005, gadget_id = 70211101, pos = { x = 769.712, y = 362.847, z = 1898.447 }, rot = { x = 357.231, y = 313.546, z = 341.254 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305006, name = "GADGET_STATE_CHANGE_305006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305006", action = "action_EVENT_GADGET_STATE_CHANGE_305006", trigger_count = 0 },
	{ config_id = 1305007, name = "GADGET_STATE_CHANGE_305007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305007", action = "action_EVENT_GADGET_STATE_CHANGE_305007" },
	{ config_id = 1305008, name = "GADGET_STATE_CHANGE_305008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305008", action = "action_EVENT_GADGET_STATE_CHANGE_305008" }
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
		gadgets = { 305004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 305004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 305004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305006(context, evt)
	if 305004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305006(context, evt)
	-- 创建id为305005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 305005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 305003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	if 305004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 305001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305008(context, evt)
	if 305004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 305002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end