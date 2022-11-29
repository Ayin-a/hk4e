-- 基础信息
local base_info = {
	group_id = 133308362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 28020604, pos = { x = -1790.802, y = 368.659, z = 4216.615 }, rot = { x = 0.000, y = 244.341, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 362002, monster_id = 26090901, pos = { x = -1790.563, y = 368.578, z = 4216.655 }, rot = { x = 0.000, y = 244.341, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 362003, monster_id = 28050106, pos = { x = -1790.472, y = 368.495, z = 4216.508 }, rot = { x = 0.000, y = 244.341, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 362005, monster_id = 28060401, pos = { x = -1791.196, y = 369.437, z = 4216.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362006, gadget_id = 70330266, pos = { x = -1790.600, y = 368.572, z = 4216.633 }, rot = { x = 25.101, y = 153.361, z = 10.368 }, level = 32, area_id = 26 },
	{ config_id = 362007, gadget_id = 70210101, pos = { x = -1790.462, y = 368.558, z = 4216.713 }, rot = { x = 0.000, y = 244.341, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1362008, name = "ANY_GADGET_DIE_362008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362008", action = "action_EVENT_ANY_GADGET_DIE_362008" },
	-- 刷面具鼬
	{ config_id = 1362009, name = "ANY_GADGET_DIE_362009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362009", action = "action_EVENT_ANY_GADGET_DIE_362009" },
	-- 刷岩蕈兽
	{ config_id = 1362010, name = "ANY_GADGET_DIE_362010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362010", action = "action_EVENT_ANY_GADGET_DIE_362010" },
	-- 刷草晶蝶
	{ config_id = 1362011, name = "ANY_GADGET_DIE_362011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362011", action = "action_EVENT_ANY_GADGET_DIE_362011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 362004, monster_id = 28050106, pos = { x = -1790.796, y = 368.744, z = 4216.884 }, rot = { x = 0.000, y = 244.341, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
	}
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
		gadgets = { 362006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362008(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362008(context, evt)
	-- 创建id为362007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362009(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362010(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362011(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end