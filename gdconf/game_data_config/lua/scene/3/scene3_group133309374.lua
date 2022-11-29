-- 基础信息
local base_info = {
	group_id = 133309374
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 374001, monster_id = 26090101, pos = { x = -2401.303, y = -53.290, z = 5901.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 27 },
	{ config_id = 374002, monster_id = 26090101, pos = { x = -2390.531, y = -53.413, z = 5898.617 }, rot = { x = 0.000, y = 339.482, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 105, area_id = 27 },
	{ config_id = 374003, monster_id = 26090101, pos = { x = -2402.560, y = -53.500, z = 5905.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 27 },
	{ config_id = 374005, monster_id = 26090101, pos = { x = -2383.342, y = -53.500, z = 5938.186 }, rot = { x = 0.000, y = 158.006, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 105, area_id = 27 },
	{ config_id = 374008, monster_id = 26090901, pos = { x = -2407.899, y = -31.479, z = 5903.787 }, rot = { x = 0.000, y = 44.806, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 374010, monster_id = 26090901, pos = { x = -2410.912, y = -33.545, z = 5915.391 }, rot = { x = 0.000, y = 200.201, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 103, area_id = 27 },
	{ config_id = 374011, monster_id = 26090901, pos = { x = -2404.143, y = -32.442, z = 5905.224 }, rot = { x = 0.000, y = 297.541, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 374012, monster_id = 26120101, pos = { x = -2351.750, y = -52.768, z = 5938.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 201, area_id = 27 },
	{ config_id = 374014, monster_id = 26090101, pos = { x = -2395.359, y = -53.500, z = 5938.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 27 },
	{ config_id = 374015, monster_id = 26090101, pos = { x = -2392.513, y = -53.500, z = 5941.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 27 },
	{ config_id = 374016, monster_id = 26120101, pos = { x = -2357.944, y = -51.811, z = 5899.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大蕈兽", affix = { 6117 }, pose_id = 201, area_id = 27 }
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
	{ config_id = 1374004, name = "GROUP_LOAD_374004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_374004", action = "action_EVENT_GROUP_LOAD_374004", trigger_count = 0 }
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
		monsters = { 374001, 374003, 374014, 374015, 374016 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_374004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 374002, 374005, 374008, 374010, 374011, 374012 },
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
function condition_EVENT_GROUP_LOAD_374004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_374004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309374, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"