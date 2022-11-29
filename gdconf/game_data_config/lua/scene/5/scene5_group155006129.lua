-- 基础信息
local base_info = {
	group_id = 155006129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 22040101, pos = { x = 223.074, y = 214.330, z = -215.498 }, rot = { x = 0.000, y = 48.772, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 129002, monster_id = 22040101, pos = { x = 223.302, y = 215.076, z = -220.857 }, rot = { x = 0.000, y = 34.337, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 129003, monster_id = 22040101, pos = { x = 219.655, y = 214.828, z = -212.832 }, rot = { x = 0.000, y = 17.238, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 129004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 222.076, y = 213.565, z = -211.362 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "ENTER_REGION_129004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129004", action = "action_EVENT_ENTER_REGION_129004" },
	{ config_id = 1129005, name = "ANY_MONSTER_DIE_129005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129005", action = "", trigger_count = 0 }
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
		regions = { 129004 },
		triggers = { "ENTER_REGION_129004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 129001, 129002, 129003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_129005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_129004(context, evt)
	if evt.param1 ~= 129004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006129, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end