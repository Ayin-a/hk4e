-- 基础信息
local base_info = {
	group_id = 133223490
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490001, monster_id = 26010301, pos = { x = -6784.397, y = 200.468, z = -2666.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "骗骗花", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 490004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6785.290, y = 201.711, z = -2666.683 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1490004, name = "ENTER_REGION_490004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_490004", action = "action_EVENT_ENTER_REGION_490004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 490002, monster_id = 26010301, pos = { x = -6784.137, y = 200.686, z = -2663.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "骗骗花", area_id = 18 },
		{ config_id = 490003, monster_id = 20011201, pos = { x = -6787.107, y = 200.686, z = -2662.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 18 }
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
		gadgets = { },
		regions = { 490004 },
		triggers = { "ENTER_REGION_490004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 490001 },
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
function condition_EVENT_ENTER_REGION_490004(context, evt)
	if evt.param1 ~= 490004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_490004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223490, 2)
	
	return 0
end