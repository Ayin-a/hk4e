-- 基础信息
local base_info = {
	group_id = 247009017
}

-- DEFS_MISCS
local BossOperatorConfigID = 17002
local QuitPointConfigID = 17001
local BossPoolID = 28060
local GroupId = 247009017
local MainGroupID = 247009001
local RegionID = 17007
local questID = 0
local doorConfigID = 0
local doorBossFrontID = 17008
local doorBossBackID = 17005
local ThunderFloorTimeAxis = { 5,9 }
local ThunderFloorList = {17013,17009,17010,17011,17012,17018,17019,17020,17021,17022,17023,17024,17025,17026,17027,17028,17029,17030,17031,17032,17033,17034,17035}
local lastDoorConfigID = 0
local isLastRoom = 0
local EnterRoomTrigger = 17007
local PlotRoom = {regionID= 0 , groupID= 0}
local AirWallConfigID = 17046
local DestinationConfigID = 0
local BossDoorPos = {x=0,y=0,z=0}
local BossDoorRot = {0}
local nextQuestID = 0
local DestinationPos = {x=0,y=0,z=0}
local DestinationRot = {0}

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
	{ config_id = 17001, gadget_id = 70310108, pos = { x = 0.078, y = -0.486, z = 698.991 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 17002, gadget_id = 70310122, pos = { x = 0.000, y = -3.169, z = 670.126 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 17005, gadget_id = 70310125, pos = { x = 0.000, y = -2.844, z = 694.743 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 17006, gadget_id = 70900201, pos = { x = 0.027, y = -3.031, z = 704.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17008, gadget_id = 70310125, pos = { x = 0.024, y = 0.206, z = 620.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 17009, gadget_id = 70360285, pos = { x = -0.110, y = 0.154, z = 606.901 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17010, gadget_id = 70360285, pos = { x = -0.110, y = 0.154, z = 609.573 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17011, gadget_id = 70360285, pos = { x = -0.110, y = 0.154, z = 600.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17012, gadget_id = 70360285, pos = { x = -0.110, y = 0.154, z = 602.916 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17013, gadget_id = 70360285, pos = { x = -0.110, y = 0.154, z = 617.274 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17014, gadget_id = 70310154, pos = { x = 5.303, y = 1.694, z = 621.900 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 17015, gadget_id = 70310154, pos = { x = 5.304, y = 1.694, z = 625.236 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 17016, gadget_id = 70310154, pos = { x = -4.689, y = 4.706, z = 633.533 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17017, gadget_id = 70310154, pos = { x = -4.688, y = 4.706, z = 636.869 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 17018, gadget_id = 70360285, pos = { x = -2.265, y = -9.955, z = 366.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17019, gadget_id = 70360285, pos = { x = 0.332, y = -9.955, z = 366.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17020, gadget_id = 70360285, pos = { x = 2.866, y = -9.955, z = 366.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17021, gadget_id = 70360285, pos = { x = -2.265, y = -9.955, z = 361.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17022, gadget_id = 70360285, pos = { x = 0.332, y = -9.955, z = 361.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17023, gadget_id = 70360285, pos = { x = 2.866, y = -9.955, z = 361.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17024, gadget_id = 70360285, pos = { x = -2.265, y = -9.955, z = 355.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17025, gadget_id = 70360285, pos = { x = 0.332, y = -9.955, z = 355.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17026, gadget_id = 70360285, pos = { x = 2.866, y = -9.955, z = 355.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17027, gadget_id = 70360285, pos = { x = -82.507, y = -9.955, z = 526.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17028, gadget_id = 70360285, pos = { x = -79.910, y = -9.955, z = 526.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17029, gadget_id = 70360285, pos = { x = -77.376, y = -9.955, z = 526.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17030, gadget_id = 70360285, pos = { x = -82.507, y = -9.955, z = 521.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17031, gadget_id = 70360285, pos = { x = -79.910, y = -9.955, z = 521.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17032, gadget_id = 70360285, pos = { x = -77.376, y = -9.955, z = 521.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17033, gadget_id = 70360285, pos = { x = -82.507, y = -9.955, z = 515.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17034, gadget_id = 70360285, pos = { x = -79.910, y = -9.955, z = 515.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17035, gadget_id = 70360285, pos = { x = -77.376, y = -9.955, z = 515.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17037, gadget_id = 70360288, pos = { x = -0.030, y = 6.586, z = 650.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 17038, gadget_id = 70360291, pos = { x = -5.743, y = 1.769, z = 622.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17039, gadget_id = 70360291, pos = { x = -5.681, y = 1.777, z = 625.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17040, gadget_id = 70360291, pos = { x = 6.024, y = 4.731, z = 633.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17041, gadget_id = 70360291, pos = { x = 6.024, y = 4.756, z = 636.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17046, gadget_id = 70950060, pos = { x = -0.010, y = -4.319, z = 670.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 17007, shape = RegionShape.CUBIC, size = { x = 70.000, y = 30.000, z = 50.000 }, pos = { x = 0.000, y = -3.169, z = 670.000 } },
	{ config_id = 17042, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 4.500 }, pos = { x = 1.450, y = 1.694, z = 621.900 } },
	{ config_id = 17043, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 4.500 }, pos = { x = 1.450, y = 1.694, z = 625.978 } },
	{ config_id = 17044, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 4.500 }, pos = { x = 1.450, y = 3.686, z = 633.606 } },
	{ config_id = 17045, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 4.500 }, pos = { x = 1.450, y = 3.686, z = 636.805 } }
}

-- 触发器
triggers = {
	{ config_id = 1017007, name = "ENTER_REGION_17007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1017042, name = "ENTER_REGION_17042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17042", action = "action_EVENT_ENTER_REGION_17042", trigger_count = 0 },
	{ config_id = 1017043, name = "ENTER_REGION_17043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17043", action = "action_EVENT_ENTER_REGION_17043", trigger_count = 0 },
	{ config_id = 1017044, name = "ENTER_REGION_17044", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17044", action = "action_EVENT_ENTER_REGION_17044", trigger_count = 0 },
	{ config_id = 1017045, name = "ENTER_REGION_17045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17045", action = "action_EVENT_ENTER_REGION_17045", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 17003, pos = { x = -0.017, y = -4.299, z = 675.300 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 17004, pos = { x = -5.980, y = -4.319, z = 680.103 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17036, pos = { x = 6.268, y = -4.269, z = 679.902 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17047, pos = { x = -6.989, y = -4.319, z = 675.100 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17048, pos = { x = 7.301, y = -4.269, z = 673.988 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17049, pos = { x = -0.017, y = -4.299, z = 672.527 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 17050, pos = { x = -5.980, y = -4.319, z = 677.330 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17051, pos = { x = 6.268, y = -4.269, z = 677.129 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17052, pos = { x = -6.989, y = -4.319, z = 672.327 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17053, pos = { x = 7.301, y = -4.269, z = 671.215 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17054, pos = { x = -0.017, y = -4.299, z = 676.999 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 17055, pos = { x = -5.980, y = -4.319, z = 681.802 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17056, pos = { x = 6.268, y = -4.269, z = 681.601 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17057, pos = { x = -6.989, y = -4.319, z = 676.799 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17058, pos = { x = 7.301, y = -4.269, z = 675.687 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17059, pos = { x = -0.017, y = -4.299, z = 674.226 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 17060, pos = { x = -5.980, y = -4.319, z = 679.029 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17061, pos = { x = 6.268, y = -4.269, z = 678.828 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17062, pos = { x = -6.989, y = -4.319, z = 674.026 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, tag = 1 },
	{ config_id = 17063, pos = { x = 7.301, y = -4.269, z = 672.914 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 },
	{ config_id = 17064, pos = { x = 2.094, y = -4.269, z = 676.371 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, tag = 1 }
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
		gadgets = { 17002, 17005, 17008, 17009, 17010, 17011, 17012, 17013, 17014, 17015, 17016, 17017, 17018, 17019, 17020, 17021, 17022, 17023, 17024, 17025, 17026, 17027, 17028, 17029, 17030, 17031, 17032, 17033, 17034, 17035, 17037, 17038, 17039, 17040, 17041 },
		regions = { 17007, 17042, 17043, 17044, 17045 },
		triggers = { "ENTER_REGION_17007", "ENTER_REGION_17042", "ENTER_REGION_17043", "ENTER_REGION_17044", "ENTER_REGION_17045" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17001, 17046 },
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
function condition_EVENT_ENTER_REGION_17042(context, evt)
	if evt.param1 ~= 17042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17042(context, evt)
	-- 将configid为 17014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17043(context, evt)
	if evt.param1 ~= 17043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17043(context, evt)
	-- 将configid为 17015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17044(context, evt)
	if evt.param1 ~= 17044 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17044(context, evt)
	-- 将configid为 17016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17045(context, evt)
	if evt.param1 ~= 17045 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17045(context, evt)
	-- 将configid为 17017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_BOSS"