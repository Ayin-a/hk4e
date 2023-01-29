-- 基础信息
local base_info = {
	group_id = 133317021
}

-- DEFS_MISCS
local defs = {
 drum = 21002, --鼓的ConfigID
 interval = 2, --敲鼓的节奏间隔
 reminder_success = 400112, --挑战成功Reminder
 reminder_fail = 400113,--挑战失败Reminder
region_id = 21004, --配置一个敲鼓的区域，
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
	{ config_id = 21001, gadget_id = 70211102, pos = { x = 965.080, y = 364.138, z = 5977.515 }, rot = { x = 6.484, y = 193.540, z = 359.728 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 21002, gadget_id = 70900431, pos = { x = 961.612, y = 363.180, z = 5971.490 }, rot = { x = 356.641, y = 309.520, z = 5.202 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 21004, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 961.590, y = 364.047, z = 5971.377 }, area_id = 30, team_ability_group_list = { "TMHY_Drum_Play_AbilityGroup" } }
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "VARIABLE_CHANGE_21003", event = EventType.EVENT_VARIABLE_CHANGE, source = "Finished", condition = "condition_EVENT_VARIABLE_CHANGE_21003", action = "action_EVENT_VARIABLE_CHANGE_21003" },
	{ config_id = 1021004, name = "ENTER_REGION_21004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 21001, 21002 },
		regions = { 21004 },
		triggers = { "VARIABLE_CHANGE_21003", "ENTER_REGION_21004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 1 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21003(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_6/DrumSingle"