-- 基础信息
local base_info = {
	group_id = 133212213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 25080201, pos = { x = -3590.406, y = 200.350, z = -2421.186 }, rot = { x = 0.000, y = 133.889, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 213002, monster_id = 25080201, pos = { x = -3586.047, y = 200.673, z = -2420.381 }, rot = { x = 0.000, y = 174.576, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 213003, monster_id = 25080201, pos = { x = -3592.086, y = 200.423, z = -2424.712 }, rot = { x = 0.000, y = 85.668, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 213004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3585.552, y = 200.249, z = -2427.152 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1213004, name = "ENTER_REGION_213004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213004", action = "action_EVENT_ENTER_REGION_213004" }
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
		regions = { 213004 },
		triggers = { "ENTER_REGION_213004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 213001, 213002, 213003 },
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
function condition_EVENT_ENTER_REGION_213004(context, evt)
	if evt.param1 ~= 213004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_213004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212213, 2)
	
	return 0
end