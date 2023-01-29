-- 基础信息
local base_info = {
	group_id = 133317046
}

-- DEFS_MISCS
local defs = {
 drum = 46002, --鼓的ConfigID
 interval = 2, --敲鼓的节奏间隔
 reminder_success = 400112, --挑战成功Reminder
 reminder_fail = 400113,--挑战失败Reminder
region_id = 46004, --配置一个敲鼓的区域，
}
--敲鼓的节奏， 0空 1普攻 2下落 70900431鼓ID
local music_staff = {0,1,2, 0, 1,2 ,0,0}

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
	{ config_id = 46001, gadget_id = 70211102, pos = { x = 953.882, y = 356.652, z = 5922.680 }, rot = { x = 10.527, y = 64.021, z = 1.595 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 46002, gadget_id = 70900431, pos = { x = 957.314, y = 355.261, z = 5924.999 }, rot = { x = 6.998, y = 315.485, z = 351.944 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 46004, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 957.448, y = 355.223, z = 5925.192 }, area_id = 30, team_ability_group_list = { "TMHY_Drum_Play_AbilityGroup" } }
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "VARIABLE_CHANGE_46003", event = EventType.EVENT_VARIABLE_CHANGE, source = "Finished", condition = "condition_EVENT_VARIABLE_CHANGE_46003", action = "action_EVENT_VARIABLE_CHANGE_46003" },
	{ config_id = 1046004, name = "ENTER_REGION_46004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 46001, 46002 },
		regions = { 46004 },
		triggers = { "VARIABLE_CHANGE_46003", "ENTER_REGION_46004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_46003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 1 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_46003(context, evt)
	-- 将configid为 46001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_6/DrumSingle"