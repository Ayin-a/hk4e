-- 基础信息
local base_info = {
	group_id = 220028014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32, monster_id = 22010301, pos = { x = -54.389, y = -53.040, z = -49.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92, gadget_id = 70220013, pos = { x = -91.213, y = -67.607, z = -126.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 93, gadget_id = 70220013, pos = { x = -93.352, y = -67.607, z = -124.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94, gadget_id = 70220013, pos = { x = -90.387, y = -67.607, z = -121.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 95, gadget_id = 70220013, pos = { x = -89.814, y = -67.607, z = -124.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 96, gadget_id = 70220013, pos = { x = -15.426, y = -67.540, z = -123.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 97, gadget_id = 70220013, pos = { x = -14.119, y = -67.540, z = -121.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70220013, pos = { x = -16.294, y = -67.540, z = -120.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 99, gadget_id = 70220013, pos = { x = -13.606, y = -67.540, z = -118.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14001, shape = RegionShape.SPHERE, radius = 32.3, pos = { x = -53.791, y = -48.005, z = -43.638 } }
}

-- 触发器
triggers = {
	{ config_id = 1014001, name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_14001", forbid_guest = false }
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
		monsters = { 32 },
		gadgets = { 92, 93, 94, 95, 96, 97, 98, 99 },
		regions = { 14001 },
		triggers = { "ENTER_REGION_14001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_14001(context, evt)
	-- 改变指定group组220028003中， configid为3010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028003, 3010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end