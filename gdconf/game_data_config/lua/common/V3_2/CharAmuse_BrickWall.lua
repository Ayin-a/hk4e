--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_BrickWall
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 消消乐
||	LogName:	## [CharAmuse_BrickWall]
||	Protection:	
=======================================]]
--[[

local defs = {

}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,

	--默认血量
	hp = 
	{        --[人数] = {各种砖块血量}
        [1] = { Normal = 130, Stamina = 200, Line = 500, All = 1200,},
        [2] = { Normal = 130, Stamina = 200, Line = 500, All = 1200,},
        [3] = { Normal = 130, Stamina = 200, Line = 500, All = 1200,},
        [4] = { Normal = 130, Stamina = 200, Line = 500, All = 1200,},
    }
}

local extraTriggers = {
	{ config_id = 8000001, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000002, name = "Enter_Play_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Play_Region", trigger_count = 1, forbid_guest = false},
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000006, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000007, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },

}

function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "air_wall", value = 0})
end

--主控调用
function EX_StartGallery(context, prev_context, gallery_id, is_last_level)
	--加载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end	
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})

	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})

	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] EX_StartGallery. player_count@"..#uid_list.." --------------")
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	--玩法启动
	ScriptLib.SetGroupVariableValue(context, "air_wall", 0)
	LF_Start_Play(context)

	return 0
end

function action_Group_Load(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == ScriptLib.GetGroupVariableValue(context, "air_wall") then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

function action_AirWallVariable_Change(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == evt.param1 and 0 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	elseif 0 == evt.param1 and 1 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
		end	
	end
	return 0
end

--evt.param2: 1-成功 0-失败
function action_Gallery_Stop(context, evt)
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
	end
	if 3 ~= evt.param3 then		
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		--ScriptLib.InitTimeAxis(context, "StopGallery_Fail", { 3 } , false) 9.21修改 失败不要延时结束
		ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	else
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)--最后一关无等待
		if is_last_level then
			ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
		else
			ScriptLib.InitTimeAxis(context, "StopGallery", { 3 } , false)
		end	
	end

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] Gallery stoped. reason@".. evt.param3.." --------------")
	return 0
end

function action_Enter_Play_Region(context, evt)
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})

	--根据当前人数加载suite
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	if nil ~= defs.enter_suites and nil ~= defs.enter_suites[player_count] then		
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.enter_suites[player_count])		
	end

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] Enter_Play_Region. player_count@"..#uid_list)

	--重新创建砖墙 重置GV、SGV
	if 1 < player_count then
		if nil ~= defs.hp then
			ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
				sgv_key = {
				"SGV_BrickWall_Mode",
				"SGV_BrickWall_HP_Normal",
				"SGV_BrickWall_HP_Stamina",
				"SGV_BrickWall_HP_Line",
				"SGV_BrickWall_HP_All",
			}, 
				sgv_value = {
				1,
				defs.hp[player_count].Normal,
				defs.hp[player_count].Stamina,
				defs.hp[player_count].Line,
				defs.hp[player_count].All,
			} 
		})
		else
			ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
				sgv_key = {
				"SGV_BrickWall_Mode",
				"SGV_BrickWall_HP_Normal",
				"SGV_BrickWall_HP_Stamina",
				"SGV_BrickWall_HP_Line",
				"SGV_BrickWall_HP_All",
			}, 
				sgv_value = {
				1,
				cfg.hp[player_count].Normal,
				cfg.hp[player_count].Stamina,
				cfg.hp[player_count].Line,
				cfg.hp[player_count].All,
			} 
		})
		end
	else
		if nil ~= defs.hp then
			ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
					sgv_key = {
					"SGV_BrickWall_Mode",
					"SGV_BrickWall_HP_Normal",
					"SGV_BrickWall_HP_Stamina",
					"SGV_BrickWall_HP_Line",
					"SGV_BrickWall_HP_All",
				}, 
					sgv_value = {
					0,
					defs.hp[player_count].Normal,
					defs.hp[player_count].Stamina,
					defs.hp[player_count].Line,
					defs.hp[player_count].All,
				} 
			})
		else
			ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
					sgv_key = {
					"SGV_BrickWall_Mode",
					"SGV_BrickWall_HP_Normal",
					"SGV_BrickWall_HP_Stamina",
					"SGV_BrickWall_HP_Line",
					"SGV_BrickWall_HP_All",
				}, 
					sgv_value = {
					0,
					cfg.hp[player_count].Normal,
					cfg.hp[player_count].Stamina,
					cfg.hp[player_count].Line,
					cfg.hp[player_count].All,
				} 
			})
		end

	end

	return 0
end

---------------------------------------------------------------------------------------------------------------
function LF_Start_Play(context)

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local target = 0
	if player_count > 1 then
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, true)
	else
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, false)
	end
	ScriptLib.SetGroupTempValue(context, "cur_score", target, {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["max_score"]= target} )
	
	ScriptLib.SetGroupTempValue(context, "cur_num", 0, {})

	----测试关存在连续2场砖墙玩法的情况，在此重新尝试创建一次，砖墙configID在场无事发生
	if nil ~= defs.enter_suites and nil ~= defs.enter_suites[player_count] then		
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.enter_suites[player_count])		
	end
	--重新创建砖墙 重置GV、SGV。测试期间有两关连续打砖墙的情况
	if 1 < player_count then
		ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
				sgv_key = {
				"SGV_BrickWall_Mode",
				"SGV_BrickWall_HP_Normal",
				"SGV_BrickWall_HP_Stamina",
				"SGV_BrickWall_HP_Line",
				"SGV_BrickWall_HP_All",
			}, 
				sgv_value = {
				1,
				defs.hp[player_count].Normal,
				defs.hp[player_count].Stamina,
				defs.hp[player_count].Line,
				defs.hp[player_count].All,
			} 
		})
	else
		ScriptLib.CreateGadgetByParamTable(context, {config_id = defs.wall, pos = gadgets[defs.wall].pos, rot = gadgets[defs.wall].rot, 
			sgv_key = {
			"SGV_BrickWall_Mode",
			"SGV_BrickWall_HP_Normal",
			"SGV_BrickWall_HP_Stamina",
			"SGV_BrickWall_HP_Line",
			"SGV_BrickWall_HP_All",
		}, 
				sgv_value = {
				0,
				defs.hp[player_count].Normal,
				defs.hp[player_count].Stamina,
				defs.hp[player_count].Line,
				defs.hp[player_count].All,
			}  
		})
	end

	return 0
end


function action_TimeAxis_StopGallery(context, evt)
	--重新创建砖墙 重置GV
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.wall)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
	return 0
end

function action_TimeAxis_StopGallery_Fail(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	return 0
end

--DoActionOnGlobalValueChange
function SLC_CharAmusePillar_BrickCount(context, param1)

	local cur_num = ScriptLib.GetGroupTempValue(context, "cur_num", {})
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] SLC_CharAmusePillar_BrickCount. cur_count@"..cur_num.. " param1@"..param1)

	if 0 < param1 and param1 < 999 then
		local diff = param1 -cur_num 
		if 0 <= diff then			
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= diff} )
			ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, diff)--给MultStage更新分数 服务器侧埋点用
			ScriptLib.ChangeGroupTempValue(context, "cur_num", diff, {})
		else
			ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] Unexpected score change! diff@"..diff)
			return 0 --diff异常直接return了
		end

		ScriptLib.ChangeGroupTempValue(context, "cur_score", -1*diff, {})
		if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
			local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
			--通知砖墙上报埋点计数
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.wall, "SGV_BrickWall_Report", 1)

			ScriptLib.StopGallery(context, gallery_id, false)
			return 0
		end
	end
	return 0
end

--埋点用
function SLC_CharAmusePillar_Report_Normal(context, param1)
	if 0 < param1 then 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] SLC_CharAmusePillar_Report_Normal. param1@"..param1)
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_BrickWall", ScriptLib.GetDungeonTransaction(context), { ["normal"] = param1 })
	end
	return 0
end

--埋点用
function SLC_CharAmusePillar_Report_UnNormal(context, param1, param2, param3)
	if 0 < param1 and 0 < param2 and 0 < param3 then --埋点数据 校验应该不需要太严格
		ScriptLib.PrintContextLog(context,"## [CharAmuse_BrickWall] SLC_CharAmusePillar_Report_UnNormal. param1@"..param1.. " param2@"..param2.." param3@"..param3)
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_BrickWall", ScriptLib.GetDungeonTransaction(context), { ["Stamina"] = param1, ["lateral"] = param2, ["fullscreen"] = param3 })
	end
	return 0
end

LF_Initialize()