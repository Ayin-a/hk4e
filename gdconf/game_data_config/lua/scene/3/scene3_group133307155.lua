-- 基础信息
local base_info = {
	group_id = 133307155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 26090901, pos = { x = -1472.330, y = 18.811, z = 5684.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 155004, monster_id = 26120401, pos = { x = -1467.471, y = 18.522, z = 5687.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 155005, monster_id = 26090901, pos = { x = -1473.894, y = 18.738, z = 5692.384 }, rot = { x = 0.000, y = 79.075, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 155007, monster_id = 26090901, pos = { x = -1466.586, y = 18.051, z = 5698.838 }, rot = { x = 0.000, y = 276.328, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 155008, monster_id = 26090901, pos = { x = -1464.008, y = 18.361, z = 5697.459 }, rot = { x = 0.000, y = 316.941, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155002, gadget_id = 70211002, pos = { x = -1471.706, y = 18.525, z = 5690.037 }, rot = { x = 0.000, y = 54.469, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155003, name = "ANY_MONSTER_DIE_155003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155003", action = "action_EVENT_ANY_MONSTER_DIE_155003" },
	{ config_id = 1155006, name = "MONSTER_BATTLE_155006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_155006", action = "action_EVENT_MONSTER_BATTLE_155006" }
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
		monsters = { 155001, 155004, 155005 },
		gadgets = { 155002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155003", "MONSTER_BATTLE_155006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 155007, 155008 },
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
function condition_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155003(context, evt)
	-- 将configid为 155002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_155006(context, evt)
	if 155004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_155006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307155, 2)
	
	return 0
end