-- 基础信息
local base_info = {
	group_id = 133302397
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 397001, monster_id = 25070101, pos = { x = -126.468, y = 231.437, z = 2346.386 }, rot = { x = 0.000, y = 62.665, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 20 },
	{ config_id = 397002, monster_id = 25010201, pos = { x = -129.558, y = 231.410, z = 2340.886 }, rot = { x = 0.000, y = 90.381, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9003, area_id = 20 },
	{ config_id = 397003, monster_id = 25210301, pos = { x = -124.960, y = 231.460, z = 2346.802 }, rot = { x = 0.000, y = 250.349, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9003, area_id = 20 },
	{ config_id = 397005, monster_id = 28061301, pos = { x = -120.206, y = 230.492, z = 2355.013 }, rot = { x = 0.000, y = 312.223, z = 0.000 }, level = 27, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 20 },
	{ config_id = 397006, monster_id = 25210303, pos = { x = -127.879, y = 231.386, z = 2351.917 }, rot = { x = 0.000, y = 231.456, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9002, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 397007, gadget_id = 70211002, pos = { x = -133.371, y = 231.535, z = 2355.223 }, rot = { x = 8.233, y = 326.098, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 397008, gadget_id = 70220050, pos = { x = -120.404, y = 231.787, z = 2346.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 397009, gadget_id = 70220063, pos = { x = -124.973, y = 231.438, z = 2345.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 397010, gadget_id = 70220050, pos = { x = -118.887, y = 231.647, z = 2346.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 397011, gadget_id = 70220063, pos = { x = -130.943, y = 231.720, z = 2351.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 397012, gadget_id = 70220063, pos = { x = -132.675, y = 231.697, z = 2350.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 397013, gadget_id = 70310009, pos = { x = -129.381, y = 231.584, z = 2352.704 }, rot = { x = 353.737, y = 321.050, z = 356.338 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1397015, name = "ANY_MONSTER_DIE_397015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_397015", action = "action_EVENT_ANY_MONSTER_DIE_397015" }
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
		monsters = { 397001, 397002, 397003, 397005, 397006 },
		gadgets = { 397007, 397008, 397009, 397010, 397011, 397012, 397013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_397015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_397015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_397015(context, evt)
	-- 将configid为 397007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397007, GadgetState.Default) then
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