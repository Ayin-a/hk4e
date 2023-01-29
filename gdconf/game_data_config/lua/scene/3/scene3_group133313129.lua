-- 基础信息
local base_info = {
	group_id = 133313129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 28060401, pos = { x = -335.120, y = -58.747, z = 5452.481 }, rot = { x = 0.000, y = 30.387, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 32 },
	{ config_id = 129002, monster_id = 20011401, pos = { x = -341.124, y = -58.100, z = 5452.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 129003, monster_id = 20011401, pos = { x = -339.855, y = -57.542, z = 5457.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 129004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -338.343, y = -58.403, z = 5455.055 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "ENTER_REGION_129004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129004", action = "action_EVENT_ENTER_REGION_129004" }
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
		monsters = { 129001 },
		gadgets = { },
		regions = { 129004 },
		triggers = { "ENTER_REGION_129004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 129002, 129003 },
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
	    ScriptLib.AddExtraGroupSuite(context, 133313129, 2)
	
	return 0
end