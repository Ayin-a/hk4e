-- 基础信息
local base_info = {
	group_id = 133302131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 25210501, pos = { x = -561.737, y = 200.362, z = 2919.835 }, rot = { x = 0.000, y = 212.404, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 24 },
	{ config_id = 131004, monster_id = 28061301, pos = { x = -525.157, y = 200.016, z = 2931.131 }, rot = { x = 0.000, y = 128.517, z = 0.000 }, level = 27, drop_tag = "驮兽镀金旅团", pose_id = 1, area_id = 24 },
	{ config_id = 131005, monster_id = 25310301, pos = { x = -549.958, y = 202.060, z = 2948.212 }, rot = { x = 0.000, y = 197.097, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", area_id = 24 },
	{ config_id = 131006, monster_id = 25210101, pos = { x = -538.364, y = 200.347, z = 2924.240 }, rot = { x = 0.000, y = 201.328, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9505, area_id = 24 },
	{ config_id = 131007, monster_id = 25210401, pos = { x = -542.762, y = 200.844, z = 2933.853 }, rot = { x = 0.000, y = 228.814, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131002, gadget_id = 70211012, pos = { x = -532.122, y = 202.512, z = 2939.132 }, rot = { x = 0.000, y = 223.960, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131003, name = "ANY_MONSTER_DIE_131003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131003", action = "action_EVENT_ANY_MONSTER_DIE_131003" }
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
		monsters = { 131001, 131004, 131005, 131006, 131007 },
		gadgets = { 131002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 将configid为 131002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131002, GadgetState.Default) then
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