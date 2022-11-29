-- 基础信息
local base_info = {
	group_id = 133309063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 25210302, pos = { x = -2574.640, y = 202.418, z = 5704.099 }, rot = { x = 0.000, y = 11.354, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 27 },
	{ config_id = 63004, monster_id = 25210401, pos = { x = -2573.998, y = 202.488, z = 5708.119 }, rot = { x = 0.000, y = 188.588, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 27 },
	{ config_id = 63006, monster_id = 28060901, pos = { x = -2541.063, y = 198.787, z = 5709.809 }, rot = { x = 0.000, y = 192.023, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 4, area_id = 27 },
	{ config_id = 63007, monster_id = 25310101, pos = { x = -2579.491, y = 203.362, z = 5705.002 }, rot = { x = 0.000, y = 170.143, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 27 },
	{ config_id = 63008, monster_id = 25310201, pos = { x = -2552.711, y = 199.629, z = 5701.221 }, rot = { x = 0.000, y = 249.535, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63002, gadget_id = 70211012, pos = { x = -2574.553, y = 203.719, z = 5721.144 }, rot = { x = 1.381, y = 183.382, z = 9.779 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 63005, gadget_id = 70220128, pos = { x = -2574.268, y = 202.432, z = 5705.877 }, rot = { x = 349.142, y = 276.969, z = 1.338 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "ANY_MONSTER_DIE_63003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63003", action = "action_EVENT_ANY_MONSTER_DIE_63003" }
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
		monsters = { 63001, 63004, 63006, 63007, 63008 },
		gadgets = { 63002, 63005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_63003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.Default) then
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