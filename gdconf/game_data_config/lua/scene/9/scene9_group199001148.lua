-- 基础信息
local base_info = {
	group_id = 199001148
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
	{ config_id = 148001, monster_id = 21010601, pos = { x = 138.969, y = 126.137, z = 9.960 }, rot = { x = 0.000, y = 104.708, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
	{ config_id = 148002, monster_id = 21010601, pos = { x = 142.200, y = 126.059, z = 7.643 }, rot = { x = 0.000, y = 273.171, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
	{ config_id = 148003, monster_id = 21011001, pos = { x = 142.788, y = 126.089, z = 11.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 402 },
	{ config_id = 148004, monster_id = 21010401, pos = { x = 153.599, y = 123.869, z = 14.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 },
	{ config_id = 148005, monster_id = 21010401, pos = { x = 130.932, y = 123.797, z = 27.969 }, rot = { x = 0.000, y = 75.281, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148007, gadget_id = 70290059, pos = { x = 141.173, y = 120.000, z = 9.083 }, rot = { x = 0.000, y = 34.342, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148008, gadget_id = 70950092, pos = { x = 153.385, y = 120.000, z = 14.213 }, rot = { x = 0.000, y = 185.817, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148009, gadget_id = 70950092, pos = { x = 130.369, y = 120.000, z = 27.418 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148010, gadget_id = 70290056, pos = { x = 130.643, y = 120.000, z = 17.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 148011, gadget_id = 70950087, pos = { x = 132.282, y = 120.000, z = 29.203 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148012, gadget_id = 70950087, pos = { x = 128.038, y = 120.000, z = 29.283 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148013, gadget_id = 70950087, pos = { x = 131.836, y = 120.000, z = 30.598 }, rot = { x = 0.000, y = 312.001, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148014, gadget_id = 70950087, pos = { x = 149.726, y = 120.000, z = 14.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148015, gadget_id = 70950087, pos = { x = 152.200, y = 120.000, z = 16.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148016, gadget_id = 70950087, pos = { x = 155.860, y = 120.000, z = 12.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148017, gadget_id = 70290056, pos = { x = 163.647, y = 120.000, z = 7.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 148018, gadget_id = 70290057, pos = { x = 152.558, y = 119.439, z = -1.004 }, rot = { x = 0.000, y = 346.682, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148019, gadget_id = 70290057, pos = { x = 128.418, y = 119.257, z = 37.429 }, rot = { x = 356.545, y = 335.123, z = 0.344 }, level = 20, area_id = 402 },
	{ config_id = 148020, gadget_id = 70300087, pos = { x = 140.497, y = 126.211, z = 8.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 148021, gadget_id = 70211002, pos = { x = 138.640, y = 126.205, z = 6.861 }, rot = { x = 0.000, y = 44.725, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1148006, name = "ANY_MONSTER_DIE_148006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148006", action = "action_EVENT_ANY_MONSTER_DIE_148006" }
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
		monsters = { 148001, 148002, 148003, 148004, 148005 },
		gadgets = { 148007, 148008, 148009, 148010, 148011, 148012, 148013, 148014, 148015, 148016, 148017, 148018, 148019, 148020, 148021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148006(context, evt)
	-- 将configid为 148021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199001062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end