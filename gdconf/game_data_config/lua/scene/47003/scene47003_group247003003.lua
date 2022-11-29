-- 基础信息
local base_info = {
	group_id = 247003003
}

-- DEFS_MISCS
local BossOperatorConfigID = 3001
local QuitPointConfigID = 3006
local BossPoolID = 27001
local GroupId = 247003003
local MainGroupID = 247003001
local RegionID = 3007
local questID = 4002206
local questRegionID = 3008
local doorConfigID = 3016
local doorBossFrontID = 3002
local doorBossBackID = 3003
local finishQuestID = 4002204
local lastDoorConfigID = 3004
local ThunderFloorTimeAxis = { 5,9 }
local ThunderFloorList = {3014,3015,3018,3019,3020,3021,3022,3023,3030,3031,3032,3033,3034,3035,3036,3037,3043,3044,3045,3046,3047,3048,3049,3050}
local isLastRoom = 1
local AirWallConfigID = 3017
local DestinationConfigID = 3005
local EnterRoomTrigger = 3007
local PlotRoom = {regionID = 3051, groupID = 247003032}
local BossDoorPos = {x=319.907,y=3.629,z=409.988}
local BossDoorRot = {180}
local nextQuestID = 4002208
local DestinationPos = {x=319.907,y=1.652,z=411.77}
local DestinationRot = {0}
local preQuestID = 4002206

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
	{ config_id = 3001, gadget_id = 70310122, pos = { x = 320.000, y = -2.700, z = 350.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 前门
	{ config_id = 3002, gadget_id = 70310125, pos = { x = 319.930, y = -2.459, z = 320.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 后门
	{ config_id = 3003, gadget_id = 70310125, pos = { x = 319.909, y = 0.191, z = 399.878 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	-- 最后一扇门
	{ config_id = 3004, gadget_id = 70310125, pos = { x = 305.420, y = -0.644, z = 456.834 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70900201, pos = { x = 286.507, y = -0.470, z = 456.979 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70310108, pos = { x = 287.829, y = 1.532, z = 456.979 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70360285, pos = { x = 318.780, y = 0.098, z = 273.005 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70360285, pos = { x = 321.090, y = 0.098, z = 272.977 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	-- 剧情房门
	{ config_id = 3016, gadget_id = 70310125, pos = { x = 320.001, y = 0.095, z = 440.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70310151, pos = { x = 319.903, y = -2.700, z = 350.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70360285, pos = { x = 192.957, y = 0.098, z = 1.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70360285, pos = { x = 192.957, y = 0.098, z = -1.142 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70360285, pos = { x = 202.262, y = 0.098, z = 1.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70360285, pos = { x = 202.262, y = 0.098, z = -1.142 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70360285, pos = { x = 211.679, y = 0.098, z = 1.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70360285, pos = { x = 211.679, y = 0.098, z = -1.142 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70360285, pos = { x = 318.892, y = 0.098, z = 282.309 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70360285, pos = { x = 321.202, y = 0.098, z = 282.282 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70360285, pos = { x = 319.005, y = 0.098, z = 291.726 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70360285, pos = { x = 321.315, y = 0.098, z = 291.698 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70360285, pos = { x = 319.005, y = 0.098, z = 303.949 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70360285, pos = { x = 321.315, y = 0.098, z = 303.921 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3036, gadget_id = 70360285, pos = { x = 319.005, y = -2.661, z = 317.140 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3037, gadget_id = 70360285, pos = { x = 321.315, y = -2.661, z = 317.113 }, rot = { x = 0.000, y = 0.688, z = 0.000 }, level = 1 },
	{ config_id = 3038, gadget_id = 70310149, pos = { x = 315.195, y = -0.779, z = 472.199 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3039, gadget_id = 70310150, pos = { x = 315.195, y = -0.779, z = 472.199 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70360285, pos = { x = 51.651, y = 0.140, z = -1.052 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70360285, pos = { x = 51.651, y = 0.140, z = 1.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 70360285, pos = { x = 46.321, y = 0.140, z = -1.052 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70360285, pos = { x = 46.321, y = 0.140, z = 1.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3047, gadget_id = 70360285, pos = { x = 33.777, y = 0.140, z = -1.052 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3048, gadget_id = 70360285, pos = { x = 33.777, y = 0.140, z = 1.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3049, gadget_id = 70360285, pos = { x = 28.447, y = 0.140, z = -1.052 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3050, gadget_id = 70360285, pos = { x = 28.447, y = 0.140, z = 1.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3007, shape = RegionShape.CUBIC, size = { x = 80.000, y = 40.000, z = 70.000 }, pos = { x = 319.767, y = -2.700, z = 349.774 } },
	-- 进任务对话
	{ config_id = 3008, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 319.907, y = 4.303, z = 434.164 } },
	{ config_id = 3042, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 320.228, y = 2.955, z = 445.781 } },
	{ config_id = 3051, shape = RegionShape.CUBIC, size = { x = 60.000, y = 20.000, z = 40.000 }, pos = { x = 307.963, y = -0.992, z = 456.961 } }
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "ENTER_REGION_3007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 进任务对话
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1003040, name = "QUEST_START_3040", event = EventType.EVENT_QUEST_START, source = "4002206", condition = "", action = "action_EVENT_QUEST_START_3040" },
	{ config_id = 1003041, name = "TIMER_EVENT_3041", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_3041" },
	{ config_id = 1003042, name = "ENTER_REGION_3042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3042", action = "action_EVENT_ENTER_REGION_3042" }
}

-- 点位
points = {
	{ config_id = 3009, pos = { x = 325.502, y = -2.680, z = 360.789 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3010, pos = { x = 314.494, y = -2.700, z = 361.015 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3011, pos = { x = 317.186, y = -2.700, z = 359.078 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3012, pos = { x = 322.975, y = -2.700, z = 358.961 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3013, pos = { x = 320.013, y = -2.700, z = 358.877 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3014, 3015, 3016, 3018, 3019, 3020, 3021, 3022, 3023, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050 },
		regions = { 3007, 3008, 3042, 3051 },
		triggers = { "ENTER_REGION_3007", "ENTER_REGION_3008", "QUEST_START_3040", "TIMER_EVENT_3041", "ENTER_REGION_3042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3005, 3006, 3017 },
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
function action_EVENT_QUEST_START_3040(context, evt)
	-- 延迟2秒后,向groupId为：247003003的对象,请求一次调用,并将string参数："timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 247003003, "timer1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3041(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247003003, EntityType.GADGET, 3038 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3039的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3039 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3042(context, evt)
	if evt.param1 ~= 3042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3042(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10064, 1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context, 10064) then
	return -1
	end
	
	return 0
end

require "V2_2/RogueDungeon_BOSS"