-- 基础信息
local base_info = {
	group_id = 133104041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81, monster_id = 21010201, pos = { x = 722.248, y = 202.940, z = 227.786 }, rot = { x = 0.000, y = 154.860, z = 0.000 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 92, monster_id = 21010401, pos = { x = 726.611, y = 203.503, z = 235.444 }, rot = { x = 14.922, y = 195.731, z = 5.042 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 93, monster_id = 21010301, pos = { x = 724.274, y = 203.059, z = 224.839 }, rot = { x = 3.934, y = 317.185, z = 356.363 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 41005, monster_id = 21030101, pos = { x = 727.477, y = 202.959, z = 230.576 }, rot = { x = 0.000, y = 213.735, z = 0.000 }, level = 17, drop_tag = "丘丘萨满", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72, gadget_id = 70211002, pos = { x = 725.311, y = 202.981, z = 227.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 41001, gadget_id = 70300087, pos = { x = 723.157, y = 202.863, z = 226.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000055, name = "ANY_MONSTER_DIE_55", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55", action = "action_EVENT_ANY_MONSTER_DIE_55" }
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
		monsters = { 81, 92, 93, 41005 },
		gadgets = { 72, 41001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 任务用空suite，结束后刷回suite1，问题联系尤志林,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 将configid为 72 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end