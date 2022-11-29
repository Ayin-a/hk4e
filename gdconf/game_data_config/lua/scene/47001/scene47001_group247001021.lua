-- 基础信息
local base_info = {
	group_id = 247001021
}

-- DEFS_MISCS
local RegionID = 21004
local QuestID = 4002023
local GroupID = 247001021
local RoomDoorConfigID = 21002
local DestinationConfigID = 21001

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
	{ config_id = 21001, gadget_id = 70900201, pos = { x = 0.107, y = -2.512, z = 702.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21002, gadget_id = 70310125, pos = { x = 0.000, y = 0.206, z = 19.826 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 21004, shape = RegionShape.CUBIC, size = { x = 35.000, y = 20.000, z = 35.000 }, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1021004, name = "ENTER_REGION_21004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1021005, name = "QUEST_FINISH_21005", event = EventType.EVENT_QUEST_FINISH, source = "4002023", condition = "", action = "action_EVENT_QUEST_FINISH_21005" }
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
		gadgets = { 21002 },
		regions = { 21004 },
		triggers = { "ENTER_REGION_21004", "QUEST_FINISH_21005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_21005(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RoqueDungeon_FirstRoom"