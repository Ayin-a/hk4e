-- 基础信息
local base_info = {
	group_id = 220154001
}

-- Trigger变量
local defs = {
	transTarget = 1004,
	phaseOneBoss = 1001,
	phaseTwoBoss = 1002,
	bossBattleTransPoint = 1007,
	phaseOneRegion = 1008,
	gadget_music_change = 1014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29070103, pos = { x = 0.000, y = 5.800, z = 1.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 161 },
	{ config_id = 1002, monster_id = 29070104, pos = { x = 0.000, y = -58.140, z = -30.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 161 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1005, gadget_id = 70290651, pos = { x = 0.000, y = 2.700, z = -1.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70290834, pos = { x = 1.500, y = 5.530, z = 66.900 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360001, pos = { x = -0.941, y = -58.149, z = -1.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70210106, pos = { x = 0.000, y = -58.149, z = 0.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "「正机之神」", persistent = true, boss_chest = { monster_config_id=1002, resin=60, life_time = 1800, take_num = 1} },
	{ config_id = 1014, gadget_id = 70290868, pos = { x = 13.671, y = -58.149, z = -25.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70290869, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1008, shape = RegionShape.CYLINDER, radius = 28, pos = { x = 0.000, y = 2.700, z = -1.500 }, height = 100.000 }
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" },
	{ config_id = 1001010, name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010" },
	{ config_id = 1001011, name = "GADGET_STATE_CHANGE_1011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1011", action = "action_EVENT_GADGET_STATE_CHANGE_1011" }
}

-- 点位
points = {
	-- 二阶段传送位置
	{ config_id = 1004, pos = { x = 0.000, y = -58.149, z = 37.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	-- 开战传送位置
	{ config_id = 1007, pos = { x = 0.000, y = 5.800, z = 23.125 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1013, gadget_id = 70290652, pos = { x = 0.000, y = -58.900, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		monsters = { 1001 },
		gadgets = { 1005, 1006, 1015 },
		regions = { 1008 },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1002 },
		gadgets = { 1009, 1015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1010", "GADGET_STATE_CHANGE_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	    ScriptLib.SetWeatherAreaState(context, 10142, 1)
	
	    -- 重新生成指定group，指定suite
	    if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220154001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	--判断死亡怪物的configid是否为 1002
	if evt.param1 ~= 1002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 将configid为 1009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	if 1009 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	-- 创建id为1012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_2/Boss_Battle_Process_Scaramouche"