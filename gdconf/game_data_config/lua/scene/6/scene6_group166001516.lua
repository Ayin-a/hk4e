-- 基础信息
local base_info = {
	group_id = 166001516
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516001, monster_id = 22020102, pos = { x = 267.016, y = 166.534, z = 1362.748 }, rot = { x = 0.000, y = 101.329, z = 0.000 }, level = 36, drop_tag = "深渊使徒", pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 516004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 265.860, y = 167.058, z = 1363.597 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1516004, name = "ENTER_REGION_516004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_516004", action = "action_EVENT_ENTER_REGION_516004" }
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
		regions = { 516004 },
		triggers = { "ENTER_REGION_516004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 516001 },
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
function condition_EVENT_ENTER_REGION_516004(context, evt)
	if evt.param1 ~= 516004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_516004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001516, 2)
	
	return 0
end