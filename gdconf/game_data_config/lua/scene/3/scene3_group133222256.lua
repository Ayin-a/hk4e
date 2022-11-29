-- 基础信息
local base_info = {
	group_id = 133222256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256004, monster_id = 21020701, pos = { x = -4356.315, y = 208.185, z = -4207.611 }, rot = { x = 0.000, y = 61.028, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 14 },
	{ config_id = 256007, monster_id = 21010401, pos = { x = -4349.815, y = 207.545, z = -4209.086 }, rot = { x = 0.000, y = 23.790, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9016, area_id = 14 },
	{ config_id = 256008, monster_id = 21010401, pos = { x = -4346.910, y = 207.040, z = -4208.719 }, rot = { x = 0.000, y = 308.185, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9016, area_id = 14 },
	{ config_id = 256012, monster_id = 21020201, pos = { x = -4349.881, y = 207.409, z = -4205.212 }, rot = { x = 0.000, y = 274.922, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256002, gadget_id = 70211012, pos = { x = -4353.393, y = 207.883, z = -4207.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 256005, gadget_id = 70220013, pos = { x = -4357.616, y = 208.408, z = -4202.705 }, rot = { x = 0.000, y = 334.171, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 256006, gadget_id = 70220013, pos = { x = -4359.322, y = 208.561, z = -4204.143 }, rot = { x = 0.000, y = 228.852, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 256014, gadget_id = 70310009, pos = { x = -4353.429, y = 207.765, z = -4205.898 }, rot = { x = 356.427, y = 359.916, z = 2.684 }, level = 30, area_id = 14 },
	{ config_id = 256015, gadget_id = 70300089, pos = { x = -4351.916, y = 207.969, z = -4209.093 }, rot = { x = 359.163, y = 310.414, z = 342.242 }, level = 30, area_id = 14 },
	{ config_id = 256016, gadget_id = 70300086, pos = { x = -4355.831, y = 207.475, z = -4209.833 }, rot = { x = 21.780, y = 181.738, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 256017, gadget_id = 70300086, pos = { x = -4347.298, y = 206.918, z = -4203.135 }, rot = { x = 335.377, y = 174.575, z = 4.995 }, level = 30, area_id = 14 },
	{ config_id = 256018, gadget_id = 70300076, pos = { x = -4366.494, y = 210.103, z = -4201.151 }, rot = { x = 345.376, y = 266.203, z = 4.424 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256003, name = "ANY_MONSTER_DIE_256003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_256003", action = "action_EVENT_ANY_MONSTER_DIE_256003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 256001, monster_id = 21010201, pos = { x = -4353.825, y = 207.899, z = -4204.471 }, rot = { x = 0.000, y = 255.906, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 14 },
		{ config_id = 256013, monster_id = 21020701, pos = { x = -4356.474, y = 208.059, z = -4205.028 }, rot = { x = 0.000, y = 118.523, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", area_id = 14 }
	},
	gadgets = {
		{ config_id = 256009, gadget_id = 70500000, pos = { x = -4347.404, y = 206.991, z = -4207.894 }, rot = { x = 0.000, y = 111.884, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
		{ config_id = 256010, gadget_id = 70500000, pos = { x = -4349.420, y = 207.258, z = -4208.112 }, rot = { x = 0.000, y = 359.303, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 }
	},
	triggers = {
		{ config_id = 1256011, name = "MONSTER_BATTLE_256011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_256011" }
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
		monsters = { 256004, 256007, 256008, 256012 },
		gadgets = { 256002, 256005, 256006, 256014, 256015, 256016, 256017, 256018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_256003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_256003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256003(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.Default) then
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