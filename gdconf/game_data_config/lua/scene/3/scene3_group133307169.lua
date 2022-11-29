-- 基础信息
local base_info = {
	group_id = 133307169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 20011501, pos = { x = -2196.225, y = 170.258, z = 5949.440 }, rot = { x = 0.000, y = 51.463, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 27 },
	{ config_id = 169002, monster_id = 20011401, pos = { x = -2197.939, y = 170.005, z = 5944.945 }, rot = { x = 0.000, y = 51.466, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 169003, monster_id = 20011401, pos = { x = -2201.243, y = 170.486, z = 5950.328 }, rot = { x = 0.000, y = 51.752, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 169004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2197.980, y = 170.187, z = 5947.473 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1169004, name = "ENTER_REGION_169004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169004", action = "action_EVENT_ENTER_REGION_169004" }
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
		regions = { 169004 },
		triggers = { "ENTER_REGION_169004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 169001, 169002, 169003 },
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
function condition_EVENT_ENTER_REGION_169004(context, evt)
	if evt.param1 ~= 169004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307169, 2)
	
	return 0
end