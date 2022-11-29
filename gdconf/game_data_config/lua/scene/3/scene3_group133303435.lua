-- 基础信息
local base_info = {
	group_id = 133303435
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 435001, monster_id = 26090101, pos = { x = -1114.093, y = 82.331, z = 3853.283 }, rot = { x = 0.000, y = 280.569, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 435002, monster_id = 26090201, pos = { x = -1118.478, y = 82.341, z = 3854.528 }, rot = { x = 0.000, y = 14.809, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 435003, monster_id = 26090201, pos = { x = -1115.587, y = 82.343, z = 3856.187 }, rot = { x = 0.000, y = 186.403, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 },
	-- 为了很容易用船打死，加了血量降低80%的词缀
	{ config_id = 435005, monster_id = 26120101, pos = { x = -1231.038, y = 114.152, z = 3691.734 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "大蕈兽", affix = { 6117, 1104 }, pose_id = 102, area_id = 23 },
	-- 为了很容易用船打死，加了血量降低80%的词缀
	{ config_id = 435006, monster_id = 26120101, pos = { x = -1163.685, y = 83.382, z = 3737.097 }, rot = { x = 0.000, y = 273.012, z = 0.000 }, level = 30, drop_tag = "大蕈兽", affix = { 6117, 1104 }, pose_id = 103, area_id = 23 },
	-- 为了很容易用船打死，加了血量降低80%的词缀
	{ config_id = 435007, monster_id = 26090701, pos = { x = -1199.939, y = 86.576, z = 3765.308 }, rot = { x = 0.000, y = 99.014, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117, 1104 }, pose_id = 103, area_id = 23 },
	-- 为了很容易用船打死，加了血量降低80%的词缀
	{ config_id = 435008, monster_id = 26090701, pos = { x = -1185.657, y = 82.205, z = 3786.968 }, rot = { x = 0.000, y = 99.014, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117, 1104 }, pose_id = 103, area_id = 23 },
	-- 为了很容易用船打死，加了血量降低80%的词缀
	{ config_id = 435009, monster_id = 26120201, pos = { x = -1142.368, y = 82.896, z = 3830.253 }, rot = { x = 0.000, y = 140.330, z = 0.000 }, level = 30, drop_tag = "大蕈兽", affix = { 6117, 1104 }, pose_id = 103, area_id = 23 },
	{ config_id = 435010, monster_id = 26090101, pos = { x = -1116.951, y = 82.142, z = 3851.346 }, rot = { x = 0.000, y = 20.678, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 }
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
	{ config_id = 1435004, name = "GROUP_LOAD_435004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_435004", action = "action_EVENT_GROUP_LOAD_435004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 435011, monster_id = 26090101, pos = { x = -1110.732, y = 79.054, z = 3852.197 }, rot = { x = 0.000, y = 3.473, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 23 }
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
		monsters = { 435005, 435006, 435007, 435008, 435009 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_435004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 435001, 435002, 435003, 435010 },
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
function condition_EVENT_GROUP_LOAD_435004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_435004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303435, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"