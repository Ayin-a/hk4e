-- 基础信息
local base_info = {
	group_id = 133309131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 26090901, pos = { x = -2745.734, y = 63.514, z = 5837.465 }, rot = { x = 0.000, y = 333.501, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 131002, monster_id = 26090901, pos = { x = -2747.723, y = 63.781, z = 5837.609 }, rot = { x = 0.000, y = 22.580, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 131004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2748.088, y = 66.049, z = 5849.591 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1131004, name = "ENTER_REGION_131004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_131004", action = "action_EVENT_ENTER_REGION_131004" }
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
		regions = { 131004 },
		triggers = { "ENTER_REGION_131004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131001, 131002 },
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
function condition_EVENT_ENTER_REGION_131004(context, evt)
	if evt.param1 ~= 131004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_131004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309131, 2)
	
	return 0
end