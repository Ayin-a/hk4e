-- 基础信息
local base_info = {
	group_id = 155005196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196001, monster_id = 21010201, pos = { x = 368.398, y = 330.212, z = 260.154 }, rot = { x = 0.000, y = 294.261, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 196006, monster_id = 21030101, pos = { x = 377.083, y = 333.588, z = 268.656 }, rot = { x = 0.000, y = 290.350, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 196010, monster_id = 21010901, pos = { x = 360.290, y = 330.377, z = 262.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196002, gadget_id = 70211002, pos = { x = 372.282, y = 329.923, z = 267.285 }, rot = { x = 8.586, y = 294.261, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 196007, gadget_id = 70310001, pos = { x = 376.364, y = 329.746, z = 269.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 196008, gadget_id = 70310001, pos = { x = 369.155, y = 329.548, z = 265.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 196009, gadget_id = 70310006, pos = { x = 369.300, y = 329.265, z = 269.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196003, name = "ANY_MONSTER_DIE_196003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196003", action = "action_EVENT_ANY_MONSTER_DIE_196003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 196005, monster_id = 21030101, pos = { x = 370.769, y = 329.355, z = 271.487 }, rot = { x = 0.000, y = 180.585, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 }
	},
	gadgets = {
		{ config_id = 196004, gadget_id = 70300086, pos = { x = 375.703, y = 327.502, z = 272.527 }, rot = { x = 18.859, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
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
		monsters = { 196001, 196006, 196010 },
		gadgets = { 196002, 196007, 196008, 196009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196003(context, evt)
	-- 将configid为 196002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196002, GadgetState.Default) then
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