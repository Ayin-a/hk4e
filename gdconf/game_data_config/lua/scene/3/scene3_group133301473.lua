-- 基础信息
local base_info = {
	group_id = 133301473
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
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
	{ config_id = 1473004, name = "GROUP_LOAD_473004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_473004", action = "action_EVENT_GROUP_LOAD_473004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 473001, monster_id = 26120101, pos = { x = -1068.787, y = 222.167, z = 2855.802 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
		{ config_id = 473002, monster_id = 26090201, pos = { x = -1066.548, y = 223.044, z = 2870.385 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
		{ config_id = 473003, monster_id = 26090201, pos = { x = -1053.961, y = 224.736, z = 2864.095 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
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
	end_suite = 2,
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
		triggers = { "GROUP_LOAD_473004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GROUP_LOAD_473004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_473004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301473, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end