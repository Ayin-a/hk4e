-- 基础信息
local base_info = {
	group_id = 133213206
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 206001, monster_id = 20011201, pos = { x = -3194.320, y = 201.851, z = -3417.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 },
	{ config_id = 206002, monster_id = 20011201, pos = { x = -3192.832, y = 201.851, z = -3418.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 },
	{ config_id = 206003, monster_id = 20011201, pos = { x = -3195.802, y = 201.851, z = -3418.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 206004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3194.330, y = 201.851, z = -3418.206 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1206004, name = "ENTER_REGION_206004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206004", action = "action_EVENT_ENTER_REGION_206004" }
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
		regions = { 206004 },
		triggers = { "ENTER_REGION_206004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 206001, 206002, 206003 },
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
function condition_EVENT_ENTER_REGION_206004(context, evt)
	if evt.param1 ~= 206004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213206, 2)
	
	return 0
end