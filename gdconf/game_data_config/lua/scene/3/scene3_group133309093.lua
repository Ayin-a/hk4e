-- 基础信息
local base_info = {
	group_id = 133309093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 24040201, pos = { x = -2664.558, y = -70.646, z = 5814.058 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 93002, monster_id = 24040301, pos = { x = -2668.945, y = -70.675, z = 5809.937 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1093003, name = "VARIABLE_CHANGE_93003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_93003", action = "action_EVENT_VARIABLE_CHANGE_93003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "created", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 93004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2668.538, y = -69.548, z = 5813.481 }, area_id = 27, vision_type_list = { 33090017 } }
	},
	triggers = {
		{ config_id = 1093004, name = "ENTER_REGION_93004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93004", action = "action_EVENT_ENTER_REGION_93004", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_93003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 93001, 93002 },
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
function condition_EVENT_VARIABLE_CHANGE_93003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"created"为1
	if ScriptLib.GetGroupVariableValue(context, "created") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_93003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309093, 2)
	
	return 0
end