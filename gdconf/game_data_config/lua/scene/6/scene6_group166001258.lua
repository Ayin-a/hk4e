-- 基础信息
local base_info = {
	group_id = 166001258
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 258001, monster_id = 25010301, pos = { x = 1168.074, y = 967.488, z = 519.434 }, rot = { x = 0.000, y = 302.737, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 300 },
	{ config_id = 258004, monster_id = 25070101, pos = { x = 1162.815, y = 967.313, z = 523.019 }, rot = { x = 0.000, y = 316.371, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 258005, monster_id = 25010501, pos = { x = 1147.448, y = 968.622, z = 506.295 }, rot = { x = 0.000, y = 301.205, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 2, area_id = 300 },
	{ config_id = 258006, monster_id = 25010201, pos = { x = 1164.503, y = 967.409, z = 519.069 }, rot = { x = 0.000, y = 82.193, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 258002, gadget_id = 70211002, pos = { x = 1169.955, y = 967.843, z = 515.548 }, rot = { x = 3.997, y = 306.157, z = 357.109 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 258007, gadget_id = 70220048, pos = { x = 1160.329, y = 966.889, z = 514.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 258008, gadget_id = 70220048, pos = { x = 1170.362, y = 967.369, z = 522.926 }, rot = { x = 0.000, y = 278.986, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258003, name = "ANY_MONSTER_DIE_258003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_258003", action = "action_EVENT_ANY_MONSTER_DIE_258003" }
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
		monsters = { 258001, 258004, 258005, 258006 },
		gadgets = { 258002, 258007, 258008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_258003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_258003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_258003(context, evt)
	-- 将configid为 258002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258002, GadgetState.Default) then
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