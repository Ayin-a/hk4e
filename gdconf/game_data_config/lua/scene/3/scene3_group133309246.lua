-- 基础信息
local base_info = {
	group_id = 133309246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246005, monster_id = 23010401, pos = { x = -2051.958, y = 144.603, z = 5944.066 }, rot = { x = 0.000, y = 102.641, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 27 },
	{ config_id = 246016, monster_id = 23020101, pos = { x = -2061.365, y = 145.866, z = 5924.041 }, rot = { x = 0.000, y = 6.247, z = 0.000 }, level = 32, drop_tag = "债务处理人", disableWander = true, area_id = 27 },
	{ config_id = 246017, monster_id = 25210203, pos = { x = -2037.216, y = 146.244, z = 5933.707 }, rot = { x = 0.000, y = 116.327, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246001, gadget_id = 70210101, pos = { x = -2036.768, y = 146.450, z = 5933.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 246002, gadget_id = 70211012, pos = { x = -2053.313, y = 144.468, z = 5961.701 }, rot = { x = 359.099, y = 158.501, z = 2.288 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 246004, gadget_id = 70210101, pos = { x = -2055.623, y = 147.023, z = 5920.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 246006, gadget_id = 70220048, pos = { x = -2058.355, y = 144.635, z = 5958.228 }, rot = { x = 0.488, y = -0.003, z = 359.390 }, level = 32, area_id = 27 },
	{ config_id = 246007, gadget_id = 70220048, pos = { x = -2066.602, y = 144.979, z = 5928.657 }, rot = { x = 8.005, y = 0.187, z = 0.026 }, level = 32, area_id = 27 },
	{ config_id = 246008, gadget_id = 70220048, pos = { x = -2034.913, y = 147.210, z = 5927.856 }, rot = { x = 8.857, y = 0.312, z = 4.462 }, level = 32, area_id = 27 },
	{ config_id = 246009, gadget_id = 70220048, pos = { x = -2045.071, y = 146.384, z = 5926.868 }, rot = { x = 9.711, y = 0.455, z = 5.356 }, level = 32, area_id = 27 },
	{ config_id = 246010, gadget_id = 70330428, pos = { x = -2055.991, y = 147.329, z = 5920.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 246011, gadget_id = 70330428, pos = { x = -2050.412, y = 145.792, z = 5964.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 246014, gadget_id = 70330396, pos = { x = -2045.580, y = 144.858, z = 5963.023 }, rot = { x = 1.437, y = 339.408, z = 5.185 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 246015, gadget_id = 70330396, pos = { x = -2035.617, y = 146.149, z = 5935.350 }, rot = { x = 6.215, y = 0.291, z = 5.356 }, level = 32, state = GadgetState.GearStart, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246003, name = "ANY_MONSTER_DIE_246003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246003", action = "action_EVENT_ANY_MONSTER_DIE_246003" }
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
		monsters = { 246005, 246016, 246017 },
		gadgets = { 246001, 246002, 246004, 246006, 246007, 246008, 246009, 246010, 246011, 246014, 246015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246003(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
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