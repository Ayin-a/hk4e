-- 基础信息
local base_info = {
	group_id = 133106469
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 469001, monster_id = 25010301, pos = { x = -943.051, y = 208.145, z = 1679.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 19 },
	{ config_id = 469004, monster_id = 25010301, pos = { x = -925.813, y = 207.132, z = 1686.725 }, rot = { x = 0.000, y = 73.831, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 19 },
	{ config_id = 469005, monster_id = 25010301, pos = { x = -941.653, y = 207.323, z = 1670.232 }, rot = { x = 0.000, y = 275.076, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 19 },
	{ config_id = 469006, monster_id = 25010401, pos = { x = -944.385, y = 207.452, z = 1671.871 }, rot = { x = 0.000, y = 131.672, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 469002, gadget_id = 70211002, pos = { x = -941.203, y = 207.685, z = 1677.839 }, rot = { x = 0.000, y = 132.385, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 469007, gadget_id = 70310010, pos = { x = -944.087, y = 207.362, z = 1671.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1469003, name = "ANY_MONSTER_DIE_469003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_469003", action = "action_EVENT_ANY_MONSTER_DIE_469003" }
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
		monsters = { 469001, 469004, 469005, 469006 },
		gadgets = { 469002, 469007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_469003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_469003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_469003(context, evt)
	-- 将configid为 469002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 469002, GadgetState.Default) then
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