-- 基础信息
local base_info = {
	group_id = 133106214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214003, monster_id = 20011401, pos = { x = -375.902, y = 221.273, z = 831.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 214007, monster_id = 20011401, pos = { x = -371.711, y = 217.950, z = 836.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 214008, monster_id = 20011401, pos = { x = -372.032, y = 223.580, z = 824.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 214009, monster_id = 20011501, pos = { x = -375.544, y = 225.690, z = 816.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 8 },
	{ config_id = 214010, monster_id = 20011401, pos = { x = -371.589, y = 226.509, z = 813.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214001, gadget_id = 70220008, pos = { x = -375.873, y = 219.637, z = 831.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 8 },
	{ config_id = 214002, gadget_id = 70220008, pos = { x = -371.921, y = 221.917, z = 824.157 }, rot = { x = 15.681, y = 0.496, z = 3.600 }, level = 32, isOneoff = true, area_id = 8 },
	{ config_id = 214004, gadget_id = 70220008, pos = { x = -371.551, y = 224.931, z = 812.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 8 },
	{ config_id = 214005, gadget_id = 70220008, pos = { x = -375.624, y = 223.997, z = 816.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 8 },
	{ config_id = 214006, gadget_id = 70220008, pos = { x = -371.650, y = 218.004, z = 836.176 }, rot = { x = 14.665, y = 0.162, z = 1.261 }, level = 32, isOneoff = true, area_id = 8 },
	{ config_id = 214011, gadget_id = 70211121, pos = { x = -375.884, y = 225.134, z = 812.655 }, rot = { x = 359.934, y = 71.552, z = 7.950 }, level = 26, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214012, name = "ANY_GADGET_DIE_214012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214012", action = "action_EVENT_ANY_GADGET_DIE_214012" },
	{ config_id = 1214013, name = "ANY_GADGET_DIE_214013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214013", action = "action_EVENT_ANY_GADGET_DIE_214013" },
	{ config_id = 1214014, name = "ANY_GADGET_DIE_214014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214014", action = "action_EVENT_ANY_GADGET_DIE_214014" },
	{ config_id = 1214015, name = "ANY_GADGET_DIE_214015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214015", action = "action_EVENT_ANY_GADGET_DIE_214015" },
	{ config_id = 1214016, name = "ANY_GADGET_DIE_214016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214016", action = "action_EVENT_ANY_GADGET_DIE_214016" },
	{ config_id = 1214017, name = "ANY_GADGET_DIE_214017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214017", action = "action_EVENT_ANY_GADGET_DIE_214017" }
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
		gadgets = { 214001, 214002, 214004, 214005, 214006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_214012", "ANY_GADGET_DIE_214013", "ANY_GADGET_DIE_214014", "ANY_GADGET_DIE_214015", "ANY_GADGET_DIE_214016", "ANY_GADGET_DIE_214017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214012(context, evt)
	if 214004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214013(context, evt)
	if 214005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214014(context, evt)
	if 214002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214015(context, evt)
	if 214001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214016(context, evt)
	if 214006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214017(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106214}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214017(context, evt)
	-- 创建id为214011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 214011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end