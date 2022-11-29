-- 基础信息
local base_info = {
	group_id = 133310170
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170001, monster_id = 26090201, pos = { x = -2627.079, y = 262.157, z = 4215.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 170002, monster_id = 26090201, pos = { x = -2622.840, y = 260.740, z = 4217.954 }, rot = { x = 0.000, y = 301.568, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 170003, monster_id = 26090201, pos = { x = -2628.455, y = 261.018, z = 4217.816 }, rot = { x = 0.000, y = 46.501, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 170004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2625.721, y = 261.164, z = 4217.349 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1170004, name = "ENTER_REGION_170004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_170004", action = "action_EVENT_ENTER_REGION_170004" }
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
		regions = { 170004 },
		triggers = { "ENTER_REGION_170004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 170001, 170002, 170003 },
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
function condition_EVENT_ENTER_REGION_170004(context, evt)
	if evt.param1 ~= 170004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_170004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310170, 2)
	
	return 0
end