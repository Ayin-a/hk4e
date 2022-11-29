-- 基础信息
local base_info = {
	group_id = 199004137
}

-- DEFS_MISCS
local defs = 
{
        rmd_list = {1111157,1111158,1111159},
}
--从table中取得随机value
function LF_GetRandomResult(context, source_table)

        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#source_table)
        
        if nil ~= source_table[rand_index] then
                ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result: value@"..source_table[rand_index])
                return source_table[rand_index]
        end
        ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result failed! rand_index@"..rand_index)
        return -1
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 137001, monster_id = 21010401, pos = { x = -51.316, y = 126.017, z = -631.081 }, rot = { x = 0.000, y = 91.617, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 137002, monster_id = 21010401, pos = { x = -54.901, y = 126.054, z = -629.653 }, rot = { x = 0.000, y = 288.785, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 401 },
	{ config_id = 137003, monster_id = 21010401, pos = { x = -61.154, y = 126.095, z = -655.344 }, rot = { x = 0.000, y = 228.201, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 401 },
	{ config_id = 137004, monster_id = 21010401, pos = { x = -64.554, y = 126.012, z = -658.244 }, rot = { x = 0.000, y = 46.383, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 401 },
	{ config_id = 137007, monster_id = 20011201, pos = { x = -63.058, y = 126.665, z = -656.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 137008, monster_id = 21010401, pos = { x = -79.374, y = 123.718, z = -635.313 }, rot = { x = 0.000, y = 239.799, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 401 },
	{ config_id = 137009, monster_id = 21010401, pos = { x = -41.691, y = 123.877, z = -646.991 }, rot = { x = 0.000, y = 218.469, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 137010, gadget_id = 70290059, pos = { x = -54.783, y = 120.000, z = -630.660 }, rot = { x = 0.000, y = 194.830, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137011, gadget_id = 70290059, pos = { x = -62.159, y = 120.000, z = -656.234 }, rot = { x = 0.000, y = 12.475, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137012, gadget_id = 70290060, pos = { x = -57.001, y = 124.643, z = -638.876 }, rot = { x = 0.000, y = 288.781, z = 351.831 }, level = 20, area_id = 401 },
	{ config_id = 137013, gadget_id = 70290060, pos = { x = -60.112, y = 124.712, z = -648.015 }, rot = { x = 0.000, y = 108.598, z = 351.746 }, level = 20, area_id = 401 },
	{ config_id = 137014, gadget_id = 70300087, pos = { x = -62.869, y = 126.203, z = -656.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137015, gadget_id = 70300089, pos = { x = -54.552, y = 126.215, z = -630.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137016, gadget_id = 70290056, pos = { x = -68.599, y = 120.000, z = -632.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 137017, gadget_id = 70290056, pos = { x = -51.167, y = 120.000, z = -654.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 137018, gadget_id = 70290057, pos = { x = -38.347, y = 119.245, z = -635.560 }, rot = { x = 0.000, y = 78.957, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137019, gadget_id = 70290057, pos = { x = -76.071, y = 119.251, z = -662.035 }, rot = { x = 0.000, y = 42.890, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 137020, gadget_id = 70950092, pos = { x = -78.742, y = 120.000, z = -635.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137021, gadget_id = 70950092, pos = { x = -41.768, y = 120.000, z = -646.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137022, gadget_id = 70950087, pos = { x = -81.065, y = 120.000, z = -633.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137023, gadget_id = 70950087, pos = { x = -80.515, y = 120.000, z = -637.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137024, gadget_id = 70950087, pos = { x = -81.436, y = 120.000, z = -636.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137025, gadget_id = 70950087, pos = { x = -43.945, y = 120.000, z = -645.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137026, gadget_id = 70950087, pos = { x = -44.097, y = 120.000, z = -648.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137027, gadget_id = 70950087, pos = { x = -39.534, y = 120.000, z = -644.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137028, gadget_id = 70950087, pos = { x = -41.166, y = 120.000, z = -643.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 137030, gadget_id = 70211002, pos = { x = -53.849, y = 126.105, z = -628.397 }, rot = { x = 0.000, y = 25.672, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1137029, name = "ANY_MONSTER_DIE_137029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_137029", action = "action_EVENT_ANY_MONSTER_DIE_137029" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 137005, monster_id = 21030301, pos = { x = -57.819, y = 125.047, z = -640.953 }, rot = { x = 0.000, y = 171.836, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 401 },
		{ config_id = 137006, monster_id = 21030301, pos = { x = -59.393, y = 125.092, z = -645.739 }, rot = { x = 0.000, y = 17.018, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 401 }
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
		monsters = { 137001, 137002, 137003, 137004, 137007, 137008, 137009 },
		gadgets = { 137010, 137011, 137012, 137013, 137014, 137015, 137016, 137017, 137018, 137019, 137020, 137021, 137022, 137023, 137024, 137025, 137026, 137027, 137028, 137030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_137029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_137029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_137029(context, evt)
	-- 将configid为 137030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199004139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end