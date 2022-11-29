-- 基础信息
local base_info = {
	group_id = 133310152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 28060401, pos = { x = -2092.251, y = 151.630, z = 4786.822 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 26 },
	{ config_id = 152003, monster_id = 28060401, pos = { x = -2090.824, y = 151.253, z = 4782.896 }, rot = { x = 0.000, y = 70.855, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 26 },
	{ config_id = 152004, monster_id = 28060401, pos = { x = -2088.153, y = 152.088, z = 4793.544 }, rot = { x = 0.000, y = 122.350, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 26 }
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
	{ config_id = 1152002, name = "GROUP_LOAD_152002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152002", action = "action_EVENT_GROUP_LOAD_152002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_152002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 152001, 152003, 152004 },
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
function condition_EVENT_GROUP_LOAD_152002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310152, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"