-- 基础信息
local base_info = {
	group_id = 166001387
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 387001, monster_id = 25030301, pos = { x = 1004.044, y = 747.216, z = 270.394 }, rot = { x = 0.000, y = 70.241, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 300 },
	{ config_id = 387004, monster_id = 25070101, pos = { x = 1005.279, y = 747.099, z = 268.092 }, rot = { x = 0.000, y = 4.343, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 300 },
	{ config_id = 387005, monster_id = 25010301, pos = { x = 1013.629, y = 748.816, z = 260.642 }, rot = { x = 0.000, y = 273.010, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 387006, monster_id = 25010201, pos = { x = 1008.025, y = 748.639, z = 255.416 }, rot = { x = 0.000, y = 148.267, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 387002, gadget_id = 70211002, pos = { x = 1003.310, y = 748.333, z = 257.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 387007, gadget_id = 70290309, pos = { x = 1010.824, y = 748.253, z = 264.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 387008, gadget_id = 70290309, pos = { x = 1017.374, y = 750.101, z = 247.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1387003, name = "ANY_MONSTER_DIE_387003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_387003", action = "action_EVENT_ANY_MONSTER_DIE_387003" }
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
		monsters = { 387001, 387004, 387005, 387006 },
		gadgets = { 387002, 387007, 387008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_387003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_387003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_387003(context, evt)
	-- 将configid为 387002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 387002, GadgetState.Default) then
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