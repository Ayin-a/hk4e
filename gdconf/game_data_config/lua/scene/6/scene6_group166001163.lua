-- 基础信息
local base_info = {
	group_id = 166001163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 23010601, pos = { x = 885.797, y = 709.666, z = 200.266 }, rot = { x = 0.000, y = 18.350, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9002, area_id = 300 },
	{ config_id = 163004, monster_id = 23010601, pos = { x = 878.597, y = 709.954, z = 202.732 }, rot = { x = 0.000, y = 28.371, z = 0.000 }, level = 36, drop_tag = "先遣队", pose_id = 9002, area_id = 300 },
	{ config_id = 163005, monster_id = 23010301, pos = { x = 893.973, y = 709.637, z = 202.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "先遣队", area_id = 300 },
	{ config_id = 163006, monster_id = 23050101, pos = { x = 884.094, y = 709.574, z = 206.147 }, rot = { x = 0.000, y = 199.698, z = 0.000 }, level = 36, drop_tag = "藏镜侍女", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163002, gadget_id = 70211022, pos = { x = 880.356, y = 710.075, z = 197.955 }, rot = { x = 0.000, y = 13.375, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 163007, gadget_id = 70220048, pos = { x = 899.566, y = 710.280, z = 204.574 }, rot = { x = 0.000, y = 330.165, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163008, gadget_id = 70220048, pos = { x = 871.169, y = 709.917, z = 197.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163009, gadget_id = 70220048, pos = { x = 869.510, y = 709.648, z = 196.552 }, rot = { x = 0.000, y = 338.323, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163010, gadget_id = 70220048, pos = { x = 880.190, y = 709.421, z = 213.473 }, rot = { x = 0.000, y = 346.836, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163011, gadget_id = 70220050, pos = { x = 878.500, y = 709.990, z = 201.035 }, rot = { x = 0.000, y = 241.565, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163012, gadget_id = 70220051, pos = { x = 878.945, y = 710.132, z = 200.800 }, rot = { x = 279.151, y = 38.727, z = 325.875 }, level = 32, area_id = 300 },
	{ config_id = 163013, gadget_id = 70220052, pos = { x = 881.576, y = 709.978, z = 198.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 163014, gadget_id = 70220051, pos = { x = 879.334, y = 710.167, z = 197.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163003, name = "ANY_MONSTER_DIE_163003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163003", action = "action_EVENT_ANY_MONSTER_DIE_163003" },
	{ config_id = 1163016, name = "MONSTER_BATTLE_163016", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_163016" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 163015, gadget_id = 70500000, pos = { x = 875.329, y = 710.275, z = 210.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2006, isOneoff = true, area_id = 300 }
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
		monsters = { 163005, 163006 },
		gadgets = { 163002, 163007, 163008, 163009, 163010, 163011, 163012, 163013, 163014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_163003", "MONSTER_BATTLE_163016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 163001, 163004 },
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
function condition_EVENT_ANY_MONSTER_DIE_163003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163003(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_163016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001163, 2)
	
	return 0
end