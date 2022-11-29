-- 基础信息
local base_info = {
	group_id = 133302321
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321001, monster_id = 26090501, pos = { x = -247.053, y = 166.575, z = 2258.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 321005, monster_id = 26090501, pos = { x = -247.214, y = 166.575, z = 2262.952 }, rot = { x = 0.000, y = 302.748, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 },
	{ config_id = 321007, monster_id = 26090501, pos = { x = -244.603, y = 166.575, z = 2262.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321002, gadget_id = 70330197, pos = { x = -250.471, y = 194.550, z = 2249.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 321004, gadget_id = 70330197, pos = { x = -232.919, y = 170.691, z = 2257.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 321003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -251.053, y = 166.336, z = 2266.018 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1321003, name = "ENTER_REGION_321003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321003", action = "action_EVENT_ENTER_REGION_321003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 321008, gadget_id = 70220109, pos = { x = -228.735, y = 170.882, z = 2254.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 321009, gadget_id = 70220109, pos = { x = -229.548, y = 170.920, z = 2255.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
	}
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
		gadgets = { 321002, 321004 },
		regions = { 321003 },
		triggers = { "ENTER_REGION_321003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 321001, 321005, 321007 },
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
function condition_EVENT_ENTER_REGION_321003(context, evt)
	if evt.param1 ~= 321003 then return false end
	
	-- 判断是区域321003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 321003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_321003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302321, 2)
	
	return 0
end