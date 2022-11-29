-- 基础信息
local base_info = {
	group_id = 133103121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 20011401, pos = { x = 522.369, y = 172.443, z = 1109.906 }, rot = { x = 0.000, y = 152.675, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 121002, monster_id = 20011401, pos = { x = 521.247, y = 172.132, z = 1106.350 }, rot = { x = 0.000, y = 152.675, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 121003, monster_id = 20011501, pos = { x = 521.285, y = 172.119, z = 1108.323 }, rot = { x = 0.000, y = 152.675, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 121008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 522.916, y = 172.391, z = 1106.869 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1121008, name = "ENTER_REGION_121008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121008", action = "action_EVENT_ENTER_REGION_121008" }
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
		gadgets = { },
		regions = { 121008 },
		triggers = { "ENTER_REGION_121008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 121001, 121002, 121003 },
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
function condition_EVENT_ENTER_REGION_121008(context, evt)
	if evt.param1 ~= 121008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103121, 2)
	
	return 0
end