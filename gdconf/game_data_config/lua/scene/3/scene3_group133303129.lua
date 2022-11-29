-- 基础信息
local base_info = {
	group_id = 133303129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 21010201, pos = { x = -1358.180, y = 289.051, z = 3733.361 }, rot = { x = 0.000, y = 167.958, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 23 },
	{ config_id = 129004, monster_id = 21010101, pos = { x = -1363.931, y = 289.872, z = 3733.972 }, rot = { x = 0.000, y = 146.830, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 129005, monster_id = 21010501, pos = { x = -1362.236, y = 289.512, z = 3731.959 }, rot = { x = 0.000, y = 169.487, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 23 },
	{ config_id = 129006, monster_id = 21010101, pos = { x = -1363.578, y = 289.533, z = 3739.287 }, rot = { x = 0.000, y = 305.597, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 129009, monster_id = 21030201, pos = { x = -1365.681, y = 289.686, z = 3731.183 }, rot = { x = 0.000, y = 150.638, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 129002, gadget_id = 70211002, pos = { x = -1364.823, y = 289.132, z = 3741.108 }, rot = { x = 353.788, y = 137.928, z = 356.393 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 129007, gadget_id = 70220005, pos = { x = -1364.936, y = 289.523, z = 3738.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 129008, gadget_id = 70220005, pos = { x = -1363.006, y = 289.602, z = 3733.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129003, name = "ANY_MONSTER_DIE_129003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129003", action = "action_EVENT_ANY_MONSTER_DIE_129003" }
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
		monsters = { 129001, 129004, 129005, 129006, 129009 },
		gadgets = { 129002, 129007, 129008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_129003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 将configid为 129002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 129002, GadgetState.Default) then
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