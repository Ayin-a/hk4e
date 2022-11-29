-- 基础信息
local base_info = {
	group_id = 133106089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89001, monster_id = 25030201, pos = { x = -340.484, y = 227.764, z = 1194.069 }, rot = { x = 0.000, y = 177.882, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 8 },
	{ config_id = 89002, monster_id = 25010301, pos = { x = -338.916, y = 227.786, z = 1192.568 }, rot = { x = 0.000, y = 313.200, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 89003, monster_id = 25020201, pos = { x = -344.292, y = 227.665, z = 1188.842 }, rot = { x = 0.000, y = 73.342, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 89004, monster_id = 25010601, pos = { x = -341.045, y = 227.753, z = 1188.346 }, rot = { x = 0.000, y = 340.643, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89005, gadget_id = 70211012, pos = { x = -347.169, y = 227.766, z = 1189.147 }, rot = { x = 359.615, y = 51.206, z = 358.457 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 89006, gadget_id = 70310006, pos = { x = -343.669, y = 227.764, z = 1193.757 }, rot = { x = 1.851, y = 92.989, z = 2.516 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089007, name = "ANY_MONSTER_DIE_89007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89007", action = "action_EVENT_ANY_MONSTER_DIE_89007" },
	{ config_id = 1089008, name = "MONSTER_BATTLE_89008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_89008", action = "action_EVENT_MONSTER_BATTLE_89008" }
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
		monsters = { 89001, 89004 },
		gadgets = { 89005, 89006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89007", "MONSTER_BATTLE_89008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 89002, 89003 },
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
function condition_EVENT_ANY_MONSTER_DIE_89007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89007(context, evt)
	-- 将configid为 89005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89005, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_89008(context, evt)
	if 89004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_89008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106089, 2)
	
	return 0
end