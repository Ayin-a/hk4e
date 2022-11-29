-- 基础信息
local base_info = {
	group_id = 133213016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 21010201, pos = { x = -3511.774, y = 201.628, z = -3196.632 }, rot = { x = 351.319, y = 285.765, z = 354.814 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 16004, monster_id = 21010401, pos = { x = -3511.243, y = 201.355, z = -3189.936 }, rot = { x = 352.909, y = 264.309, z = 0.705 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 16005, monster_id = 22010401, pos = { x = -3519.538, y = 203.354, z = -3193.308 }, rot = { x = 16.441, y = 75.285, z = 357.518 }, level = 27, drop_tag = "深渊法师", disableWander = true, area_id = 12 },
	{ config_id = 16006, monster_id = 21030101, pos = { x = -3509.464, y = 201.164, z = -3193.488 }, rot = { x = 354.209, y = 238.485, z = 2.498 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 12 },
	{ config_id = 16012, monster_id = 22010201, pos = { x = -3515.185, y = 201.997, z = -3193.094 }, rot = { x = 12.356, y = 89.439, z = 1.629 }, level = 27, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16002, gadget_id = 70211002, pos = { x = -3501.213, y = 201.041, z = -3193.846 }, rot = { x = 348.067, y = 272.602, z = 355.735 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 16007, gadget_id = 70900393, pos = { x = -3517.323, y = 202.707, z = -3193.485 }, rot = { x = 3.375, y = 359.238, z = 345.105 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 16008, gadget_id = 70900393, pos = { x = -3512.994, y = 202.050, z = -3199.098 }, rot = { x = 4.227, y = 358.970, z = 346.769 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 16009, gadget_id = 70900393, pos = { x = -3507.490, y = 200.946, z = -3193.351 }, rot = { x = 0.886, y = 359.911, z = 353.757 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 16010, gadget_id = 70900393, pos = { x = -3512.854, y = 201.548, z = -3187.718 }, rot = { x = 0.896, y = 0.007, z = 351.120 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 16011, gadget_id = 70300089, pos = { x = -3512.504, y = 201.639, z = -3193.252 }, rot = { x = 2.638, y = 359.755, z = 349.380 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016003, name = "ANY_MONSTER_DIE_16003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16003", action = "action_EVENT_ANY_MONSTER_DIE_16003" },
	{ config_id = 1016013, name = "MONSTER_BATTLE_16013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_16013" }
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
		monsters = { 16006, 16012 },
		gadgets = { 16002, 16007, 16008, 16009, 16010, 16011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16003", "MONSTER_BATTLE_16013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 16001, 16004, 16005 },
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
function condition_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 将configid为 16002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_16013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213016, 2)
	
	return 0
end