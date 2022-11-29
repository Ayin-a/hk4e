-- 基础信息
local base_info = {
	group_id = 133105134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232, monster_id = 22010101, pos = { x = 1029.830, y = 209.342, z = 24.153 }, rot = { x = 3.102, y = 341.014, z = 357.646 }, level = 19, drop_tag = "深渊法师", pose_id = 9013, area_id = 9 },
	{ config_id = 234, monster_id = 20011201, pos = { x = 1026.292, y = 209.817, z = 25.211 }, rot = { x = 3.255, y = 344.898, z = 357.862 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 235, monster_id = 20011201, pos = { x = 1031.974, y = 208.959, z = 27.222 }, rot = { x = 3.255, y = 344.898, z = 357.862 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 236, monster_id = 20011201, pos = { x = 1033.139, y = 209.261, z = 22.605 }, rot = { x = 2.377, y = 70.641, z = 3.084 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 237, monster_id = 20011201, pos = { x = 1027.754, y = 210.045, z = 20.761 }, rot = { x = 357.350, y = 245.383, z = 357.147 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330, gadget_id = 70300107, pos = { x = 1032.247, y = 207.711, z = 22.603 }, rot = { x = 3.718, y = 35.549, z = 1.158 }, level = 25, area_id = 9 },
	{ config_id = 331, gadget_id = 70300107, pos = { x = 1028.481, y = 208.274, z = 21.303 }, rot = { x = 358.442, y = 264.667, z = 356.432 }, level = 25, area_id = 9 },
	{ config_id = 332, gadget_id = 70300107, pos = { x = 1031.230, y = 207.450, z = 26.332 }, rot = { x = 1.289, y = 307.537, z = 356.326 }, level = 25, area_id = 9 },
	{ config_id = 333, gadget_id = 70300085, pos = { x = 1029.791, y = 207.686, z = 23.874 }, rot = { x = 10.789, y = 69.105, z = 3.432 }, level = 25, area_id = 9 },
	{ config_id = 334, gadget_id = 70300107, pos = { x = 1026.967, y = 208.071, z = 24.477 }, rot = { x = 356.880, y = 235.023, z = 357.669 }, level = 25, area_id = 9 },
	{ config_id = 335, gadget_id = 70211111, pos = { x = 1029.780, y = 208.145, z = 23.968 }, rot = { x = 4.793, y = 344.732, z = 349.809 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000170, name = "GADGET_STATE_CHANGE_170", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170", action = "action_EVENT_GADGET_STATE_CHANGE_170" },
	{ config_id = 1000171, name = "GADGET_STATE_CHANGE_171", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171", action = "action_EVENT_GADGET_STATE_CHANGE_171" },
	{ config_id = 1000172, name = "GADGET_STATE_CHANGE_172", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172", action = "action_EVENT_GADGET_STATE_CHANGE_172" },
	{ config_id = 1000173, name = "GADGET_STATE_CHANGE_173", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173", action = "action_EVENT_GADGET_STATE_CHANGE_173" },
	{ config_id = 1000174, name = "ANY_MONSTER_DIE_174", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_174", trigger_count = 0 },
	{ config_id = 1000175, name = "ANY_MONSTER_DIE_175", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175", action = "action_EVENT_ANY_MONSTER_DIE_175" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = false }
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
		gadgets = { 330, 331, 332, 333, 334 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170", "GADGET_STATE_CHANGE_171", "GADGET_STATE_CHANGE_172", "GADGET_STATE_CHANGE_173", "ANY_MONSTER_DIE_174", "ANY_MONSTER_DIE_175" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170(context, evt)
	if 330 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171(context, evt)
	if 331 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	if 332 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 235, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_173(context, evt)
	if 334 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 234, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num", c_num) then
	  return -1
	end
	
	if c_num == 4 then
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 232, delay_time = 0 }) then
	  return -1
	end
	
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175(context, evt)
	if 232 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175(context, evt)
	-- 创建id为335的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 335 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end