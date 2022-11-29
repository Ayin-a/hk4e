-- 基础信息
local base_info = {
	group_id = 155006025
}

-- Trigger变量
local defs = {
	group_ID = 155006025,
	gadget_airforce = 25003,
	gadget_mask = 25004,
	gadget_windforce = 25007,
	route_01 = 500600003
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask}
local NightAppearGadgets = {defs.gadget_airforce,defs.gadget_windforce}

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
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_airforce })
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_windforce })
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25003, gadget_id = 70690028, pos = { x = 507.947, y = 130.259, z = -298.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 500600003, start_route = false, area_id = 200 },
	{ config_id = 25004, gadget_id = 70290229, pos = { x = 507.978, y = 132.095, z = -298.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 25007, gadget_id = 70690030, pos = { x = 507.947, y = 130.259, z = -298.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 触发冥鱼出现
	{ config_id = 25005, shape = RegionShape.CUBIC, size = { x = 23.000, y = 5.000, z = 23.000 }, pos = { x = 507.100, y = 131.119, z = -297.750 }, area_id = 200 },
	-- 靠近冥鱼开始移动
	{ config_id = 25009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 507.947, y = 133.259, z = -298.556 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1025001, name = "GROUP_LOAD_25001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_25001", trigger_count = 0 },
	{ config_id = 1025002, name = "VARIABLE_CHANGE_25002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_25002", trigger_count = 0 },
	-- 触发冥鱼出现
	{ config_id = 1025005, name = "ENTER_REGION_25005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_25005", action = "action_EVENT_ENTER_REGION_25005", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1025006, name = "PLATFORM_REACH_POINT_25006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_25006", action = "action_EVENT_PLATFORM_REACH_POINT_25006", trigger_count = 0 },
	-- 跳转玩法开始
	{ config_id = 1025008, name = "QUEST_START_25008", event = EventType.EVENT_QUEST_START, source = "7226908", condition = "", action = "action_EVENT_QUEST_START_25008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1025009, name = "ENTER_REGION_25009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_25009", action = "action_EVENT_ENTER_REGION_25009", trigger_count = 0 },
	-- 冥鱼创生后的逻辑处理
	{ config_id = 1025011, name = "GADGET_CREATE_25011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25011", action = "action_EVENT_GADGET_CREATE_25011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "ismoving", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1025010, name = "TIME_AXIS_PASS_25010", event = EventType.EVENT_TIME_AXIS_PASS, source = "InitalWindForce", condition = "", action = "action_EVENT_TIME_AXIS_PASS_25010", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_25001", "VARIABLE_CHANGE_25002", "QUEST_START_25008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 25005, 25009 },
		triggers = { "ENTER_REGION_25005", "PLATFORM_REACH_POINT_25006", "ENTER_REGION_25009", "GADGET_CREATE_25011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_25001(context, evt)
	UpdateGamePlayState(context)
	if ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155003001) == 1 then 
	  ScriptLib.SetGroupVariableValue(context, "gameplayState", 1)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25005(context, evt)
	if evt.param1 ~= 25005 then return false end
	
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
function action_EVENT_ENTER_REGION_25005(context, evt)
		--如果没有冥鱼则直接创建
			if -1 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then			
				
				ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
				ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			
			else 
				--如果有冥鱼,并且在移动中, 则销毁创建
				if 1 ==	ScriptLib.GetGroupVariableValue(context, "ismoving") then 
					ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
					ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
					ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
					
				end
			end
			--ScriptLib.StartPlatform(context, 25003)
			return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_25006(context, evt)
	-- 返回渊下宫当前是否为黑夜
	    local uid_List = ScriptLib.GetSceneUidList(context)
	    local host_id = uid_List[1]
	    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 2) then
	        return true
	    else
	        return false
	    end 
	
	-- 判断是gadgetid 为 25003的移动平台，是否到达了500600003 的路线中的 1 点
	
	if 25003 ~= evt.param1 then
	  return false
	end
	
	if 500600003 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_25006(context, evt)
				ScriptLib.StopPlatform(context, defs.gadget_airforce) 
				ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
				ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
				ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_25008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25009(context, evt)
		if evt.param1 ~= 25009 then return false end
		if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) and 
		202 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
			return false
		end
	
		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
		if (current_env_state_id == 2) then
			return true
		else
			return false
		end 
	
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25009(context, evt)
	
	
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_25011(context, evt)
	if 25003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_25011(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

require "V2_4/EnvState"