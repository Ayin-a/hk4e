-- 基础信息
local base_info = {
	group_id = 133309158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158001, monster_id = 28060401, pos = { x = -2429.540, y = -6.381, z = 5851.131 }, rot = { x = 0.000, y = 131.037, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 158002, monster_id = 28060401, pos = { x = -2424.005, y = -6.607, z = 5847.438 }, rot = { x = 0.000, y = 305.413, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 158004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2423.987, y = -7.128, z = 5849.515 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1158004, name = "ENTER_REGION_158004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158004", action = "action_EVENT_ENTER_REGION_158004" }
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
		regions = { 158004 },
		triggers = { "ENTER_REGION_158004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 158001, 158002 },
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
function condition_EVENT_ENTER_REGION_158004(context, evt)
	if evt.param1 ~= 158004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_158004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309158, 2)
	
	return 0
end