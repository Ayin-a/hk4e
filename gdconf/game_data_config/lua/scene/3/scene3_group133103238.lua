-- 基础信息
local base_info = {
	group_id = 133103238
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 238001, monster_id = 25070101, pos = { x = 82.085, y = 260.165, z = 1514.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 6 },
	{ config_id = 238004, monster_id = 25010501, pos = { x = 66.340, y = 259.319, z = 1502.951 }, rot = { x = 0.000, y = 28.500, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 6 },
	{ config_id = 238005, monster_id = 25030201, pos = { x = 66.822, y = 259.411, z = 1504.517 }, rot = { x = 0.000, y = 193.534, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 6 },
	{ config_id = 238006, monster_id = 25010201, pos = { x = 84.655, y = 260.461, z = 1503.697 }, rot = { x = 0.000, y = 44.638, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238002, gadget_id = 70211002, pos = { x = 82.565, y = 260.265, z = 1516.295 }, rot = { x = 3.477, y = 205.808, z = 350.840 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 238007, gadget_id = 70220048, pos = { x = 59.051, y = 259.735, z = 1509.323 }, rot = { x = 4.403, y = 359.624, z = 350.247 }, level = 27, area_id = 6 },
	{ config_id = 238008, gadget_id = 70220048, pos = { x = 59.950, y = 259.457, z = 1512.161 }, rot = { x = 0.000, y = 42.161, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 238009, gadget_id = 70220048, pos = { x = 86.737, y = 260.576, z = 1502.558 }, rot = { x = 0.000, y = 0.000, z = 8.881 }, level = 27, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238003, name = "ANY_MONSTER_DIE_238003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238003", action = "action_EVENT_ANY_MONSTER_DIE_238003" }
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
		monsters = { 238001, 238004, 238005, 238006 },
		gadgets = { 238002, 238007, 238008, 238009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 将configid为 238002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238002, GadgetState.Default) then
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