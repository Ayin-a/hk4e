-- 基础信息
local base_info = {
	group_id = 199001071
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
	-- 鼓A
	{ config_id = 71001, gadget_id = 70310458, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 99.043, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, interact_id = 64, area_id = 402 },
	{ config_id = 71009, gadget_id = 70360001, pos = { x = 331.239, y = 120.000, z = 304.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 71010, gadget_id = 70360001, pos = { x = 331.239, y = 120.000, z = 304.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	-- 鼓B
	{ config_id = 71015, gadget_id = 70310458, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 99.043, z = 0.000 }, level = 20, state = GadgetState.GearAction1, persistent = true, interact_id = 64, area_id = 402 },
	-- 鼓C
	{ config_id = 71016, gadget_id = 70310458, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 99.043, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 }
}

-- 区域
regions = {
	-- 触发切换山体教学
	{ config_id = 71021, shape = RegionShape.SPHERE, radius = 7, pos = { x = 333.333, y = 120.000, z = 307.004 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- popo0203互相切
	{ config_id = 1071002, name = "LUA_NOTIFY_71002", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_71002", trigger_count = 0 },
	-- popo02切03,并且切202
	{ config_id = 1071005, name = "LUA_NOTIFY_71005", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_71005", trigger_count = 0 },
	-- 监听ShowReminder请求
	{ config_id = 1071020, name = "LUA_NOTIFY_71020", event = EventType.EVENT_LUA_NOTIFY, source = "TryShowReminder", condition = "condition_EVENT_LUA_NOTIFY_71020", action = "action_EVENT_LUA_NOTIFY_71020", trigger_count = 0 },
	-- 触发切换山体教学
	{ config_id = 1071021, name = "ENTER_REGION_71021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_71021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "need_rmd", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 71003, gadget_id = 70360001, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 279.043, z = 0.000 }, level = 20, worktop_config = { init_options = { 754 } }, area_id = 402 }
	},
	regions = {
		{ config_id = 71004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 329.681, y = 119.794, z = 306.610 }, area_id = 402 },
		{ config_id = 71014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 329.681, y = 119.794, z = 306.610 }, area_id = 402 },
		{ config_id = 71019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 329.681, y = 119.794, z = 306.610 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1071004, name = "ENTER_REGION_71004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_71004" },
		{ config_id = 1071006, name = "LUA_NOTIFY_71006", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_71006", trigger_count = 0 },
		{ config_id = 1071007, name = "QUEST_START_71007", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "" },
		{ config_id = 1071008, name = "QUEST_START_71008", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "" },
		{ config_id = 1071011, name = "GADGET_CREATE_71011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71011", action = "action_EVENT_GADGET_CREATE_71011", trigger_count = 0 },
		{ config_id = 1071012, name = "GADGET_CREATE_71012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71012", action = "action_EVENT_GADGET_CREATE_71012", trigger_count = 0 },
		{ config_id = 1071013, name = "GADGET_CREATE_71013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71013", action = "action_EVENT_GADGET_CREATE_71013", trigger_count = 0 },
		{ config_id = 1071014, name = "ENTER_REGION_71014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_71014" },
		{ config_id = 1071017, name = "LEVEL_TAG_CHANGE_71017", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_71017", trigger_count = 0 },
		{ config_id = 1071018, name = "LEVEL_TAG_CHANGE_71018", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_71018", trigger_count = 0 },
		{ config_id = 1071019, name = "ENTER_REGION_71019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_71019" },
		{ config_id = 1071022, name = "LUA_NOTIFY_71022", event = EventType.EVENT_LUA_NOTIFY, source = "TryShowReminder", condition = "condition_EVENT_LUA_NOTIFY_71022", action = "action_EVENT_LUA_NOTIFY_71022", trigger_count = 0 }
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
		gadgets = { 71001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 71009, 71015 },
		regions = { },
		triggers = { "LUA_NOTIFY_71005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 71010, 71016 },
		regions = { 71021 },
		triggers = { "LUA_NOTIFY_71002", "LUA_NOTIFY_71020", "ENTER_REGION_71021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_LUA_NOTIFY_71002(context, evt)
	        if ScriptLib.CheckIsInMpMode(context) then
	         ScriptLib.ShowReminderRadius(context, 321700501, { x= 331.94, y = 119.3747, z=306.3788}, 5)
	        return 0
	        end
	        if ScriptLib.CheckSceneTag(context, 9,1015 ) then
		ScriptLib.SetGroupVariableValue(context, "need_rmd", 1)
	                ScriptLib.ChangeToTargetLevelTagWithParamTable(context, 17, {pos = {x=335.5424 ,y=119.5716 ,z=305.879 }, radius = 2, rot = {x=0 , y=-82.73 , z=0 }})
	
	
	        else
	                if ScriptLib.CheckSceneTag(context, 9,1016 ) then
	                       ScriptLib.SetGroupVariableValue(context, "need_rmd", 1) ScriptLib.ChangeToTargetLevelTagWithParamTable(context, 16, {pos = {x=335.5424 ,y=119.5716 ,z=305.879 }, radius = 2, rot = {x=0 , y=-82.73 , z=0 }})
	                end
	
	        end
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, 71016, "GV_ThronDrum_ShowReminder", 1) 
	        return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_71005(context, evt)
	    if true == ScriptLib.CheckIsInMpMode(context) then        
	        ScriptLib.ShowReminderRadius(context, 321700501, { x= 331.94, y = 119.3747, z=306.3788}, 5)
	        return 0
	    end
	-- 将configid为 71001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	if ScriptLib.CheckSceneTag(context, 9,1015 )  then
	
	
		ScriptLib.ChangeToTargetLevelTag(context, 17)
	
	
		else
		
		end
	
	
	
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_71020(context, evt)
	-- 判断变量"need_rmd"为1
	if ScriptLib.GetGroupVariableValue(context, "need_rmd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_71020(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=329,y=119,z=306}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111375, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "need_rmd" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "need_rmd", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_71021(context, evt)
	if ScriptLib.TryRecordActivityPushTips(context, 2014012) == 0 then
		ScriptLib.ShowClientTutorial(context, 1185, {})
	end
	
	return 0
end