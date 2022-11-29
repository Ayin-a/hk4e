-- 基础信息
local base_info = {
	group_id = 201058016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16002, monster_id = 20011201, pos = { x = -60.217, y = 95.525, z = 121.048 }, rot = { x = 0.000, y = 195.959, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16003, monster_id = 20011201, pos = { x = -61.754, y = 95.525, z = 117.148 }, rot = { x = 0.000, y = 70.182, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16004, monster_id = 20011201, pos = { x = -64.427, y = 95.558, z = 120.358 }, rot = { x = 0.000, y = 91.152, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16007, monster_id = 20011001, pos = { x = -23.736, y = 88.406, z = 82.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16008, monster_id = 20011001, pos = { x = -18.379, y = 88.410, z = 85.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16009, monster_id = 20011001, pos = { x = -20.003, y = 88.414, z = 82.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16010, monster_id = 20010301, pos = { x = -63.361, y = 106.041, z = 193.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16011, monster_id = 20010301, pos = { x = -65.879, y = 106.041, z = 194.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16012, monster_id = 20010301, pos = { x = -64.787, y = 106.046, z = 192.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16016, monster_id = 20010501, pos = { x = -105.925, y = 88.402, z = 155.704 }, rot = { x = 0.000, y = 204.098, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16017, monster_id = 20010501, pos = { x = -102.280, y = 88.402, z = 153.810 }, rot = { x = 0.000, y = 204.098, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16024, monster_id = 20010501, pos = { x = -105.251, y = 88.402, z = 152.666 }, rot = { x = 0.000, y = 204.098, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16025, monster_id = 20010501, pos = { x = 18.169, y = 102.070, z = 134.953 }, rot = { x = 0.000, y = 204.098, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16026, monster_id = 20011001, pos = { x = 21.418, y = 102.070, z = 130.762 }, rot = { x = 0.000, y = 267.690, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } },
	{ config_id = 16027, monster_id = 20011201, pos = { x = 16.218, y = 102.070, z = 129.383 }, rot = { x = 0.000, y = 267.690, z = 0.000 }, level = 1, disableWander = true, affix = { 1030 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16005, gadget_id = 70710126, pos = { x = -61.814, y = 105.775, z = 45.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16018, gadget_id = 70360046, pos = { x = -76.887, y = 93.504, z = 119.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16019, gadget_id = 70360046, pos = { x = -128.429, y = 97.033, z = 117.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16020, gadget_id = 70360046, pos = { x = -85.489, y = 86.326, z = 180.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16028, gadget_id = 70360046, pos = { x = -22.652, y = 83.627, z = 157.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16029, gadget_id = 70360046, pos = { x = 21.545, y = 84.919, z = 130.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16013, shape = RegionShape.SPHERE, radius = 8, pos = { x = -61.814, y = 105.775, z = 45.044 } }
}

-- 触发器
triggers = {
	{ config_id = 1016001, name = "VARIABLE_CHANGE_16001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16001", action = "action_EVENT_VARIABLE_CHANGE_16001" },
	{ config_id = 1016013, name = "ENTER_REGION_16013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16013", action = "action_EVENT_ENTER_REGION_16013", tag = "666" },
	{ config_id = 1016014, name = "CHALLENGE_SUCCESS_16014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "" },
	{ config_id = 1016015, name = "CHALLENGE_FAIL_16015", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_16015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "startChallenge", value = 0, no_refresh = false }
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
		gadgets = { 16005, 16018, 16019, 16020, 16028, 16029 },
		regions = { 16013 },
		triggers = { "VARIABLE_CHANGE_16001", "ENTER_REGION_16013", "CHALLENGE_SUCCESS_16014", "CHALLENGE_FAIL_16015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = Monsters1,
		monsters = { 16002, 16003, 16004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Monsters2,
		monsters = { 16007, 16008, 16009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Monsters3,
		monsters = { 16010, 16011, 16012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Monster4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 16016, 16017, 16024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 16025, 16026, 16027 },
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
function condition_EVENT_VARIABLE_CHANGE_16001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"startChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "startChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16001(context, evt)
	-- 创建编号为888（该挑战的识别id),挑战内容为205的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 205, 150, 4, 666, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 4)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16013(context, evt)
	if evt.param1 ~= 16013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 16005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_16015(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end