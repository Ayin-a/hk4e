-- 基础信息
local base_info = {
	group_id = 133302519
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 519001, monster_id = 25020201, pos = { x = -272.361, y = 289.309, z = 2136.407 }, rot = { x = 0.000, y = 244.525, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 24 },
	{ config_id = 519004, monster_id = 25010301, pos = { x = -275.698, y = 289.392, z = 2134.367 }, rot = { x = 0.000, y = 42.530, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 24 },
	{ config_id = 519006, monster_id = 25010401, pos = { x = -250.205, y = 290.421, z = 2156.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9003, area_id = 24 },
	{ config_id = 519007, monster_id = 25070101, pos = { x = -253.048, y = 289.349, z = 2144.628 }, rot = { x = 0.000, y = 246.579, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 519002, gadget_id = 70211002, pos = { x = -258.243, y = 290.397, z = 2154.983 }, rot = { x = 0.000, y = 284.266, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 519005, gadget_id = 70310004, pos = { x = -274.030, y = 289.528, z = 2136.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 519008, gadget_id = 70310009, pos = { x = -248.927, y = 290.378, z = 2151.900 }, rot = { x = 353.247, y = 322.747, z = 2.888 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1519003, name = "ANY_MONSTER_DIE_519003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_519003", action = "action_EVENT_ANY_MONSTER_DIE_519003" }
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
		monsters = { 519001, 519004, 519006, 519007 },
		gadgets = { 519002, 519005, 519008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_519003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_519003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_519003(context, evt)
	-- 将configid为 519002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 519002, GadgetState.Default) then
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