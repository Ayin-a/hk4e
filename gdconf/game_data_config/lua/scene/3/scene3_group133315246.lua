-- 基础信息
local base_info = {
	group_id = 133315246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 26090801, pos = { x = 319.686, y = 269.603, z = 2217.930 }, rot = { x = 0.000, y = 285.895, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 246002, monster_id = 20010401, pos = { x = 320.874, y = 269.611, z = 2221.153 }, rot = { x = 0.000, y = 63.615, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 20 },
	{ config_id = 246003, monster_id = 26090801, pos = { x = 317.813, y = 269.372, z = 2222.621 }, rot = { x = 0.000, y = 177.659, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246004, gadget_id = 70330197, pos = { x = 313.167, y = 239.058, z = 2234.480 }, rot = { x = 0.000, y = 76.546, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 246009, shape = RegionShape.SPHERE, radius = 20, pos = { x = 308.099, y = 267.450, z = 2218.753 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1246009, name = "ENTER_REGION_246009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_246009", action = "action_EVENT_ENTER_REGION_246009" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 246005, gadget_id = 70330220, pos = { x = 292.185, y = 274.460, z = 2183.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 246006, gadget_id = 70330220, pos = { x = 312.237, y = 282.427, z = 2178.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 246007, gadget_id = 70330220, pos = { x = 329.710, y = 296.053, z = 2172.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 246008, gadget_id = 70330220, pos = { x = 358.866, y = 294.072, z = 2166.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		gadgets = { 246004 },
		regions = { 246009 },
		triggers = { "ENTER_REGION_246009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 246001, 246002, 246003 },
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
function condition_EVENT_ENTER_REGION_246009(context, evt)
	if evt.param1 ~= 246009 then return false end
	
	-- 判断是区域246009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 246009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_246009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315246, 2)
	
	return 0
end