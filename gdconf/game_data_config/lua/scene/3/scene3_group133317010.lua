-- 基础信息
local base_info = {
	group_id = 133317010
}

-- DEFS_MISCS
local elf_flowers = {10001, 10002, 10003, 10004}

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
	{ config_id = 10001, gadget_id = 70290733, pos = { x = 493.522, y = 310.722, z = 5772.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 10002, gadget_id = 70290733, pos = { x = 488.529, y = 310.374, z = 5766.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 10003, gadget_id = 70290733, pos = { x = 481.655, y = 309.885, z = 5763.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 10004, gadget_id = 70290733, pos = { x = 474.688, y = 309.802, z = 5760.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 10005, gadget_id = 70211102, pos = { x = 476.843, y = 309.000, z = 5771.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010006, name = "VARIABLE_CHANGE_10006", event = EventType.EVENT_VARIABLE_CHANGE, source = "Finished", condition = "condition_EVENT_VARIABLE_CHANGE_10006", action = "action_EVENT_VARIABLE_CHANGE_10006" }
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
		gadgets = { 10001, 10002, 10003, 10004, 10005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_10006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 1 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10006(context, evt)
	-- 将configid为 10005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_6/PB_ElfFlower"