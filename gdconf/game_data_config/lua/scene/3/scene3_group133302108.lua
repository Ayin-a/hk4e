-- 基础信息
local base_info = {
	group_id = 133302108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108029, monster_id = 26090101, pos = { x = -251.584, y = 103.102, z = 2218.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 108030, monster_id = 26090101, pos = { x = -254.272, y = 102.980, z = 2222.123 }, rot = { x = 0.000, y = 86.772, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 108032, monster_id = 26090101, pos = { x = -252.862, y = 102.980, z = 2219.419 }, rot = { x = 0.000, y = 99.990, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108001, gadget_id = 70310198, pos = { x = -281.057, y = 104.718, z = 2207.267 }, rot = { x = 359.718, y = 321.398, z = 2.515 }, level = 27, area_id = 24 },
	{ config_id = 108027, gadget_id = 70330218, pos = { x = -257.401, y = 102.978, z = 2218.067 }, rot = { x = 0.000, y = 258.893, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 108002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -251.988, y = 102.980, z = 2219.847 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1108002, name = "ENTER_REGION_108002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108002", action = "action_EVENT_ENTER_REGION_108002" }
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
	end_suite = 1,
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
		gadgets = { 108001, 108027 },
		regions = { 108002 },
		triggers = { "ENTER_REGION_108002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 108029, 108030, 108032 },
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
function condition_EVENT_ENTER_REGION_108002(context, evt)
	if evt.param1 ~= 108002 then return false end
	
	-- 判断是区域108002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 108002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302108, 2)
	
	return 0
end