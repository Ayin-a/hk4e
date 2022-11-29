-- 基础信息
local base_info = {
	group_id = 133213046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 22010401, pos = { x = -3163.182, y = 200.430, z = -3458.686 }, rot = { x = 0.000, y = 228.937, z = 0.000 }, level = 26, drop_tag = "深渊法师", disableWander = true, area_id = 12 },
	{ config_id = 46002, monster_id = 22010401, pos = { x = -3168.593, y = 200.557, z = -3454.872 }, rot = { x = 0.000, y = 179.662, z = 0.000 }, level = 26, drop_tag = "深渊法师", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 46005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3167.382, y = 200.692, z = -3460.681 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1046005, name = "ENTER_REGION_46005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46005", action = "action_EVENT_ENTER_REGION_46005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 46003, monster_id = 25080301, pos = { x = -3166.308, y = 199.072, z = -3452.052 }, rot = { x = 0.000, y = 192.121, z = 0.000 }, level = 28, drop_tag = "浪人武士", pose_id = 1, area_id = 12 }
	},
	gadgets = {
		{ config_id = 46004, gadget_id = 70360001, pos = { x = -3165.543, y = 200.325, z = -3459.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 12 }
	},
	triggers = {
		{ config_id = 1046006, name = "ANY_MONSTER_DIE_46006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46006", action = "action_EVENT_ANY_MONSTER_DIE_46006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 46005 },
		triggers = { "ENTER_REGION_46005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 46001, 46002 },
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
function condition_EVENT_ENTER_REGION_46005(context, evt)
	if evt.param1 ~= 46005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213046, 2)
	
	return 0
end