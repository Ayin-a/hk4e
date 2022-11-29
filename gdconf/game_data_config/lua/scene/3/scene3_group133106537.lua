-- 基础信息
local base_info = {
	group_id = 133106537
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537003, monster_id = 21010101, pos = { x = -608.727, y = 159.333, z = 1749.900 }, rot = { x = 0.000, y = 297.701, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9014, area_id = 19 },
	{ config_id = 537008, monster_id = 21010101, pos = { x = -595.206, y = 162.969, z = 1750.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 537001, gadget_id = 70290198, pos = { x = -581.159, y = 165.151, z = 1750.855 }, rot = { x = 338.333, y = 269.983, z = 0.452 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 537002, gadget_id = 70290190, pos = { x = -607.283, y = 159.841, z = 1753.006 }, rot = { x = 343.474, y = 355.321, z = 17.226 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 537004, gadget_id = 70211111, pos = { x = -580.387, y = 166.882, z = 1750.725 }, rot = { x = 22.534, y = 269.555, z = 10.531 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1537006, name = "ANY_GADGET_DIE_537006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_537006", action = "action_EVENT_ANY_GADGET_DIE_537006" }
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
		monsters = { 537003, 537008 },
		gadgets = { 537001, 537002, 537004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_537006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_537006(context, evt)
	if 537001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_537006(context, evt)
	-- 将configid为 537004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end