-- 基础信息
local base_info = {
	group_id = 133313117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 26120401, pos = { x = -326.217, y = -116.536, z = 5479.179 }, rot = { x = 0.000, y = 179.152, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 117005, monster_id = 26090901, pos = { x = -317.663, y = -119.843, z = 5470.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 117006, monster_id = 26090901, pos = { x = -325.460, y = -117.779, z = 5470.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 117007, monster_id = 26091001, pos = { x = -319.903, y = -117.456, z = 5463.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 117008, monster_id = 26091001, pos = { x = -331.850, y = -115.746, z = 5474.248 }, rot = { x = 0.000, y = 205.842, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117002, gadget_id = 70211002, pos = { x = -319.540, y = -118.884, z = 5477.533 }, rot = { x = 356.290, y = 202.716, z = 11.915 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117003, name = "ANY_MONSTER_DIE_117003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_117003", action = "action_EVENT_ANY_MONSTER_DIE_117003" },
	{ config_id = 1117004, name = "MONSTER_BATTLE_117004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_117004", action = "action_EVENT_MONSTER_BATTLE_117004" }
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
		monsters = { 117001, 117005, 117006 },
		gadgets = { 117002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_117003", "MONSTER_BATTLE_117004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 117007, 117008 },
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
function condition_EVENT_ANY_MONSTER_DIE_117003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_117003(context, evt)
	-- 将configid为 117002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_117004(context, evt)
	if 117001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_117004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313117, 2)
	
	return 0
end