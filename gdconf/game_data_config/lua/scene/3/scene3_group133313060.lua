-- 基础信息
local base_info = {
	group_id = 133313060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 26090901, pos = { x = -480.710, y = -85.030, z = 5458.258 }, rot = { x = 0.000, y = 147.250, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 32 },
	{ config_id = 60004, monster_id = 26120401, pos = { x = -484.263, y = -90.494, z = 5472.043 }, rot = { x = 0.000, y = 281.676, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 102, area_id = 32 },
	{ config_id = 60005, monster_id = 26090901, pos = { x = -481.739, y = -88.398, z = 5462.515 }, rot = { x = 0.000, y = 28.665, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 32 },
	{ config_id = 60006, monster_id = 26090901, pos = { x = -473.797, y = -89.207, z = 5467.597 }, rot = { x = 0.000, y = 179.177, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 60008, monster_id = 26120401, pos = { x = -475.721, y = -88.697, z = 5472.708 }, rot = { x = 0.000, y = 211.313, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60002, gadget_id = 70211002, pos = { x = -479.617, y = -90.154, z = 5468.667 }, rot = { x = 353.894, y = 160.113, z = 359.152 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060003, name = "ANY_MONSTER_DIE_60003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60003", action = "action_EVENT_ANY_MONSTER_DIE_60003" },
	{ config_id = 1060007, name = "MONSTER_BATTLE_60007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_60007", action = "action_EVENT_MONSTER_BATTLE_60007" }
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
		monsters = { 60001, 60004, 60005, 60006 },
		gadgets = { 60002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60003", "MONSTER_BATTLE_60007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60003(context, evt)
	-- 将configid为 60002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_60007(context, evt)
	if 60004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_60007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313060, 2)
	
	return 0
end