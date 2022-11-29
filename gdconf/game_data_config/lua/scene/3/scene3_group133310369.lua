-- 基础信息
local base_info = {
	group_id = 133310369
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 369001, monster_id = 25210202, pos = { x = -2495.593, y = 190.870, z = 4617.263 }, rot = { x = 0.000, y = 29.723, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9505, area_id = 26 },
	{ config_id = 369005, monster_id = 25210401, pos = { x = -2504.016, y = 191.979, z = 4614.743 }, rot = { x = 0.000, y = 6.825, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 26 },
	{ config_id = 369006, monster_id = 25210303, pos = { x = -2518.659, y = 193.043, z = 4605.997 }, rot = { x = 0.000, y = 283.842, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 369008, monster_id = 28060901, pos = { x = -2493.831, y = 190.665, z = 4614.494 }, rot = { x = 0.000, y = 21.964, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 2, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369002, gadget_id = 70211002, pos = { x = -2500.164, y = 191.457, z = 4616.732 }, rot = { x = 2.850, y = 176.701, z = 6.253 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 369004, gadget_id = 70310006, pos = { x = -2503.396, y = 191.779, z = 4618.030 }, rot = { x = 0.000, y = 46.740, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 369007, gadget_id = 70330396, pos = { x = -2514.407, y = 193.162, z = 4608.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369003, name = "ANY_MONSTER_DIE_369003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_369003", action = "action_EVENT_ANY_MONSTER_DIE_369003" }
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
		monsters = { 369001, 369005, 369006, 369008 },
		gadgets = { 369002, 369004, 369007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_369003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_369003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_369003(context, evt)
	-- 将configid为 369002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369002, GadgetState.Default) then
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