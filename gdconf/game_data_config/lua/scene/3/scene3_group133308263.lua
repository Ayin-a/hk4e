-- 基础信息
local base_info = {
	group_id = 133308263
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 263001, monster_id = 28060401, pos = { x = -2402.416, y = 54.473, z = 4460.215 }, rot = { x = 0.000, y = 191.256, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 263002, monster_id = 28060401, pos = { x = -2394.856, y = 54.252, z = 4453.515 }, rot = { x = 0.000, y = 275.631, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 263004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2401.148, y = 54.341, z = 4454.905 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1263004, name = "ENTER_REGION_263004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_263004", action = "action_EVENT_ENTER_REGION_263004" }
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
		regions = { 263004 },
		triggers = { "ENTER_REGION_263004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 263001, 263002 },
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
function condition_EVENT_ENTER_REGION_263004(context, evt)
	if evt.param1 ~= 263004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_263004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308263, 2)
	
	return 0
end