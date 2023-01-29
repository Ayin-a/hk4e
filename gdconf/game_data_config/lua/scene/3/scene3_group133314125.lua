-- 基础信息
local base_info = {
	group_id = 133314125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 26090901, pos = { x = -845.294, y = -64.440, z = 5061.565 }, rot = { x = 0.000, y = 300.771, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 125003, monster_id = 26090901, pos = { x = -841.589, y = -64.295, z = 5057.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 125004, monster_id = 26090901, pos = { x = -837.632, y = -64.445, z = 5065.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 125002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -843.012, y = -64.472, z = 5060.760 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1125002, name = "ENTER_REGION_125002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_125002", action = "action_EVENT_ENTER_REGION_125002" }
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
		monsters = { 125001 },
		gadgets = { },
		regions = { 125002 },
		triggers = { "ENTER_REGION_125002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 125003, 125004 },
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
function condition_EVENT_ENTER_REGION_125002(context, evt)
	if evt.param1 ~= 125002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_125002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314125, 2)
	
	return 0
end