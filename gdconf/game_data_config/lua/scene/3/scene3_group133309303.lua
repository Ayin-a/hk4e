-- 基础信息
local base_info = {
	group_id = 133309303
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303002, monster_id = 28060401, pos = { x = -2047.811, y = -35.316, z = 5499.698 }, rot = { x = 0.000, y = 15.182, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 303003, monster_id = 28060401, pos = { x = -2051.754, y = -35.619, z = 5502.096 }, rot = { x = 0.000, y = 15.182, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 303004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2049.719, y = -35.083, z = 5502.825 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1303004, name = "ENTER_REGION_303004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_303004", action = "action_EVENT_ENTER_REGION_303004" }
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
		regions = { 303004 },
		triggers = { "ENTER_REGION_303004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 303002, 303003 },
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
function condition_EVENT_ENTER_REGION_303004(context, evt)
	if evt.param1 ~= 303004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_303004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309303, 2)
	
	return 0
end