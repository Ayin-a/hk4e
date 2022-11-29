-- 基础信息
local base_info = {
	group_id = 133301305
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305001, monster_id = 26120201, pos = { x = -289.490, y = 203.631, z = 3298.466 }, rot = { x = 0.000, y = 321.898, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 22 },
	{ config_id = 305003, monster_id = 26090501, pos = { x = -301.553, y = 219.255, z = 3309.428 }, rot = { x = 0.000, y = 292.562, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 305005, monster_id = 26090501, pos = { x = -306.731, y = 217.614, z = 3307.663 }, rot = { x = 0.000, y = 346.638, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 305006, monster_id = 26090501, pos = { x = -290.836, y = 222.444, z = 3308.891 }, rot = { x = 0.000, y = 346.638, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 }
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
	{ config_id = 1305004, name = "GROUP_LOAD_305004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_305004", action = "action_EVENT_GROUP_LOAD_305004", trigger_count = 0 }
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
		monsters = { 305003, 305005, 305006 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_305004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 305001 },
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
function condition_EVENT_GROUP_LOAD_305004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_305004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301305, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"