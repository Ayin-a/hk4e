-- 基础信息
local base_info = {
	group_id = 133308127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 26090901, pos = { x = -1834.483, y = 213.536, z = 4624.035 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 101, area_id = 26 },
	{ config_id = 127002, monster_id = 26090901, pos = { x = -1832.244, y = 212.876, z = 4638.618 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 101, area_id = 26 },
	{ config_id = 127003, monster_id = 26090901, pos = { x = -1819.658, y = 213.471, z = 4632.329 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 101, area_id = 26 },
	{ config_id = 127005, monster_id = 26090901, pos = { x = -1834.824, y = 213.532, z = 4631.773 }, rot = { x = 0.000, y = 93.918, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 127006, monster_id = 26090901, pos = { x = -1829.965, y = 213.469, z = 4635.457 }, rot = { x = 0.000, y = 193.281, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 127007, monster_id = 26090901, pos = { x = -1823.934, y = 213.512, z = 4629.457 }, rot = { x = 0.000, y = 235.844, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 127008, monster_id = 26090901, pos = { x = -1832.378, y = 213.589, z = 4620.280 }, rot = { x = 0.000, y = 340.357, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 127009, monster_id = 26090901, pos = { x = -1827.665, y = 213.569, z = 4619.472 }, rot = { x = 0.000, y = 340.338, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 }
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
	{ config_id = 1127004, name = "GROUP_LOAD_127004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_127004", action = "action_EVENT_GROUP_LOAD_127004", trigger_count = 0 }
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
		monsters = { 127005, 127006, 127007, 127008, 127009 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_127004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 127001, 127002, 127003 },
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
function condition_EVENT_GROUP_LOAD_127004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308127, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"