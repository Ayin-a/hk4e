-- 基础信息
local base_info = {
	group_id = 133301469
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
	{ config_id = 469003, gadget_id = 70220103, pos = { x = -958.113, y = 215.198, z = 2604.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 469007, gadget_id = 70220103, pos = { x = -1011.072, y = 211.978, z = 2622.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1469004, name = "GROUP_LOAD_469004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_469004", action = "action_EVENT_GROUP_LOAD_469004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 469001, monster_id = 20010201, pos = { x = -926.039, y = 203.786, z = 2612.942 }, rot = { x = 0.000, y = 60.963, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, pose_id = 201, area_id = 24 },
		{ config_id = 469002, monster_id = 20010101, pos = { x = -925.558, y = 204.368, z = 2611.352 }, rot = { x = 0.000, y = 58.499, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 24 },
		{ config_id = 469005, monster_id = 28030313, pos = { x = -931.185, y = 213.489, z = 2623.205 }, rot = { x = 0.000, y = 125.744, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 469006, monster_id = 28030313, pos = { x = -927.115, y = 210.168, z = 2628.330 }, rot = { x = 0.000, y = 125.744, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 }
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
		gadgets = { 469003, 469007 },
		regions = { },
		triggers = { "GROUP_LOAD_469004" },
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
function condition_EVENT_GROUP_LOAD_469004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_469004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301469, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"