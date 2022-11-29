-- 基础信息
local base_info = {
	group_id = 133210008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25080201, pos = { x = -3761.342, y = 203.495, z = -1378.073 }, rot = { x = 0.000, y = 202.884, z = 0.000 }, level = 32, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 17 },
	{ config_id = 8004, monster_id = 25080201, pos = { x = -3764.696, y = 200.213, z = -1383.839 }, rot = { x = 0.000, y = 271.587, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 17 },
	{ config_id = 8005, monster_id = 25080201, pos = { x = -3769.121, y = 200.000, z = -1382.893 }, rot = { x = 0.000, y = 99.483, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8002, gadget_id = 70211002, pos = { x = -3763.864, y = 200.960, z = -1379.470 }, rot = { x = 10.752, y = 222.716, z = 2.684 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 8006, gadget_id = 70300104, pos = { x = -3759.534, y = 200.442, z = -1383.580 }, rot = { x = 359.428, y = 97.028, z = 350.107 }, level = 30, area_id = 17 },
	{ config_id = 8007, gadget_id = 70310006, pos = { x = -3765.455, y = 200.568, z = -1381.111 }, rot = { x = 0.000, y = 359.709, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 8008, gadget_id = 70220048, pos = { x = -3765.969, y = 201.126, z = -1377.426 }, rot = { x = 355.810, y = 322.389, z = 7.687 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "ANY_MONSTER_DIE_8003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8003", action = "action_EVENT_ANY_MONSTER_DIE_8003" }
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
		monsters = { 8001, 8004, 8005 },
		gadgets = { 8002, 8006, 8007, 8008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.Default) then
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