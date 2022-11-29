-- 基础信息
local base_info = {
	group_id = 133220614
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 614001, monster_id = 25080301, pos = { x = -1876.358, y = 223.459, z = -4225.614 }, rot = { x = 0.000, y = 140.620, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, area_id = 11 },
	{ config_id = 614004, monster_id = 25080301, pos = { x = -1871.047, y = 223.283, z = -4228.749 }, rot = { x = 0.000, y = 218.433, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 614002, gadget_id = 70211002, pos = { x = -1875.441, y = 223.367, z = -4229.936 }, rot = { x = 0.000, y = 29.877, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 614005, gadget_id = 70310004, pos = { x = -1869.764, y = 224.641, z = -4222.095 }, rot = { x = 353.532, y = 355.622, z = 5.153 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1614003, name = "ANY_MONSTER_DIE_614003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_614003", action = "action_EVENT_ANY_MONSTER_DIE_614003" }
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
		monsters = { 614001, 614004 },
		gadgets = { 614002, 614005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_614003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_614003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_614003(context, evt)
	-- 将configid为 614002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 614002, GadgetState.Default) then
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