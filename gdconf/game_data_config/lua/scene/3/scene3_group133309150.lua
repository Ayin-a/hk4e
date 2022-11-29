-- 基础信息
local base_info = {
	group_id = 133309150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150002, monster_id = 20011401, pos = { x = -2234.834, y = -41.062, z = 6018.292 }, rot = { x = 0.000, y = 240.543, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 150003, monster_id = 20011401, pos = { x = -2243.640, y = -44.035, z = 6018.071 }, rot = { x = 0.000, y = 130.988, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 150004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2239.740, y = -43.122, z = 6018.311 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1150004, name = "ENTER_REGION_150004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_150004", action = "action_EVENT_ENTER_REGION_150004" }
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
		regions = { 150004 },
		triggers = { "ENTER_REGION_150004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150002, 150003 },
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
function condition_EVENT_ENTER_REGION_150004(context, evt)
	if evt.param1 ~= 150004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_150004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309150, 2)
	
	return 0
end