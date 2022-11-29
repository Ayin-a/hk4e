-- 基础信息
local base_info = {
	group_id = 133103115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 21020201, pos = { x = 500.544, y = 168.896, z = 1182.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 115005, monster_id = 21010701, pos = { x = 496.646, y = 168.479, z = 1200.102 }, rot = { x = 0.000, y = 48.446, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 115006, monster_id = 21010701, pos = { x = 510.682, y = 167.421, z = 1204.635 }, rot = { x = 0.000, y = 83.975, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115002, gadget_id = 70211022, pos = { x = 493.903, y = 168.874, z = 1179.008 }, rot = { x = 0.602, y = 24.963, z = 7.155 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 115008, gadget_id = 70310001, pos = { x = 522.127, y = 167.927, z = 1208.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 115009, gadget_id = 70220013, pos = { x = 493.773, y = 168.587, z = 1192.495 }, rot = { x = 0.000, y = 45.980, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 115010, gadget_id = 70310001, pos = { x = 498.562, y = 168.398, z = 1201.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 115011, gadget_id = 70310009, pos = { x = 500.272, y = 168.523, z = 1185.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1115003, name = "ANY_MONSTER_DIE_115003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115003", action = "action_EVENT_ANY_MONSTER_DIE_115003" }
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
		-- description = suite_1,
		monsters = { 115001, 115005, 115006 },
		gadgets = { 115002, 115008, 115009, 115010, 115011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_115003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_115003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_115003(context, evt)
	-- 将configid为 115002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115002, GadgetState.Default) then
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