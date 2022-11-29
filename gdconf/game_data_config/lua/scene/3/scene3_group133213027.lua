-- 基础信息
local base_info = {
	group_id = 133213027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 25100101, pos = { x = -3746.759, y = 200.065, z = -3361.309 }, rot = { x = 5.944, y = 289.939, z = 359.311 }, level = 27, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 12 },
	{ config_id = 27004, monster_id = 25080301, pos = { x = -3748.826, y = 200.000, z = -3358.122 }, rot = { x = 0.000, y = 141.394, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 12 },
	{ config_id = 27005, monster_id = 25080201, pos = { x = -3749.997, y = 200.000, z = -3363.735 }, rot = { x = 0.000, y = 62.177, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27002, gadget_id = 70211002, pos = { x = -3745.676, y = 200.182, z = -3358.031 }, rot = { x = 2.121, y = 281.032, z = 3.145 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" }
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
		monsters = { 27001, 27004, 27005 },
		gadgets = { 27002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.Default) then
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