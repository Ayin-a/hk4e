-- 基础信息
local base_info = {
	group_id = 133315295
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295001, monster_id = 26090901, pos = { x = 108.670, y = 132.026, z = 3046.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 295002, monster_id = 26090901, pos = { x = 114.253, y = 130.888, z = 3044.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 295004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 106.851, y = 135.035, z = 3045.503 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1295004, name = "ENTER_REGION_295004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295004", action = "action_EVENT_ENTER_REGION_295004" }
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
		regions = { 295004 },
		triggers = { "ENTER_REGION_295004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 295001, 295002 },
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
function condition_EVENT_ENTER_REGION_295004(context, evt)
	if evt.param1 ~= 295004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315295, 2)
	
	return 0
end