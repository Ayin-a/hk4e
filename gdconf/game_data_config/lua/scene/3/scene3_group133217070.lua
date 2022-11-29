-- 基础信息
local base_info = {
	group_id = 133217070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70005, monster_id = 24020301, pos = { x = -4255.654, y = 200.446, z = -3754.821 }, rot = { x = 0.000, y = 314.981, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 14 },
	{ config_id = 70006, monster_id = 24020301, pos = { x = -4280.591, y = 200.420, z = -3793.702 }, rot = { x = 359.681, y = 48.811, z = 0.697 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70002, gadget_id = 70211002, pos = { x = -4245.115, y = 200.865, z = -3764.239 }, rot = { x = 4.654, y = 57.652, z = 2.336 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070003, name = "ANY_MONSTER_DIE_70003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70003", action = "action_EVENT_ANY_MONSTER_DIE_70003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 70001, monster_id = 24020101, pos = { x = -4242.729, y = 200.808, z = -3767.146 }, rot = { x = 7.365, y = 73.018, z = 2.920 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 14 }
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
		monsters = { 70005, 70006 },
		gadgets = { 70002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70003(context, evt)
	-- 将configid为 70002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70002, GadgetState.Default) then
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