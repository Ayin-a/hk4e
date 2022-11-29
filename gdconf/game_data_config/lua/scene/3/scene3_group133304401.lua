-- 基础信息
local base_info = {
	group_id = 133304401
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 401004, monster_id = 28050106, pos = { x = -1407.361, y = 191.071, z = 2257.311 }, rot = { x = 0.000, y = 68.074, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 21 },
	{ config_id = 401005, monster_id = 28050106, pos = { x = -1407.647, y = 191.404, z = 2257.323 }, rot = { x = 0.000, y = 39.771, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 401001, gadget_id = 70330219, pos = { x = -1407.789, y = 190.374, z = 2256.425 }, rot = { x = 3.575, y = 45.426, z = 16.074 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 401002, gadget_id = 70330219, pos = { x = -1418.596, y = 189.620, z = 2266.497 }, rot = { x = 12.914, y = 17.143, z = 355.092 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401006, name = "ANY_GADGET_DIE_401006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_401006", action = "action_EVENT_ANY_GADGET_DIE_401006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 401003, gadget_id = 70330219, pos = { x = -1399.346, y = 196.801, z = 2245.487 }, rot = { x = 10.868, y = 25.686, z = 12.476 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
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
		gadgets = { 401001, 401002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_401006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 401004, 401005 },
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
function condition_EVENT_ANY_GADGET_DIE_401006(context, evt)
	if 401001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_401006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304401, 2)
	
	return 0
end