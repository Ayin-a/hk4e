-- 基础信息
local base_info = {
	group_id = 144001173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173001, monster_id = 21010201, pos = { x = -137.811, y = 121.790, z = -924.427 }, rot = { x = 0.000, y = 166.928, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 100 },
	{ config_id = 173004, monster_id = 21030301, pos = { x = -135.728, y = 125.063, z = -932.904 }, rot = { x = 0.000, y = 10.570, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 100 },
	{ config_id = 173005, monster_id = 21020201, pos = { x = -135.547, y = 121.790, z = -923.705 }, rot = { x = 0.000, y = 201.819, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 100 },
	{ config_id = 173006, monster_id = 21010201, pos = { x = -133.197, y = 121.721, z = -924.554 }, rot = { x = 0.000, y = 185.946, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173002, gadget_id = 70211012, pos = { x = -135.850, y = 121.722, z = -921.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 173007, gadget_id = 70220013, pos = { x = -130.512, y = 120.485, z = -933.283 }, rot = { x = 0.000, y = 33.130, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 173008, gadget_id = 70220026, pos = { x = -131.866, y = 120.492, z = -931.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 173009, gadget_id = 70300089, pos = { x = -139.809, y = 121.790, z = -925.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 173010, gadget_id = 70300089, pos = { x = -140.923, y = 121.748, z = -928.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 173011, gadget_id = 70310006, pos = { x = -128.748, y = 120.470, z = -930.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1173003, name = "ANY_MONSTER_DIE_173003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173003", action = "action_EVENT_ANY_MONSTER_DIE_173003" }
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
		monsters = { 173001, 173004, 173005, 173006 },
		gadgets = { 173002, 173007, 173008, 173009, 173010, 173011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_173003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173003(context, evt)
	-- 将configid为 173002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173002, GadgetState.Default) then
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