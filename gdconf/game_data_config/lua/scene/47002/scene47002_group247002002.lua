-- 基础信息
local base_info = {
	group_id = 247002002
}

-- DEFS_MISCS
local RegionID = 2003
local QuestID = 0
local GroupID = 247002002
local RoomDoorConfigID = 0
local DestinationConfigID = 0

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
	{ config_id = 2001, gadget_id = 70310125, pos = { x = 0.000, y = 0.114, z = -20.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70310125, pos = { x = -20.000, y = 0.114, z = 0.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70900201, pos = { x = 394.300, y = 1.300, z = 617.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70310125, pos = { x = 0.000, y = 0.000, z = 20.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2003, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "QUEST_START_2005", event = EventType.EVENT_QUEST_START, source = "4002107", condition = "", action = "action_EVENT_QUEST_START_2005" },
	{ config_id = 1002006, name = "QUEST_FINISH_2006", event = EventType.EVENT_QUEST_FINISH, source = "4002107", condition = "", action = "action_EVENT_QUEST_FINISH_2006" }
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
		gadgets = { 2001, 2002, 2007 },
		regions = { 2003 },
		triggers = { "QUEST_START_2005", "QUEST_FINISH_2006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_2005(context, evt)
	-- 创建id为2004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247002002, EntityType.GADGET, 2004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_2/RoqueDungeon_FirstRoom"