-- 基础信息
local base_info = {
	group_id = 133106581
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581003, monster_id = 20011001, pos = { x = -750.837, y = 167.574, z = 1972.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 581004, monster_id = 20011101, pos = { x = -744.878, y = 165.763, z = 1980.537 }, rot = { x = 0.000, y = 214.857, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 581005, monster_id = 20011101, pos = { x = -755.991, y = 165.556, z = 1980.707 }, rot = { x = 0.000, y = 152.449, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 581006, monster_id = 20011301, pos = { x = -750.439, y = 165.661, z = 1981.916 }, rot = { x = 0.000, y = 176.218, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 581001, gadget_id = 70220013, pos = { x = -750.945, y = 167.564, z = 1972.597 }, rot = { x = 6.969, y = 0.079, z = 1.304 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 581002, gadget_id = 70220026, pos = { x = -750.907, y = 167.505, z = 1972.617 }, rot = { x = 6.969, y = 0.079, z = 1.304 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 581007, gadget_id = 70211001, pos = { x = -750.913, y = 167.549, z = 1972.731 }, rot = { x = 6.969, y = 0.079, z = 1.304 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 581012, gadget_id = 70310001, pos = { x = -749.013, y = 167.531, z = 1973.248 }, rot = { x = 9.650, y = 0.265, z = 3.135 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 581013, gadget_id = 70310001, pos = { x = -752.807, y = 167.291, z = 1973.379 }, rot = { x = 1.634, y = 0.096, z = 6.744 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1581008, name = "ANY_GADGET_DIE_581008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581008", action = "action_EVENT_ANY_GADGET_DIE_581008" },
	{ config_id = 1581009, name = "ANY_GADGET_DIE_581009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581009", action = "action_EVENT_ANY_GADGET_DIE_581009" },
	{ config_id = 1581010, name = "ANY_MONSTER_DIE_581010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_581010", action = "action_EVENT_ANY_MONSTER_DIE_581010" },
	{ config_id = 1581011, name = "ANY_MONSTER_DIE_581011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_581011", action = "action_EVENT_ANY_MONSTER_DIE_581011" }
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
		gadgets = { 581001, 581012, 581013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_581008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 581002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_581009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 581003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_581010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 581004, 581005, 581006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_581011" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 581007 },
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
function condition_EVENT_ANY_GADGET_DIE_581008(context, evt)
	if 581001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_581008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106581, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_581009(context, evt)
	if 581002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_581009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106581, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_581010(context, evt)
	--判断死亡怪物的configid是否为 581003
	if evt.param1 ~= 581003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_581010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106581, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_581011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106581) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_581011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106581, 5)
	
	return 0
end