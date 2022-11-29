-- 基础信息
local base_info = {
	group_id = 133310195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 25310301, pos = { x = -2276.014, y = 277.246, z = 4410.980 }, rot = { x = 0.000, y = 168.908, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 26 },
	{ config_id = 195011, monster_id = 25010501, pos = { x = -2283.423, y = 276.817, z = 4406.930 }, rot = { x = 0.000, y = 121.468, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9009, area_id = 26 },
	{ config_id = 195012, monster_id = 25310201, pos = { x = -2271.978, y = 276.556, z = 4406.322 }, rot = { x = 0.000, y = 187.826, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 26 },
	{ config_id = 195013, monster_id = 25210502, pos = { x = -2280.789, y = 276.680, z = 4405.374 }, rot = { x = 0.000, y = 312.244, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9501, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195002, gadget_id = 70211012, pos = { x = -2272.173, y = 277.878, z = 4417.260 }, rot = { x = 0.834, y = 206.954, z = 359.114 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 195004, gadget_id = 70310006, pos = { x = -2284.890, y = 276.644, z = 4405.006 }, rot = { x = 359.434, y = 288.437, z = 4.520 }, level = 32, area_id = 26 },
	{ config_id = 195005, gadget_id = 71700431, pos = { x = -2283.986, y = 277.063, z = 4409.322 }, rot = { x = 357.820, y = 324.179, z = 4.839 }, level = 32, area_id = 26 },
	{ config_id = 195014, gadget_id = 70330397, pos = { x = -2329.873, y = 266.842, z = 4365.013 }, rot = { x = 352.934, y = 335.966, z = 6.672 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 195015, gadget_id = 70710352, pos = { x = -2283.080, y = 276.931, z = 4408.268 }, rot = { x = 5.253, y = 174.759, z = 358.624 }, level = 32, area_id = 26 },
	{ config_id = 195017, gadget_id = 70900386, pos = { x = -2266.967, y = 277.794, z = 4409.386 }, rot = { x = 0.000, y = 197.368, z = 0.000 }, level = 26, drop_tag = "书页章节2须弥", isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 195018, gadget_id = 70330396, pos = { x = -2263.733, y = 275.999, z = 4401.137 }, rot = { x = 0.003, y = 0.195, z = 359.105 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195003, name = "ANY_MONSTER_DIE_195003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195003", action = "action_EVENT_ANY_MONSTER_DIE_195003" }
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
		monsters = { 195001, 195011, 195012, 195013 },
		gadgets = { 195002, 195004, 195005, 195014, 195015, 195017, 195018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_195003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195003(context, evt)
	-- 将configid为 195002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195002, GadgetState.Default) then
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