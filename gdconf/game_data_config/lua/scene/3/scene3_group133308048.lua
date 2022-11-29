-- 基础信息
local base_info = {
	group_id = 133308048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 26090601, pos = { x = -1749.539, y = 277.093, z = 4010.641 }, rot = { x = 0.000, y = 179.511, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 48002, monster_id = 26090601, pos = { x = -1751.529, y = 277.008, z = 4007.414 }, rot = { x = 0.000, y = 116.790, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 48004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1747.712, y = 276.484, z = 4008.738 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1048004, name = "ENTER_REGION_48004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48004", action = "action_EVENT_ENTER_REGION_48004" }
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
		regions = { 48004 },
		triggers = { "ENTER_REGION_48004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 48001, 48002 },
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
function condition_EVENT_ENTER_REGION_48004(context, evt)
	if evt.param1 ~= 48004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308048, 2)
	
	return 0
end