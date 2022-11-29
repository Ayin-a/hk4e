-- 基础信息
local base_info = {
	group_id = 133213235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 25080201, pos = { x = -3519.112, y = 199.668, z = -2930.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 235002, monster_id = 25080101, pos = { x = -3517.626, y = 199.589, z = -2933.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 235003, monster_id = 25080101, pos = { x = -3521.289, y = 199.594, z = -2933.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 235004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3520.756, y = 199.675, z = -2929.597 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1235004, name = "ENTER_REGION_235004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_235004", action = "action_EVENT_ENTER_REGION_235004" }
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
		regions = { 235004 },
		triggers = { "ENTER_REGION_235004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 235001, 235002, 235003 },
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
function condition_EVENT_ENTER_REGION_235004(context, evt)
	if evt.param1 ~= 235004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_235004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213235, 2)
	
	return 0
end