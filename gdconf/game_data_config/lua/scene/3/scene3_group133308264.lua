-- 基础信息
local base_info = {
	group_id = 133308264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 28060401, pos = { x = -2370.889, y = 54.412, z = 4437.706 }, rot = { x = 0.000, y = 299.489, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 264002, monster_id = 28060401, pos = { x = -2376.317, y = 54.448, z = 4435.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 264004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2375.188, y = 54.292, z = 4439.876 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1264004, name = "ENTER_REGION_264004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264004", action = "action_EVENT_ENTER_REGION_264004" }
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
		regions = { 264004 },
		triggers = { "ENTER_REGION_264004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 264001, 264002 },
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
function condition_EVENT_ENTER_REGION_264004(context, evt)
	if evt.param1 ~= 264004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_264004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308264, 2)
	
	return 0
end