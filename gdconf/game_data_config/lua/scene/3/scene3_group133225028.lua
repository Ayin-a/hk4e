-- 基础信息
local base_info = {
	group_id = 133225028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 24020101, pos = { x = -6462.609, y = 244.496, z = -2563.665 }, rot = { x = 0.000, y = 51.249, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 28002, monster_id = 24020201, pos = { x = -6457.897, y = 244.980, z = -2552.434 }, rot = { x = 0.000, y = 288.976, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28004, gadget_id = 70211002, pos = { x = -6460.702, y = 244.459, z = -2556.618 }, rot = { x = 354.354, y = 315.537, z = 358.224 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028005, name = "ANY_MONSTER_DIE_28005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28005", action = "action_EVENT_ANY_MONSTER_DIE_28005" },
	{ config_id = 1028006, name = "MONSTER_BATTLE_28006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_28006", action = "action_EVENT_MONSTER_BATTLE_28006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 28003, monster_id = 22040101, pos = { x = -6458.210, y = 244.210, z = -2561.397 }, rot = { x = 0.000, y = 343.190, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		monsters = { 28001 },
		gadgets = { 28004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28005", "MONSTER_BATTLE_28006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 28002 },
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
function condition_EVENT_ANY_MONSTER_DIE_28005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28005(context, evt)
	-- 将configid为 28004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_28006(context, evt)
	if 28001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_28006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225028, 2)
	
	return 0
end