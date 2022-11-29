-- 基础信息
local base_info = {
	group_id = 133310207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 25210301, pos = { x = -3016.933, y = 321.206, z = 4857.269 }, rot = { x = 0.000, y = 202.654, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 28 },
	{ config_id = 207003, monster_id = 25210203, pos = { x = -3002.751, y = 320.987, z = 4856.629 }, rot = { x = 0.000, y = 30.123, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 207004, monster_id = 25210502, pos = { x = -3009.935, y = 322.247, z = 4868.389 }, rot = { x = 0.000, y = 22.353, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 28 },
	{ config_id = 207005, monster_id = 25210302, pos = { x = -3024.729, y = 318.321, z = 4867.719 }, rot = { x = 0.000, y = 252.211, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207002, gadget_id = 70330397, pos = { x = -3012.180, y = 320.158, z = 4857.222 }, rot = { x = 7.971, y = 0.000, z = 6.743 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 207006, gadget_id = 70211002, pos = { x = -3014.461, y = 322.908, z = 4863.992 }, rot = { x = 359.846, y = 244.582, z = 4.046 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1207007, name = "ANY_MONSTER_DIE_207007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207007", action = "action_EVENT_ANY_MONSTER_DIE_207007" }
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
		monsters = { 207001, 207003, 207004, 207005 },
		gadgets = { 207002, 207006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_207007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207007(context, evt)
	-- 将configid为 207006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207006, GadgetState.Default) then
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