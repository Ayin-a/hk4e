-- 基础信息
local base_info = {
	group_id = 133220447
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447001, monster_id = 25100101, pos = { x = -2432.590, y = 304.217, z = -4418.316 }, rot = { x = 2.283, y = 159.968, z = 358.317 }, level = 27, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 11 },
	{ config_id = 447004, monster_id = 25080101, pos = { x = -2428.998, y = 304.268, z = -4426.999 }, rot = { x = 0.000, y = 117.602, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 447002, gadget_id = 70211002, pos = { x = -2429.222, y = 303.511, z = -4416.901 }, rot = { x = 0.000, y = 6.982, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 447005, gadget_id = 70220052, pos = { x = -2435.663, y = 305.015, z = -4418.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 447006, gadget_id = 70220052, pos = { x = -2436.560, y = 304.879, z = -4418.695 }, rot = { x = 0.000, y = 254.151, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 447010, gadget_id = 70220025, pos = { x = -2435.787, y = 305.131, z = -4419.686 }, rot = { x = 80.902, y = 141.739, z = 142.091 }, level = 27, area_id = 11 },
	{ config_id = 447011, gadget_id = 70310006, pos = { x = -2436.211, y = 304.182, z = -4422.629 }, rot = { x = 0.000, y = 59.786, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1447003, name = "ANY_MONSTER_DIE_447003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447003", action = "action_EVENT_ANY_MONSTER_DIE_447003" }
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
		monsters = { 447001, 447004 },
		gadgets = { 447002, 447005, 447006, 447010, 447011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_447003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447003(context, evt)
	-- 将configid为 447002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end