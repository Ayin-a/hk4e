-- 基础信息
local base_info = {
	group_id = 133103665
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 665001, monster_id = 20010201, pos = { x = 121.042, y = 427.387, z = 2031.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", pose_id = 101, area_id = 20 },
	{ config_id = 665002, monster_id = 20010101, pos = { x = 122.530, y = 426.506, z = 2030.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 201, area_id = 20 },
	{ config_id = 665003, monster_id = 20010101, pos = { x = 119.559, y = 427.905, z = 2030.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", pose_id = 201, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 665004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 120.428, y = 426.250, z = 2030.051 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1665004, name = "ENTER_REGION_665004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_665004", action = "action_EVENT_ENTER_REGION_665004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 665005, gadget_id = 70500000, pos = { x = 125.893, y = 425.510, z = 2034.377 }, rot = { x = 0.000, y = 148.336, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 }
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
		regions = { 665004 },
		triggers = { "ENTER_REGION_665004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 665001, 665002, 665003 },
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
function condition_EVENT_ENTER_REGION_665004(context, evt)
	if evt.param1 ~= 665004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_665004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103665, 2)
	
	return 0
end