-- 基础信息
local base_info = {
	group_id = 155005153
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 153001, monster_id = 21020801, pos = { x = 667.284, y = 263.130, z = 635.211 }, rot = { x = 0.000, y = 255.054, z = 0.000 }, level = 36, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 153004, monster_id = 21010101, pos = { x = 662.975, y = 262.627, z = 641.953 }, rot = { x = 19.498, y = 251.857, z = 353.116 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 153005, monster_id = 21010201, pos = { x = 662.503, y = 261.654, z = 634.401 }, rot = { x = 0.000, y = 58.570, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 153002, gadget_id = 70211022, pos = { x = 661.931, y = 261.515, z = 640.251 }, rot = { x = 356.980, y = 29.300, z = 15.362 }, level = 16, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 153006, gadget_id = 70310001, pos = { x = 663.531, y = 261.881, z = 636.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 153007, gadget_id = 70300089, pos = { x = 673.040, y = 265.819, z = 639.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153003, name = "ANY_MONSTER_DIE_153003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_153003", action = "action_EVENT_ANY_MONSTER_DIE_153003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 153008, gadget_id = 70300089, pos = { x = 668.102, y = 263.374, z = 641.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
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
		monsters = { 153001, 153004, 153005 },
		gadgets = { 153002, 153006, 153007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_153003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_153003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_153003(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.Default) then
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