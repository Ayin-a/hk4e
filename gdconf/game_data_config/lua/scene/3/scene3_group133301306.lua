-- 基础信息
local base_info = {
	group_id = 133301306
}

-- DEFS_MISCS
local DreamStonePlay = {
    LevelTagGroup = 12,
    DreamStoneCid = 306001,
}

-- 在对应LevelTag中操作梦境石发生的切换
local LevelTagState = {
    ["3.0_Dream"] ={
        ChangeTag = 39,
        WeatherStateList = {
            {AreaID = 4037,State =0},
            {AreaID = 4038,State =1},
            {AreaID = 4039,State =0},
            {AreaID = 4040,State =1},
            {AreaID = 4041,State =1},
        },
    },
    ["3.0_Reality"] ={
        ChangeTag = 38,
        WeatherStateList = {
            {AreaID = 4037,State =1},
            {AreaID = 4038,State =0},
            {AreaID = 4039,State =1},
            {AreaID = 4040,State =0},
            {AreaID = 4041,State =0},
        },
    },
}

local KeyQuest = {
    ["Lock"] = {7302518,7302519,7302515,7303201,7303202,7303203},
    ["Unlock"] ={7302525,7302506,7302511,7302514,7303301,7303501},
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
	{ config_id = 306001, gadget_id = 70330237, pos = { x = -181.394, y = 234.699, z = 3473.680 }, rot = { x = 359.374, y = 358.588, z = 359.513 }, level = 27, persistent = true, area_id = 29 }
}

-- 区域
regions = {
	-- 读任务判断，切为0
	{ config_id = 306024, shape = RegionShape.SPHERE, radius = 15, pos = { x = -181.177, y = 234.640, z = 3474.730 }, area_id = 29 }
}

-- 触发器
triggers = {
	-- if 在38梦境 then 切39现实
	{ config_id = 1306002, name = "LUA_NOTIFY_306002", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_306002", action = "action_EVENT_LUA_NOTIFY_306002", trigger_count = 0 },
	-- if 在39现实 then 切38梦境
	{ config_id = 1306003, name = "LUA_NOTIFY_306003", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_306003", action = "action_EVENT_LUA_NOTIFY_306003", trigger_count = 0 },
	-- 1_幻梦门完成解锁梦境石
	{ config_id = 1306004, name = "QUEST_START_306004", event = EventType.EVENT_QUEST_START, source = "7302525", condition = "", action = "action_EVENT_QUEST_START_306004", trigger_count = 0 },
	-- 1_幻梦门完成解锁梦境石
	{ config_id = 1306005, name = "QUEST_START_306005", event = EventType.EVENT_QUEST_START, source = "7302506", condition = "", action = "action_EVENT_QUEST_START_306005", trigger_count = 0 },
	-- 2_进现实后锁住梦境石
	{ config_id = 1306006, name = "QUEST_START_306006", event = EventType.EVENT_QUEST_START, source = "7302518", condition = "", action = "action_EVENT_QUEST_START_306006", trigger_count = 0 },
	-- 2_进现实后锁住梦境石
	{ config_id = 1306007, name = "QUEST_FINISH_306007", event = EventType.EVENT_QUEST_FINISH, source = "7302518", condition = "", action = "action_EVENT_QUEST_FINISH_306007", trigger_count = 0 },
	-- 3_打工完成解锁梦境石
	{ config_id = 1306008, name = "QUEST_START_306008", event = EventType.EVENT_QUEST_START, source = "7302511", condition = "", action = "action_EVENT_QUEST_START_306008", trigger_count = 0 },
	-- 3_打工完成解锁梦境石
	{ config_id = 1306009, name = "QUEST_FINISH_306009", event = EventType.EVENT_QUEST_FINISH, source = "7302511", condition = "", action = "action_EVENT_QUEST_FINISH_306009", trigger_count = 0 },
	-- 3_打工完成解锁梦境石
	{ config_id = 1306010, name = "QUEST_START_306010", event = EventType.EVENT_QUEST_START, source = "7302514", condition = "", action = "action_EVENT_QUEST_START_306010", trigger_count = 0 },
	-- 4_再次入梦锁住梦境石
	{ config_id = 1306011, name = "QUEST_START_306011", event = EventType.EVENT_QUEST_START, source = "7302519", condition = "", action = "action_EVENT_QUEST_START_306011", trigger_count = 0 },
	-- 4_再次入梦锁住梦境石
	{ config_id = 1306012, name = "QUEST_FINISH_306012", event = EventType.EVENT_QUEST_FINISH, source = "7302519", condition = "", action = "action_EVENT_QUEST_FINISH_306012", trigger_count = 0 },
	-- 4_再次入梦锁住梦境石
	{ config_id = 1306013, name = "QUEST_START_306013", event = EventType.EVENT_QUEST_START, source = "7302515", condition = "", action = "action_EVENT_QUEST_START_306013", trigger_count = 0 },
	-- 5_初见兰拉迦后解锁梦境石
	{ config_id = 1306014, name = "QUEST_FINISH_306014", event = EventType.EVENT_QUEST_FINISH, source = "7302515", condition = "", action = "action_EVENT_QUEST_FINISH_306014", trigger_count = 0 },
	-- 5_初见兰拉迦后解锁梦境石
	{ config_id = 1306015, name = "QUEST_START_306015", event = EventType.EVENT_QUEST_START, source = "7303301", condition = "", action = "action_EVENT_QUEST_START_306015", trigger_count = 0 },
	-- 6_无忧节开始锁住梦境石
	{ config_id = 1306016, name = "QUEST_START_306016", event = EventType.EVENT_QUEST_START, source = "7303201", condition = "", action = "action_EVENT_QUEST_START_306016", trigger_count = 0 },
	-- 6_无忧节开始锁住梦境石
	{ config_id = 1306017, name = "QUEST_FINISH_306017", event = EventType.EVENT_QUEST_FINISH, source = "7303201", condition = "", action = "action_EVENT_QUEST_FINISH_306017", trigger_count = 0 },
	-- 6_无忧节开始锁住梦境石
	{ config_id = 1306018, name = "QUEST_START_306018", event = EventType.EVENT_QUEST_START, source = "7303202", condition = "", action = "action_EVENT_QUEST_START_306018", trigger_count = 0 },
	-- 6_无忧节开始锁住梦境石
	{ config_id = 1306019, name = "QUEST_FINISH_306019", event = EventType.EVENT_QUEST_FINISH, source = "7303202", condition = "", action = "action_EVENT_QUEST_FINISH_306019", trigger_count = 0 },
	-- 6_无忧节开始锁住梦境石
	{ config_id = 1306020, name = "QUEST_START_306020", event = EventType.EVENT_QUEST_START, source = "7303203", condition = "", action = "action_EVENT_QUEST_START_306020", trigger_count = 0 },
	-- 读任务判断，切为0
	{ config_id = 1306022, name = "GROUP_LOAD_306022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_306022", action = "action_EVENT_GROUP_LOAD_306022", trigger_count = 0 },
	-- 读任务判断，切为0
	{ config_id = 1306023, name = "LEVEL_TAG_CHANGE_306023", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_306023", action = "action_EVENT_LEVEL_TAG_CHANGE_306023", trigger_count = 0 },
	-- 读任务判断，切为0
	{ config_id = 1306024, name = "ENTER_REGION_306024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306024", action = "action_EVENT_ENTER_REGION_306024", trigger_count = 0 }
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
		gadgets = { 306001 },
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
function condition_EVENT_LUA_NOTIFY_306002(context, evt)
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 4037, 0)
	ScriptLib.SetWeatherAreaState(context, 4038, 1)
	ScriptLib.SetWeatherAreaState(context, 4039, 0)
	ScriptLib.SetWeatherAreaState(context, 4040, 1)
	ScriptLib.SetWeatherAreaState(context, 4041, 1)
	ScriptLib.ChangeToTargetLevelTag(context, 39)
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_306003(context, evt)
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306003(context, evt)
	-- ScriptLib.SetWeatherAreaState(context, 4037, 1)
	-- ScriptLib.SetWeatherAreaState(context, 4038, 0)
	-- ScriptLib.SetWeatherAreaState(context, 4039, 1)
	-- ScriptLib.SetWeatherAreaState(context, 4040, 0)
	-- ScriptLib.SetWeatherAreaState(context, 4041, 0)
	ScriptLib.ChangeToTargetLevelTag(context, 38)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306004(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306005(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306006(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306007(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306008(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306009(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306010(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306011(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306012(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306013(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306014(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306015(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306016(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306017(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306018(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_306019(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_306020(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_306022(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7321304)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306022(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEVEL_TAG_CHANGE_306023(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7321304)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_306023(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_306024(context, evt)
	if evt.param1 ~= 306024 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7321304)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306024(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DreamStone"