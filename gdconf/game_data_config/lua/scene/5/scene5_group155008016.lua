-- 基础信息
local base_info = {
	group_id = 155008016
}

-- Trigger变量
local defs = {
	group_ID = 155008016
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		
		
	end,
	["2"] = function(context)
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)

	end

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
	{ config_id = 16003, monster_id = 24010101, pos = { x = -154.188, y = 264.505, z = 434.147 }, rot = { x = 0.000, y = 103.053, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 200 },
	{ config_id = 16004, monster_id = 24010101, pos = { x = -139.852, y = 264.395, z = 420.911 }, rot = { x = 0.000, y = 323.835, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 200 },
	{ config_id = 16005, monster_id = 24010101, pos = { x = -134.831, y = 264.347, z = 432.583 }, rot = { x = 0.000, y = 250.841, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 祭坛第五密室宝箱
	{ config_id = 16009, gadget_id = 70211031, pos = { x = -145.210, y = 264.172, z = 430.554 }, rot = { x = 358.769, y = 359.647, z = 359.827 }, level = 16, drop_tag = "战斗超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016001, name = "GROUP_LOAD_16001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_16001", trigger_count = 0 },
	{ config_id = 1016002, name = "VARIABLE_CHANGE_16002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_16002", trigger_count = 0 },
	{ config_id = 1016008, name = "ANY_MONSTER_DIE_16008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16008", action = "action_EVENT_ANY_MONSTER_DIE_16008", trigger_count = 0 },
	{ config_id = 1016010, name = "GADGET_STATE_CHANGE_16010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16010", action = "action_EVENT_GADGET_STATE_CHANGE_16010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 16006, monster_id = 24010101, pos = { x = -144.126, y = 256.302, z = 438.502 }, rot = { x = 0.000, y = 173.155, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 200 },
		{ config_id = 16007, monster_id = 24010101, pos = { x = -144.485, y = 254.753, z = 431.876 }, rot = { x = 0.000, y = 124.347, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_16001", "VARIABLE_CHANGE_16002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 16003, 16004, 16005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 16009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_16010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_16001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16010(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155008016, 16009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16010(context, evt)
	-- 将本组内变量名为 "solution_state_5" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "solution_state_5", 3, 155008010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end