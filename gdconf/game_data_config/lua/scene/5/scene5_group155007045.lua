-- 基础信息
local base_info = {
	group_id = 155007045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45002, monster_id = 20011501, pos = { x = -478.192, y = 204.752, z = 1439.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 45003, monster_id = 20011401, pos = { x = -474.465, y = 203.883, z = 1438.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 45004, monster_id = 20011401, pos = { x = -475.836, y = 204.707, z = 1441.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 45005, monster_id = 20011401, pos = { x = -478.661, y = 205.239, z = 1442.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 45001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -476.134, y = 204.322, z = 1438.919 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1045001, name = "ENTER_REGION_45001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45001", action = "action_EVENT_ENTER_REGION_45001" }
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
	end_suite = 2,
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
		regions = { 45001 },
		triggers = { "ENTER_REGION_45001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 45002, 45003, 45004, 45005 },
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
function condition_EVENT_ENTER_REGION_45001(context, evt)
	if evt.param1 ~= 45001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155007045, 2)
	
	return 0
end