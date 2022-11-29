-- 基础信息
local base_info = {
	group_id = 166001273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 273004, monster_id = 25070101, pos = { x = 999.520, y = 917.353, z = 498.394 }, rot = { x = 0.000, y = 272.867, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 },
	{ config_id = 273005, monster_id = 25060101, pos = { x = 992.261, y = 919.389, z = 495.118 }, rot = { x = 0.000, y = 2.898, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 2, area_id = 300 },
	{ config_id = 273006, monster_id = 25010201, pos = { x = 995.150, y = 917.933, z = 509.111 }, rot = { x = 0.000, y = 274.893, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 300 },
	{ config_id = 273007, monster_id = 25010501, pos = { x = 990.362, y = 922.865, z = 505.520 }, rot = { x = 0.000, y = 88.882, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 2, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 273002, gadget_id = 70211012, pos = { x = 996.193, y = 919.228, z = 518.722 }, rot = { x = 0.000, y = 321.826, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1273003, name = "ANY_MONSTER_DIE_273003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273003", action = "action_EVENT_ANY_MONSTER_DIE_273003" }
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
		monsters = { 273004, 273005, 273006, 273007 },
		gadgets = { 273002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_273003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_273003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_273003(context, evt)
	-- 将configid为 273002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273002, GadgetState.Default) then
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