-- 基础信息
local base_info = {
	group_id = 133314032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 26090901, pos = { x = -866.476, y = -137.921, z = 4893.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 32002, monster_id = 26090901, pos = { x = -871.134, y = -138.397, z = 4900.801 }, rot = { x = 0.000, y = 127.169, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 32003, monster_id = 26090901, pos = { x = -864.361, y = -138.778, z = 4899.837 }, rot = { x = 0.000, y = 254.649, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 32004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -868.995, y = -138.314, z = 4896.262 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1032004, name = "ENTER_REGION_32004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32004", action = "action_EVENT_ENTER_REGION_32004" }
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
		regions = { 32004 },
		triggers = { "ENTER_REGION_32004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 32001, 32002, 32003 },
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
function condition_EVENT_ENTER_REGION_32004(context, evt)
	if evt.param1 ~= 32004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314032, 2)
	
	return 0
end