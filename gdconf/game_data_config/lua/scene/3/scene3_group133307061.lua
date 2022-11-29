-- 基础信息
local base_info = {
	group_id = 133307061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61004, monster_id = 25310301, pos = { x = -1972.111, y = 151.927, z = 5825.904 }, rot = { x = 0.000, y = 74.888, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", area_id = 27 },
	{ config_id = 61005, monster_id = 25210203, pos = { x = -1968.580, y = 151.945, z = 5831.444 }, rot = { x = 0.000, y = 2.303, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 },
	{ config_id = 61007, monster_id = 28060901, pos = { x = -1976.885, y = 151.886, z = 5817.439 }, rot = { x = 0.000, y = 327.640, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 27 },
	{ config_id = 61008, monster_id = 25210501, pos = { x = -1962.632, y = 150.941, z = 5831.295 }, rot = { x = 0.000, y = 4.467, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 27 },
	{ config_id = 61009, monster_id = 25210401, pos = { x = -1961.907, y = 151.140, z = 5833.855 }, rot = { x = 0.000, y = 192.667, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61001, gadget_id = 70210101, pos = { x = -1964.154, y = 152.106, z = 5836.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 61002, gadget_id = 70211002, pos = { x = -1965.759, y = 151.516, z = 5832.091 }, rot = { x = 7.952, y = 89.307, z = 355.480 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 61006, gadget_id = 70210101, pos = { x = -1969.867, y = 152.348, z = 5828.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061003, name = "ANY_MONSTER_DIE_61003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61003", action = "action_EVENT_ANY_MONSTER_DIE_61003" }
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
		monsters = { 61004, 61005, 61007, 61008, 61009 },
		gadgets = { 61001, 61002, 61006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 将configid为 61002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61002, GadgetState.Default) then
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