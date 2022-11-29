-- 基础信息
local base_info = {
	group_id = 166001538
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 538001, monster_id = 20011401, pos = { x = 340.793, y = 684.358, z = 402.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 538002, monster_id = 20011401, pos = { x = 338.788, y = 684.358, z = 409.477 }, rot = { x = 0.000, y = 101.412, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 538003, monster_id = 20011401, pos = { x = 335.818, y = 684.358, z = 401.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 538004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 337.291, y = 676.949, z = 401.636 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1538004, name = "ENTER_REGION_538004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538004", action = "action_EVENT_ENTER_REGION_538004" }
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
		regions = { 538004 },
		triggers = { "ENTER_REGION_538004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 538001, 538002, 538003 },
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
function condition_EVENT_ENTER_REGION_538004(context, evt)
	if evt.param1 ~= 538004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_538004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001538, 2)
	
	return 0
end