-- 基础信息
local base_info = {
	group_id = 133303561
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- beta反馈改成晶蝶
	{ config_id = 561005, monster_id = 28050106, pos = { x = -1211.235, y = 255.769, z = 3968.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- beta反馈改成晶蝶
	{ config_id = 561006, monster_id = 28050106, pos = { x = -1205.092, y = 260.784, z = 3989.561 }, rot = { x = 0.000, y = 195.062, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 561001, gadget_id = 70330219, pos = { x = -1211.437, y = 255.735, z = 3967.660 }, rot = { x = 0.000, y = 357.069, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 561002, gadget_id = 70330219, pos = { x = -1204.195, y = 260.218, z = 3989.495 }, rot = { x = 7.796, y = 228.534, z = 347.284 }, level = 30, area_id = 23 },
	{ config_id = 561003, gadget_id = 70330219, pos = { x = -1203.293, y = 258.500, z = 3978.729 }, rot = { x = 0.000, y = 251.697, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 561004, gadget_id = 70211111, pos = { x = -1203.427, y = 259.378, z = 3978.673 }, rot = { x = 0.000, y = 262.406, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 561007, gadget_id = 70310198, pos = { x = -1219.851, y = 252.949, z = 3975.592 }, rot = { x = 352.840, y = 29.857, z = 17.009 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1561008, name = "ANY_GADGET_DIE_561008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_561008", action = "action_EVENT_ANY_GADGET_DIE_561008" },
	{ config_id = 1561009, name = "ANY_GADGET_DIE_561009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_561009", action = "action_EVENT_ANY_GADGET_DIE_561009" },
	{ config_id = 1561010, name = "ANY_GADGET_DIE_561010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_561010", action = "action_EVENT_ANY_GADGET_DIE_561010" }
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
		gadgets = { 561001, 561002, 561003, 561007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_561008", "ANY_GADGET_DIE_561009", "ANY_GADGET_DIE_561010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_561008(context, evt)
	if 561003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_561008(context, evt)
	-- 创建id为561004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_561009(context, evt)
	if 561001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_561009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 561005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_561010(context, evt)
	if 561002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_561010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 561006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end