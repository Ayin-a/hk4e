-- 基础信息
local base_info = {
	group_id = 133301468
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
	{ config_id = 1468002, name = "GROUP_LOAD_468002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_468002", action = "action_EVENT_GROUP_LOAD_468002", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 468001, monster_id = 28020313, pos = { x = -886.819, y = 205.438, z = 2619.799 }, rot = { x = 0.000, y = 52.721, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 468003, monster_id = 28020314, pos = { x = -874.934, y = 209.088, z = 2604.353 }, rot = { x = 0.000, y = 3.412, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 468004, monster_id = 28020314, pos = { x = -871.100, y = 207.793, z = 2611.949 }, rot = { x = 0.000, y = 338.045, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 468005, monster_id = 28010304, pos = { x = -894.352, y = 203.598, z = 2645.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 468006, monster_id = 28010304, pos = { x = -897.945, y = 204.460, z = 2641.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 468007, monster_id = 28010208, pos = { x = -878.721, y = 200.816, z = 2646.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 }
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
		triggers = { "GROUP_LOAD_468002" },
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
function condition_EVENT_GROUP_LOAD_468002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_468002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301468, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end