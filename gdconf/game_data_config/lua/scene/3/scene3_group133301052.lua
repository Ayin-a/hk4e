-- 基础信息
local base_info = {
	group_id = 133301052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52001, monster_id = 21030201, pos = { x = -619.868, y = 177.025, z = 3608.609 }, rot = { x = 0.000, y = 25.710, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 22 },
	{ config_id = 52004, monster_id = 21010501, pos = { x = -589.549, y = 168.850, z = 3604.195 }, rot = { x = 0.000, y = 166.184, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 22 },
	{ config_id = 52005, monster_id = 21010301, pos = { x = -590.016, y = 165.817, z = 3584.388 }, rot = { x = 0.000, y = 124.420, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 22 },
	{ config_id = 52006, monster_id = 21020201, pos = { x = -603.611, y = 172.170, z = 3582.906 }, rot = { x = 0.000, y = 36.651, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 22 },
	{ config_id = 52014, monster_id = 28060601, pos = { x = -604.959, y = 171.943, z = 3585.658 }, rot = { x = 0.000, y = 144.296, z = 0.000 }, level = 33, drop_tag = "走兽", pose_id = 2, area_id = 22 },
	{ config_id = 52017, monster_id = 21020301, pos = { x = -628.954, y = 179.111, z = 3596.405 }, rot = { x = 0.000, y = 72.845, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 22 },
	{ config_id = 52019, monster_id = 21010701, pos = { x = -609.738, y = 171.910, z = 3596.441 }, rot = { x = 0.000, y = 78.830, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52002, gadget_id = 70211012, pos = { x = -615.465, y = 183.399, z = 3615.097 }, rot = { x = 0.000, y = 90.642, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 52007, gadget_id = 70220103, pos = { x = -611.482, y = 181.978, z = 3615.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 52008, gadget_id = 70220014, pos = { x = -592.673, y = 168.869, z = 3604.627 }, rot = { x = 7.622, y = 6.574, z = 2.396 }, level = 33, area_id = 22 },
	{ config_id = 52009, gadget_id = 70220013, pos = { x = -613.723, y = 172.217, z = 3587.456 }, rot = { x = 0.302, y = 241.192, z = 359.940 }, level = 33, area_id = 22 },
	{ config_id = 52010, gadget_id = 70300107, pos = { x = -617.771, y = 176.710, z = 3609.344 }, rot = { x = 354.338, y = 0.727, z = 0.468 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 52011, gadget_id = 70330197, pos = { x = -611.482, y = 178.316, z = 3615.766 }, rot = { x = 0.000, y = 296.509, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 52012, gadget_id = 70220013, pos = { x = -609.586, y = 172.379, z = 3576.134 }, rot = { x = 1.496, y = 0.570, z = 353.166 }, level = 33, area_id = 22 },
	{ config_id = 52013, gadget_id = 70220013, pos = { x = -628.094, y = 178.861, z = 3590.908 }, rot = { x = 357.051, y = 277.286, z = 354.114 }, level = 33, area_id = 22 },
	{ config_id = 52015, gadget_id = 70220013, pos = { x = -630.785, y = 178.920, z = 3590.861 }, rot = { x = 1.673, y = 2.049, z = 353.206 }, level = 33, area_id = 22 },
	{ config_id = 52016, gadget_id = 70220014, pos = { x = -592.359, y = 168.891, z = 3605.910 }, rot = { x = 359.651, y = 81.552, z = 7.980 }, level = 33, area_id = 22 },
	{ config_id = 52018, gadget_id = 70310001, pos = { x = -587.773, y = 165.602, z = 3585.626 }, rot = { x = 3.157, y = 98.997, z = 2.703 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 52020, gadget_id = 70310009, pos = { x = -606.663, y = 172.041, z = 3578.737 }, rot = { x = 350.712, y = 341.827, z = 4.336 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 52021, gadget_id = 70220014, pos = { x = -625.180, y = 178.893, z = 3592.261 }, rot = { x = 1.098, y = 11.391, z = 3.874 }, level = 33, area_id = 22 },
	{ config_id = 52022, gadget_id = 70220014, pos = { x = -625.798, y = 178.921, z = 3591.260 }, rot = { x = 359.651, y = 81.552, z = 7.980 }, level = 33, area_id = 22 },
	{ config_id = 52023, gadget_id = 70220014, pos = { x = -612.723, y = 173.053, z = 3578.269 }, rot = { x = 359.651, y = 81.552, z = 7.980 }, level = 33, area_id = 22 },
	{ config_id = 52024, gadget_id = 70220014, pos = { x = -613.431, y = 173.061, z = 3577.044 }, rot = { x = 1.098, y = 11.391, z = 3.874 }, level = 33, area_id = 22 },
	{ config_id = 52027, gadget_id = 70220103, pos = { x = -600.775, y = 171.639, z = 3566.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 52028, gadget_id = 70330197, pos = { x = -600.775, y = 167.977, z = 3566.067 }, rot = { x = 0.000, y = 296.509, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 52029, gadget_id = 70220103, pos = { x = -600.515, y = 173.545, z = 3590.873 }, rot = { x = 0.000, y = 341.268, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 52030, gadget_id = 70330197, pos = { x = -600.515, y = 169.666, z = 3590.873 }, rot = { x = 0.000, y = 227.540, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052003, name = "ANY_MONSTER_DIE_52003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52003", action = "action_EVENT_ANY_MONSTER_DIE_52003" },
	{ config_id = 1052025, name = "MONSTER_BATTLE_52025", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_52025", action = "action_EVENT_MONSTER_BATTLE_52025" },
	{ config_id = 1052026, name = "MONSTER_BATTLE_52026", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_52026", action = "action_EVENT_MONSTER_BATTLE_52026" }
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
		monsters = { 52005, 52006, 52014, 52019 },
		gadgets = { 52002, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52015, 52016, 52018, 52020, 52021, 52022, 52023, 52024, 52027, 52028, 52029, 52030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_52003", "MONSTER_BATTLE_52025", "MONSTER_BATTLE_52026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52003(context, evt)
	-- 将configid为 52002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_52025(context, evt)
	if 52006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_52025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 52001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 52004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_52026(context, evt)
	if 52019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_52026(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 52017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end