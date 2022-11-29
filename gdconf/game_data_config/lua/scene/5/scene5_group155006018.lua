-- 基础信息
local base_info = {
	group_id = 155006018
}

-- Trigger变量
local defs = {
	group_ID = 155006018
}

-- DEFS_MISCS
local touchlist = {18009,18010,18011,18012,18013,18014,18015,18016}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.RemoveExtraGroupSuite(context, 155006018, 2)
	end,
	["1"] = function(context)	
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 1) then
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, 18002 )
		
		elseif (current_env_state_id == 2) then 
			ScriptLib.CreateGadget(context, { config_id = 18002 })
	    end 

	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.RemoveExtraGroupSuite(context, 155006018, 2)
		ScriptLib.RemoveExtraGroupSuite(context, 155006018, 5)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.AddQuestProgress(context, "72283_Success")	
		
	end,
	["3"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.RemoveExtraGroupSuite(context, 155006018, 2)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.RemoveExtraGroupSuite(context, 155006018, 5)
		ScriptLib.RemoveEntityByConfigId(context, 155006018, EntityType.GADGET, 18002 )
		ScriptLib.MarkPlayerAction(context, 6073, 3, 1) 
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function SetGadgetStateFromList(context,list,targetstate)
	for i = 1, #list do
		ScriptLib.SetGadgetStateByConfigId(context, list[i],targetstate)
	end
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
	{ config_id = 18001, gadget_id = 70360333, pos = { x = 234.974, y = 203.438, z = -242.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 18002, gadget_id = 70710126, pos = { x = 195.386, y = 249.455, z = -365.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	-- 超远程射击玩法宝箱
	{ config_id = 18004, gadget_id = 70211121, pos = { x = 191.218, y = 248.677, z = -363.027 }, rot = { x = 356.792, y = 155.005, z = 16.833 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 18009, gadget_id = 70710126, pos = { x = 240.322, y = 202.522, z = -239.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18010, gadget_id = 70710126, pos = { x = 240.830, y = 201.795, z = -244.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18011, gadget_id = 70710126, pos = { x = 238.074, y = 201.863, z = -248.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18012, gadget_id = 70710126, pos = { x = 233.640, y = 202.922, z = -248.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18013, gadget_id = 70710126, pos = { x = 229.611, y = 204.207, z = -246.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18014, gadget_id = 70710126, pos = { x = 229.330, y = 204.968, z = -240.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18015, gadget_id = 70710126, pos = { x = 233.165, y = 204.469, z = -236.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 18016, gadget_id = 70710126, pos = { x = 237.670, y = 203.423, z = -237.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
	-- 触发机关
	{ config_id = 18007, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 195.403, y = 249.239, z = -365.508 }, area_id = 200 },
	-- 离开机关
	{ config_id = 18008, shape = RegionShape.SPHERE, radius = 2, pos = { x = 195.474, y = 249.239, z = -365.612 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1018003, name = "ANY_GADGET_DIE_18003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_18003", action = "action_EVENT_ANY_GADGET_DIE_18003", trigger_count = 0 },
	-- 初始化
	{ config_id = 1018005, name = "GROUP_LOAD_18005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18005", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1018006, name = "VARIABLE_CHANGE_18006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_18006", trigger_count = 0 },
	-- 触发机关
	{ config_id = 1018007, name = "ENTER_REGION_18007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_18007", action = "action_EVENT_ENTER_REGION_18007", trigger_count = 0 },
	-- 离开机关
	{ config_id = 1018008, name = "LEAVE_REGION_18008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_18008", action = "action_EVENT_LEAVE_REGION_18008", trigger_count = 0 },
	-- 任务通知玩法开始
	{ config_id = 1018017, name = "QUEST_START_18017", event = EventType.EVENT_QUEST_START, source = "7228302", condition = "", action = "action_EVENT_QUEST_START_18017", trigger_count = 0 },
	{ config_id = 1018018, name = "QUEST_FINISH_18018", event = EventType.EVENT_QUEST_FINISH, source = "7228303", condition = "", action = "action_EVENT_QUEST_FINISH_18018", trigger_count = 0 },
	{ config_id = 1018019, name = "LEVEL_TAG_CHANGE_18019", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_18019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_18005", "VARIABLE_CHANGE_18006", "QUEST_START_18017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 18007, 18008 },
		triggers = { "ENTER_REGION_18007", "LEAVE_REGION_18008", "LEVEL_TAG_CHANGE_18019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_18018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 18004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 18001, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_18003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_18003(context, evt)
	if 18001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_18003(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18005(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18006(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18007(context, evt)
	if evt.param1 ~= 18007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
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
function action_EVENT_ENTER_REGION_18007(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=234.974, y=203.4382, z=-242.7391}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=234.974, y=203.4382, z=-242.7391}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006018, 5)
	
	-- 将configid为 18002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_18008(context, evt)
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
function action_EVENT_LEAVE_REGION_18008(context, evt)
	-- 将configid为 18002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155006018, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_18017(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_18018(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_18019(context, evt)
		--todo
		if evt.param2 == 1 then 
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, 18002 )
		elseif evt.param2 == 2 then 	
			ScriptLib.CreateGadget(context, { config_id = 18002 })
		end
	return 0
end