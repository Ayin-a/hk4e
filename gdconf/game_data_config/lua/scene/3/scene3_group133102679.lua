-- 基础信息
local base_info = {
	group_id = 133102679
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 679006, monster_id = 20011401, pos = { x = 1779.952, y = 223.860, z = 685.070 }, rot = { x = 0.000, y = 148.704, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 679007, monster_id = 20011401, pos = { x = 1779.610, y = 224.222, z = 682.354 }, rot = { x = 0.000, y = 40.347, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 679008, monster_id = 20011401, pos = { x = 1782.203, y = 223.985, z = 683.194 }, rot = { x = 0.000, y = 304.094, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 679001, gadget_id = 70220008, pos = { x = 1779.858, y = 221.804, z = 685.105 }, rot = { x = 0.000, y = 68.663, z = 0.000 }, level = 18, isOneoff = true, area_id = 5 },
	{ config_id = 679002, gadget_id = 70220008, pos = { x = 1782.149, y = 221.717, z = 683.217 }, rot = { x = 0.000, y = 185.545, z = 0.000 }, level = 18, isOneoff = true, area_id = 5 },
	{ config_id = 679003, gadget_id = 70220008, pos = { x = 1779.536, y = 222.317, z = 682.394 }, rot = { x = 4.253, y = 301.566, z = 357.617 }, level = 18, isOneoff = true, area_id = 5 },
	{ config_id = 679004, gadget_id = 70211111, pos = { x = 1780.660, y = 222.201, z = 683.569 }, rot = { x = 0.000, y = 32.799, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1679005, name = "ANY_GADGET_DIE_679005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_679005", action = "action_EVENT_ANY_GADGET_DIE_679005" },
	{ config_id = 1679009, name = "ANY_GADGET_DIE_679009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_679009", action = "action_EVENT_ANY_GADGET_DIE_679009" },
	{ config_id = 1679010, name = "ANY_GADGET_DIE_679010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_679010", action = "action_EVENT_ANY_GADGET_DIE_679010" },
	{ config_id = 1679011, name = "VARIABLE_CHANGE_679011", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_679011", action = "action_EVENT_VARIABLE_CHANGE_679011" },
	{ config_id = 1679012, name = "ANY_MONSTER_DIE_679012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_679012", trigger_count = 3 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 679001, 679002, 679003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_679005", "ANY_GADGET_DIE_679009", "ANY_GADGET_DIE_679010", "VARIABLE_CHANGE_679011", "ANY_MONSTER_DIE_679012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_679005(context, evt)
	if 679001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_679005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_679009(context, evt)
	if 679002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_679009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_679010(context, evt)
	if 679003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_679010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_679011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_679011(context, evt)
	-- 创建id为679004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 679004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_679012(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end