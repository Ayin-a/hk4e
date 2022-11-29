-- 基础信息
local base_info = {
	group_id = 133102101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 21010301, pos = { x = 1321.229, y = 200.339, z = -147.912 }, rot = { x = 0.000, y = 321.886, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 101005, monster_id = 21010501, pos = { x = 1336.713, y = 200.219, z = -145.873 }, rot = { x = 0.000, y = 104.172, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 101006, monster_id = 21020501, pos = { x = 1336.528, y = 200.395, z = -137.628 }, rot = { x = 0.000, y = 210.126, z = 0.000 }, level = 16, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101002, gadget_id = 70211022, pos = { x = 1335.187, y = 200.456, z = -147.460 }, rot = { x = 15.254, y = 299.492, z = 352.688 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 101007, gadget_id = 70300088, pos = { x = 1342.962, y = 200.176, z = -145.685 }, rot = { x = 0.000, y = 196.806, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 101008, gadget_id = 70220026, pos = { x = 1335.603, y = 200.301, z = -134.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 101009, gadget_id = 70220013, pos = { x = 1337.724, y = 200.248, z = -133.182 }, rot = { x = 0.000, y = 157.704, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 101010, gadget_id = 70220013, pos = { x = 1340.055, y = 200.359, z = -135.640 }, rot = { x = 0.000, y = 157.704, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 101011, gadget_id = 70300089, pos = { x = 1323.645, y = 200.356, z = -153.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 101012, gadget_id = 70300089, pos = { x = 1326.917, y = 200.324, z = -140.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003" }
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
		monsters = { 101001, 101005, 101006 },
		gadgets = { 101002, 101007, 101008, 101009, 101010, 101011, 101012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end