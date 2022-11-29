-- 基础信息
local base_info = {
	group_id = 133220382
}

-- Trigger变量
local defs = {
	group_ID = 133220382,
	trigger_playRegion = 382006,
	gadget_1 = 382002
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
	{ config_id = 382001, gadget_id = 70950068, pos = { x = -2819.829, y = 204.572, z = -4446.728 }, rot = { x = 7.343, y = 0.815, z = 337.236 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 382002, gadget_id = 70950070, pos = { x = -2850.496, y = 200.110, z = -4472.782 }, rot = { x = 355.534, y = 2.229, z = 348.176 }, level = 10, area_id = 11 },
	{ config_id = 382003, gadget_id = 70950069, pos = { x = -2828.238, y = 200.776, z = -4472.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 382004, gadget_id = 70950069, pos = { x = -2832.693, y = 200.001, z = -4448.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 382005, gadget_id = 70211111, pos = { x = -2852.649, y = 200.327, z = -4475.841 }, rot = { x = 358.341, y = 10.445, z = 348.592 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 382008, gadget_id = 70950069, pos = { x = -2820.535, y = 202.547, z = -4454.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 382006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2832.852, y = 202.472, z = -4458.459 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1382007, name = "VARIABLE_CHANGE_382007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_382007", action = "" },
	{ config_id = 1382012, name = "ANY_MONSTER_DIE_382012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_382012", action = "action_EVENT_ANY_MONSTER_DIE_382012", trigger_count = 0 }
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
		gadgets = { 382001, 382002, 382003, 382004, 382008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_382012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 382006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 382005 },
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
function condition_EVENT_VARIABLE_CHANGE_382007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_382012(context, evt)
	if 382009 ~= evt.param1 then
		return false
	end
	
	if 382010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_382012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 382011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"