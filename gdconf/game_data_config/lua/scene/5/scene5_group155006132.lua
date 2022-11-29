-- 基础信息
local base_info = {
	group_id = 155006132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132001, monster_id = 22040201, pos = { x = 345.842, y = 171.140, z = -270.946 }, rot = { x = 0.000, y = 96.007, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 132002, monster_id = 22040201, pos = { x = 355.658, y = 173.707, z = -276.734 }, rot = { x = 0.000, y = 277.337, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 },
	{ config_id = 132003, monster_id = 22040201, pos = { x = 347.101, y = 172.219, z = -281.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "兽境幼兽", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 132004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 349.043, y = 172.271, z = -275.541 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1132004, name = "ENTER_REGION_132004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_132004", action = "action_EVENT_ENTER_REGION_132004" }
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
		regions = { 132004 },
		triggers = { "ENTER_REGION_132004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 132001, 132002, 132003 },
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
function condition_EVENT_ENTER_REGION_132004(context, evt)
	if evt.param1 ~= 132004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_132004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006132, 2)
	
	return 0
end