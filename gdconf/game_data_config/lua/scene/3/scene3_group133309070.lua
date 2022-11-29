-- 基础信息
local base_info = {
	group_id = 133309070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70011, monster_id = 24030101, pos = { x = -2525.025, y = 193.424, z = 5874.015 }, rot = { x = 0.000, y = 151.413, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 27 },
	{ config_id = 70013, monster_id = 24030201, pos = { x = -2530.438, y = 196.829, z = 5834.587 }, rot = { x = 0.000, y = 316.164, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 101, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70002, gadget_id = 70710200, pos = { x = -2537.581, y = 196.375, z = 5851.807 }, rot = { x = 30.888, y = 186.976, z = 3.993 }, level = 32, area_id = 27 },
	{ config_id = 70003, gadget_id = 70710199, pos = { x = -2504.346, y = 188.658, z = 5840.853 }, rot = { x = 352.464, y = 321.912, z = 349.107 }, level = 32, area_id = 27 },
	{ config_id = 70008, gadget_id = 70310007, pos = { x = -2503.274, y = 187.165, z = 5879.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 70010, gadget_id = 70211012, pos = { x = -2513.949, y = 191.423, z = 5861.631 }, rot = { x = 0.000, y = 318.249, z = 350.361 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070009, name = "ANY_MONSTER_DIE_70009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70009", action = "action_EVENT_ANY_MONSTER_DIE_70009" },
	{ config_id = 1070012, name = "MONSTER_BATTLE_70012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_70012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 70001, monster_id = 24010301, pos = { x = -2530.472, y = 179.653, z = 5822.894 }, rot = { x = 0.000, y = 316.164, z = 0.000 }, level = 32, drop_tag = "遗迹重机", disableWander = true, isElite = true, pose_id = 100, area_id = 27 }
	},
	gadgets = {
		{ config_id = 70004, gadget_id = 70330432, pos = { x = -2540.708, y = 185.087, z = 5867.706 }, rot = { x = 0.000, y = 0.000, z = 344.262 }, level = 32, area_id = 27 },
		{ config_id = 70005, gadget_id = 70330432, pos = { x = -2524.438, y = 182.234, z = 5838.572 }, rot = { x = 352.923, y = 93.531, z = 7.465 }, level = 32, area_id = 27 },
		{ config_id = 70006, gadget_id = 70330432, pos = { x = -2482.707, y = 172.932, z = 5850.089 }, rot = { x = 315.277, y = 342.327, z = 24.361 }, level = 32, area_id = 27 },
		{ config_id = 70007, gadget_id = 70330432, pos = { x = -2511.217, y = 177.181, z = 5880.140 }, rot = { x = 321.395, y = 164.504, z = 0.000 }, level = 32, area_id = 27 }
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
		monsters = { 70011, 70013 },
		gadgets = { 70002, 70003, 70008, 70010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70009", "MONSTER_BATTLE_70012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	-- 将configid为 70010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70010, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_70012(context, evt)
	-- 通知groupid为133309070中,configid为：70013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 70013, 133309070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133309070中,configid为：70011的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 70011, 133309070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end