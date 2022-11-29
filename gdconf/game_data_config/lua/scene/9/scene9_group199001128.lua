-- 基础信息
local base_info = {
	group_id = 199001128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 21010201, pos = { x = 160.106, y = 120.738, z = 266.039 }, rot = { x = 0.000, y = 37.536, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 128003, monster_id = 21030101, pos = { x = 166.389, y = 122.162, z = 271.877 }, rot = { x = 0.000, y = 194.677, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 128004, monster_id = 22010301, pos = { x = 163.941, y = 121.846, z = 270.690 }, rot = { x = 0.000, y = 154.213, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 128009, monster_id = 21010201, pos = { x = 165.084, y = 120.579, z = 263.644 }, rot = { x = 0.000, y = 356.456, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 128010, monster_id = 21010401, pos = { x = 157.093, y = 125.759, z = 276.208 }, rot = { x = 0.000, y = 108.346, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128006, gadget_id = 70211012, pos = { x = 167.739, y = 122.342, z = 272.706 }, rot = { x = 13.030, y = 189.930, z = 1.186 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 128008, gadget_id = 70300086, pos = { x = 165.521, y = 122.025, z = 272.712 }, rot = { x = 9.306, y = 1.708, z = 12.444 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128007, name = "ANY_MONSTER_DIE_128007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128007", action = "action_EVENT_ANY_MONSTER_DIE_128007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 128002, monster_id = 21030201, pos = { x = 166.231, y = 122.357, z = 262.105 }, rot = { x = 0.000, y = 278.216, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 402 },
		{ config_id = 128005, monster_id = 21020201, pos = { x = 168.408, y = 122.089, z = 265.498 }, rot = { x = 0.000, y = 236.398, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 402 }
	}
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
		monsters = { 128001, 128003, 128004, 128009, 128010 },
		gadgets = { 128006, 128008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 将configid为 128006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128006, GadgetState.Default) then
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