-- 基础信息
local base_info = {
	group_id = 133307186
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 186001, monster_id = 28020604, pos = { x = -1498.391, y = 5.198, z = 5498.832 }, rot = { x = 0.000, y = 74.979, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 32 },
	{ config_id = 186002, monster_id = 26090801, pos = { x = -1498.459, y = 4.622, z = 5498.599 }, rot = { x = 0.000, y = 74.979, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 186003, monster_id = 28050106, pos = { x = -1498.630, y = 5.470, z = 5498.581 }, rot = { x = 0.000, y = 74.979, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 186004, monster_id = 28050106, pos = { x = -1498.152, y = 5.502, z = 5498.710 }, rot = { x = 0.000, y = 74.979, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 186005, monster_id = 28060401, pos = { x = -1498.403, y = 4.611, z = 5498.668 }, rot = { x = 0.000, y = 74.979, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 186006, gadget_id = 70330266, pos = { x = -1498.468, y = 4.989, z = 5498.639 }, rot = { x = 12.751, y = 74.979, z = 0.001 }, level = 32, area_id = 32 },
	{ config_id = 186007, gadget_id = 70210101, pos = { x = -1498.450, y = 4.692, z = 5498.483 }, rot = { x = 12.751, y = 74.979, z = 0.001 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1186008, name = "ANY_GADGET_DIE_186008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186008", action = "action_EVENT_ANY_GADGET_DIE_186008" },
	-- 刷面具鼬
	{ config_id = 1186009, name = "ANY_GADGET_DIE_186009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186009", action = "action_EVENT_ANY_GADGET_DIE_186009" },
	-- 刷岩蕈兽
	{ config_id = 1186010, name = "ANY_GADGET_DIE_186010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186010", action = "action_EVENT_ANY_GADGET_DIE_186010" },
	-- 刷草晶蝶
	{ config_id = 1186011, name = "ANY_GADGET_DIE_186011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186011", action = "action_EVENT_ANY_GADGET_DIE_186011" },
	-- 刷蝎子
	{ config_id = 1186012, name = "ANY_GADGET_DIE_186012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186012", action = "action_EVENT_ANY_GADGET_DIE_186012" }
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
		gadgets = { 186006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 186006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_186008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 186006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_186009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 186006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_186010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 186006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_186011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 186006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_186012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186008(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186008(context, evt)
	-- 创建id为186007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 186007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186009(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 186001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186010(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 186002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186011(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 186003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 186004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186012(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 186005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end