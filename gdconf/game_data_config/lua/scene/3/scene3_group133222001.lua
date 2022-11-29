-- 基础信息
local base_info = {
	group_id = 133222001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25010301, pos = { x = -4235.382, y = 200.039, z = -4324.953 }, rot = { x = 0.000, y = 14.182, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 14 },
	{ config_id = 1005, monster_id = 25060101, pos = { x = -4226.794, y = 200.281, z = -4317.475 }, rot = { x = 0.000, y = 87.026, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9006, area_id = 14 },
	{ config_id = 1006, monster_id = 25030201, pos = { x = -4236.179, y = 200.997, z = -4310.744 }, rot = { x = 0.000, y = 227.220, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9005, area_id = 14 },
	{ config_id = 1008, monster_id = 25010301, pos = { x = -4228.304, y = 200.214, z = -4324.036 }, rot = { x = 4.908, y = 328.701, z = 1.195 }, level = 30, drop_tag = "盗宝团", area_id = 14 },
	{ config_id = 1009, monster_id = 25030201, pos = { x = -4224.386, y = 200.338, z = -4317.287 }, rot = { x = 0.000, y = 340.882, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9002, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211002, pos = { x = -4234.779, y = 200.508, z = -4313.560 }, rot = { x = 0.000, y = 159.907, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" },
	{ config_id = 1001004, name = "MONSTER_BATTLE_1004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_1004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 1007, monster_id = 25010201, pos = { x = -4222.132, y = 200.070, z = -4329.672 }, rot = { x = 0.000, y = 198.730, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9004, area_id = 14 },
		{ config_id = 1010, monster_id = 25060101, pos = { x = -4238.105, y = 200.706, z = -4319.518 }, rot = { x = 0.000, y = 43.823, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9006, area_id = 14 }
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
		monsters = { 1005, 1006, 1009 },
		gadgets = { 1002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003", "MONSTER_BATTLE_1004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1008 },
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
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_1004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222001, 2)
	
	return 0
end