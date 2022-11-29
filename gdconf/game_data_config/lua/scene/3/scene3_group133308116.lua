-- 基础信息
local base_info = {
	group_id = 133308116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116001, monster_id = 21011001, pos = { x = -2171.482, y = 284.638, z = 4139.247 }, rot = { x = 0.000, y = 147.812, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 26 },
	{ config_id = 116005, monster_id = 21020201, pos = { x = -2167.361, y = 279.761, z = 4139.486 }, rot = { x = 0.000, y = 133.155, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 26 },
	{ config_id = 116007, monster_id = 21010401, pos = { x = -2167.687, y = 284.605, z = 4141.956 }, rot = { x = 0.000, y = 168.370, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 26 },
	{ config_id = 116009, monster_id = 21010201, pos = { x = -2160.448, y = 278.562, z = 4128.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 116002, gadget_id = 70211002, pos = { x = -2170.982, y = 284.630, z = 4140.876 }, rot = { x = 6.000, y = 83.268, z = 356.293 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116003, name = "ANY_MONSTER_DIE_116003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116003", action = "action_EVENT_ANY_MONSTER_DIE_116003" },
	{ config_id = 1116006, name = "MONSTER_BATTLE_116006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_116006", action = "action_EVENT_MONSTER_BATTLE_116006" }
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
		monsters = { 116005, 116007, 116009 },
		gadgets = { 116002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_116003", "MONSTER_BATTLE_116006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 116001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116003(context, evt)
	-- 将configid为 116002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_116006(context, evt)
	if 116005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_116006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308116, 2)
	
	return 0
end