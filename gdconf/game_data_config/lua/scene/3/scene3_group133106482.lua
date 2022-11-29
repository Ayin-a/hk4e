-- 基础信息
local base_info = {
	group_id = 133106482
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
	{ config_id = 482001, gadget_id = 70290199, pos = { x = -458.774, y = 194.396, z = 1661.558 }, rot = { x = 357.409, y = 304.668, z = 3.959 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 482002, gadget_id = 70290190, pos = { x = -480.177, y = 194.544, z = 1665.307 }, rot = { x = 2.499, y = 260.845, z = 4.974 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 482003, gadget_id = 70290191, pos = { x = -470.170, y = 194.871, z = 1667.685 }, rot = { x = 355.565, y = 349.816, z = 1.280 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 482004, gadget_id = 70211101, pos = { x = -459.160, y = 194.385, z = 1661.081 }, rot = { x = 0.000, y = 265.885, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 482005, gadget_id = 70330021, pos = { x = -468.546, y = 195.925, z = 1673.005 }, rot = { x = 310.299, y = 351.986, z = 34.818 }, level = 36, area_id = 19 },
	{ config_id = 482007, gadget_id = 70290191, pos = { x = -472.039, y = 194.101, z = 1658.941 }, rot = { x = 358.489, y = 296.895, z = 5.333 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1482006, name = "ANY_GADGET_DIE_482006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_482006", action = "action_EVENT_ANY_GADGET_DIE_482006" }
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
		gadgets = { 482001, 482002, 482003, 482004, 482005, 482007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_482006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_482006(context, evt)
	if 482001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_482006(context, evt)
	-- 将configid为 482004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end