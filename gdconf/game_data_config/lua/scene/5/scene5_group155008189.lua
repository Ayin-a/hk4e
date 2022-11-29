-- 基础信息
local base_info = {
	group_id = 155008189
}

-- Trigger变量
local defs = {
	group_ID = 155008189,
	gadget_sealday = 189002,
	gadget_sealnight = 189001
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_sealday}
local NightAppearGadgets = {defs.gadget_sealnight}




local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)

		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)


	
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 189005, 101)

	end,
	["3"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 189005, 0)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealday, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealnight, 202)
	end,

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 189007, monster_id = 26050901, pos = { x = -183.993, y = 185.205, z = 418.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 189008, monster_id = 26050901, pos = { x = -189.149, y = 185.997, z = 427.144 }, rot = { x = 0.000, y = 70.227, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 189009, monster_id = 26050901, pos = { x = -180.462, y = 185.092, z = 430.880 }, rot = { x = 0.000, y = 180.276, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 189001, gadget_id = 70360310, pos = { x = -182.921, y = 184.843, z = 425.260 }, rot = { x = 0.000, y = 16.679, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 189002, gadget_id = 70360318, pos = { x = -182.921, y = 184.843, z = 425.260 }, rot = { x = 0.000, y = 16.679, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 189005, gadget_id = 70211112, pos = { x = -182.939, y = 185.200, z = 425.021 }, rot = { x = 0.000, y = 17.654, z = 0.000 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 189006, shape = RegionShape.SPHERE, radius = 9, pos = { x = -182.876, y = 185.117, z = 425.379 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1189003, name = "GROUP_LOAD_189003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_189003", trigger_count = 0 },
	{ config_id = 1189004, name = "VARIABLE_CHANGE_189004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_189004", trigger_count = 0 },
	{ config_id = 1189006, name = "ENTER_REGION_189006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189006", action = "action_EVENT_ENTER_REGION_189006", trigger_count = 0 },
	{ config_id = 1189010, name = "ANY_MONSTER_DIE_189010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189010", action = "action_EVENT_ANY_MONSTER_DIE_189010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "enemyspawned", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_189003", "VARIABLE_CHANGE_189004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 189005 },
		regions = { 189006 },
		triggers = { "ENTER_REGION_189006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 189007, 189008, 189009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_189010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 189005 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_189003(context, evt)
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_189004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189006(context, evt)
	if evt.param1 ~= 189006 then return false end
	
	-- 判断变量"enemyspawned"为0
	if ScriptLib.GetGroupVariableValue(context, "enemyspawned") ~= 0 then
			return false
	end
	
	-- 返回渊下宫当前是否为黑夜
	    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 2) then
	        return true
	    else
	        return false
	    end 
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155008189, 3)
	
	-- 将configid为 189005 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189005, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "enemyspawned" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "enemyspawned", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_189010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189010(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateControl"
require "V2_4/EnvStateWorktop"