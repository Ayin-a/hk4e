-- 基础信息
local base_info = {
	group_id = 133301542
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 542002, monster_id = 22040101, pos = { x = -696.738, y = 125.451, z = 3983.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, isOneoff = true, pose_id = 101, area_id = 25 },
	{ config_id = 542003, monster_id = 22040101, pos = { x = -694.686, y = 125.443, z = 3985.414 }, rot = { x = 0.000, y = 279.019, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, isOneoff = true, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 542001, gadget_id = 70210102, pos = { x = -696.383, y = 125.699, z = 3985.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 25 },
	{ config_id = 542005, gadget_id = 70950145, pos = { x = -697.169, y = 125.310, z = 3984.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1542004, name = "GADGET_STATE_CHANGE_542004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_542004", action = "action_EVENT_GADGET_STATE_CHANGE_542004", trigger_count = 0 }
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
		gadgets = { 542005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 542002, 542003 },
		gadgets = { 542001, 542005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_542004(context, evt)
	if 542001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_542004(context, evt)
	-- 将configid为 542005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"