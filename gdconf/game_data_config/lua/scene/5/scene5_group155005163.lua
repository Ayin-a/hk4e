-- 基础信息
local base_info = {
	group_id = 155005163
}

-- Trigger变量
local defs = {
	group_ID = 155005163,
	gadget_airforce = 163001,
	gadget_mask = 163002,
	gadget_windforce = 163003,
	route_01 = 500500050
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
	{ config_id = 163001, gadget_id = 70690028, pos = { x = 699.035, y = 241.730, z = 548.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 500500050, start_route = false, area_id = 200 },
	{ config_id = 163002, gadget_id = 70290229, pos = { x = 699.035, y = 243.239, z = 548.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 163003, gadget_id = 70690030, pos = { x = 699.035, y = 241.730, z = 548.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 触发冥鱼出现
	{ config_id = 163006, shape = RegionShape.CUBIC, size = { x = 23.000, y = 5.000, z = 23.000 }, pos = { x = 698.513, y = 239.769, z = 548.940 }, area_id = 200 },
	-- 靠近冥鱼开始移动
	{ config_id = 163009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 699.035, y = 244.730, z = 548.860 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1163004, name = "GROUP_LOAD_163004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_163004", trigger_count = 0 },
	{ config_id = 1163005, name = "VARIABLE_CHANGE_163005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_163005", trigger_count = 0 },
	-- 触发冥鱼出现
	{ config_id = 1163006, name = "ENTER_REGION_163006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_163006", action = "action_EVENT_ENTER_REGION_163006", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1163007, name = "PLATFORM_REACH_POINT_163007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_163007", action = "action_EVENT_PLATFORM_REACH_POINT_163007", trigger_count = 0 },
	-- 跳转玩法开始
	{ config_id = 1163008, name = "QUEST_START_163008", event = EventType.EVENT_QUEST_START, source = "7226808", condition = "", action = "action_EVENT_QUEST_START_163008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1163009, name = "ENTER_REGION_163009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_163009", action = "action_EVENT_ENTER_REGION_163009", trigger_count = 0 },
	-- 延迟打开风场
	{ config_id = 1163010, name = "GADGET_CREATE_163010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163010", action = "action_EVENT_GADGET_CREATE_163010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "ismoving", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_163004", "VARIABLE_CHANGE_163005", "QUEST_START_163008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 163006, 163009 },
		triggers = { "ENTER_REGION_163006", "PLATFORM_REACH_POINT_163007", "ENTER_REGION_163009", "GADGET_CREATE_163010" },
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
function action_EVENT_GROUP_LOAD_163004(context, evt)
	UpdateGamePlayState(context)
	if ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155002001) == 1 then 
	  ScriptLib.SetGroupVariableValue(context, "gameplayState", 1)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163005(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_163006(context, evt)
	if evt.param1 ~= 163006 then return false end	
	-- 返回渊下宫当前是否为黑夜
		    local uid_List = ScriptLib.GetSceneUidList(context)
		    local host_id = uid_List[1]
		    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
			if (current_env_state_id == 2) then
				ScriptLib.PrintContextLog(context,"是夜晚")
		        return true
			else
				ScriptLib.PrintContextLog(context,"不是夜晚")
		        return false
		    end 
			ScriptLib.PrintContextLog(context,"默认判断")
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_163006(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_163007(context, evt)
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
	
	if defs.gadget_airforce ~= evt.param1 then
	  return false
	end
	
	if defs.route_01 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_163007(context, evt)
				ScriptLib.StopPlatform(context, defs.gadget_airforce) 
				ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
				ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
				ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_163008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_163009(context, evt)
		if evt.param1 ~= 163009 then return false end
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
function action_EVENT_ENTER_REGION_163009(context, evt)
	
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_163010(context, evt)
	if 163001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163010(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

require "V2_4/EnvState"