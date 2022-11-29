-- 基础信息
local base_info = {
	group_id = 155005145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 24020101, pos = { x = 544.353, y = 203.400, z = 617.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 },
	{ config_id = 145004, monster_id = 24020101, pos = { x = 550.609, y = 212.813, z = 607.870 }, rot = { x = 0.000, y = 346.308, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145002, gadget_id = 70211002, pos = { x = 538.927, y = 213.776, z = 610.340 }, rot = { x = 359.745, y = 212.941, z = 0.027 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145003, name = "ANY_MONSTER_DIE_145003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145003", action = "action_EVENT_ANY_MONSTER_DIE_145003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 145005, monster_id = 24020201, pos = { x = 537.356, y = 212.691, z = 604.164 }, rot = { x = 0.000, y = 28.304, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 }
	}
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
		monsters = { 145001, 145004 },
		gadgets = { 145002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	-- 将configid为 145002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145002, GadgetState.Default) then
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