-- 基础信息
local base_info = {
	group_id = 144002095
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 21010201, pos = { x = 555.822, y = 202.424, z = -113.183 }, rot = { x = 0.000, y = 294.890, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 102 },
	{ config_id = 95004, monster_id = 21020201, pos = { x = 556.653, y = 202.516, z = -117.542 }, rot = { x = 0.000, y = 301.990, z = 0.000 }, level = 21, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 102 },
	{ config_id = 95005, monster_id = 21010401, pos = { x = 555.750, y = 202.533, z = -115.127 }, rot = { x = 0.000, y = 307.170, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", area_id = 102 },
	{ config_id = 95006, monster_id = 21010401, pos = { x = 554.525, y = 202.533, z = -116.087 }, rot = { x = 0.000, y = 300.670, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 102 },
	{ config_id = 95007, monster_id = 21010901, pos = { x = 562.859, y = 206.040, z = -104.550 }, rot = { x = 0.000, y = 356.866, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95002, gadget_id = 70211002, pos = { x = 561.778, y = 202.526, z = -119.026 }, rot = { x = 0.000, y = 304.210, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 95008, gadget_id = 70310006, pos = { x = 566.187, y = 202.436, z = -115.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 95009, gadget_id = 70220026, pos = { x = 562.919, y = 202.443, z = -114.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 95010, gadget_id = 70220013, pos = { x = 565.306, y = 202.351, z = -118.087 }, rot = { x = 0.000, y = 314.340, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095003, name = "ANY_MONSTER_DIE_95003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95003", action = "action_EVENT_ANY_MONSTER_DIE_95003" }
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
		monsters = { 95001, 95004, 95005, 95006, 95007 },
		gadgets = { 95002, 95008, 95009, 95010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95003(context, evt)
	-- 将configid为 95002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95002, GadgetState.Default) then
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