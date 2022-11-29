-- 基础信息
local base_info = {
	group_id = 133220595
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 595001, monster_id = 21010501, pos = { x = -2687.373, y = 251.900, z = -4472.915 }, rot = { x = 0.000, y = 130.416, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 11 },
	{ config_id = 595004, monster_id = 21010901, pos = { x = -2695.240, y = 246.230, z = -4477.259 }, rot = { x = 0.000, y = 6.817, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 595005, monster_id = 21011001, pos = { x = -2682.704, y = 249.056, z = -4484.015 }, rot = { x = 0.000, y = 140.292, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 595002, gadget_id = 70211002, pos = { x = -2685.686, y = 251.375, z = -4474.663 }, rot = { x = 1.169, y = 263.999, z = 8.241 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595003, name = "ANY_MONSTER_DIE_595003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_595003", action = "action_EVENT_ANY_MONSTER_DIE_595003" }
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
		monsters = { 595001, 595004, 595005 },
		gadgets = { 595002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_595003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_595003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_595003(context, evt)
	-- 将configid为 595002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595002, GadgetState.Default) then
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