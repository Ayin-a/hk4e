--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--[[
local defs = {
	region_Enter = 191004,
	region_Leave = 191006
	Boss = 222,
}

-- DEFS_MISCS
local Pursina = {
	{191001,191008},
	{191002,191009},
	{191003,191007},
}
]]
--[[  陈列室的key
2.2挖矿活动__完成boss挑战	Activity_PursinaChallenge_watcher_1
2.2挖矿活动__完成且保持桩子血量	Activity_PursinaChallenge_watcher_2
2.2挖矿活动__n分钟内完成挑战	Activity_PursinaChallenge_watcher_3
2.2挖矿活动__完成且中断特殊技能n次	Activity_PursinaChallenge_watcher_4
2.2挖矿活动__完成且击倒少于n次	Activity_PursinaChallenge_watcher_5
2.2挖矿活动__累计击破弱点n次	Activity_PursinaChallenge_watcher_6
]]
local RMD_HP_LOW = {600077,600090,600091}
local LOWPOWER_SPEED = 0		--低电量充能速度（千分比）
local MEDIUMPOWER_SPEED = 5		--中电量充能速度（千分比）
local HIGHPOWER_SPEED = 10		--高电量充能速度（千分比）
local GALLERY_ID = defs.gallery_id
local CHALLENGEID = 2002007
local CHALLENGEID_CHILD = 2001007
local Operator_Config_id = 0
local Watcher_Condition = {  --watcher的条件，检测用
	[1] = 1, --完成boss挑战【无用】
	[2] = 50, --完成且保持所有桩子血量 		填0~100
	[3] = 180, --n秒内完成挑战 			填秒数
	[4] = 2, --完成且中断特殊技能n次	填次数
	[5] = 2, --完成且击倒少于n次	填次数
	[6] = 6, --已废弃
}
local temp_Variables = {
	{ config_id=50000001,name = "IsFinished", value = 2, no_refresh = false },	--用于标识是否已完成，未开始为2，战斗中为0，完成后变1.
	{ config_id=50000002,name = "Boss_Enhance", value = 0, no_refresh = false },	--用于标识是否狂暴，挑战开始时初始化为0，其他时候由ServerLuaCall控制
	{ config_id=50000003,name = "Active_Count", value = 0, no_refresh = false },	--用于表示当前运行中挖掘器数量。(0~3)
	{ config_id=50000004,name = "test_quickFinish", value = 0, no_refresh = false },	--快速完成
	{ config_id=50000005,name = "Boss_SetBattle", value = 0, no_refresh = false },	--快速完成
}
local Tirgger_Start = {
	{ name = "1", config_id = 9000001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "Finteract",trigger_count = 0},
	{ name = "2", config_id = 9000002, event = EventType.EVENT_TIME_AXIS_PASS, source = "tick", condition = "", action = "tick",trigger_count = 0},
	{ name = "3", config_id = 9000003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "gallerytimeout",trigger_count = 0},
	{ name = "4", config_id = 9000004, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "groupLoad",trigger_count = 0},
	{ name = "5", config_id = 9000005, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "groupRefresh",trigger_count = 0},
	{ name = "6", config_id = 9000006, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "SetOptionToOperator",trigger_count = 0},
	{ name = "7", config_id = 9000007, event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "", action = "leaveRegion",trigger_count = 0},
	{ name = "8", config_id = 9000008, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "gadgetDie",trigger_count = 0},
	{ name = "9", config_id = 9000009, event = EventType.EVENT_TIME_AXIS_PASS, source = "watcher3", condition = "", action = "action_watcher3",trigger_count = 0},
	{ name = "10", config_id = 9000010, event = EventType.EVENT_TIME_AXIS_PASS, source = "refreshgroup", condition = "", action = "action_refreshgroup",trigger_count = 0},
	{ name = "11", config_id = 9000011, event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EndGameCheck", action = "action_EndGame",tag = "1000",trigger_count = 0},
	{ name = "12", config_id = 9000012, event = EventType.EVENT_VARIABLE_CHANGE, source = "test_quickFinish", condition = "", action = "test_quickFinish",trigger_count = 0},
	{ name = "13", config_id = 9000013, event = EventType.EVENT_VARIABLE_CHANGE, source = "Boss_SetBattle", condition = "", action = "action_Boss_SetBattle",trigger_count = 1},
	{ name = "14", config_id = 9000014, event = EventType.EVENT_VARIABLE_CHANGE, source = "Active_Count", condition = "", action = "action_Active_Count",trigger_count = 0},
	{ name = "15", config_id = 9000015, event = EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "enterRegion",trigger_count = 0},
	{ name = "16", config_id = 9000016, event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "", action = "action_ALL_AVATAR_DIE",trigger_count = 0},
	{ name = "17", config_id = 9000017, event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder", condition = "", action = "action_showReminder",trigger_count = 0},
	{ name = "18", config_id = 9000018, event = EventType.EVENT_TIME_AXIS_PASS, source = "CreateBoss", condition = "", action = "action_CreateBoss",trigger_count = 0},

}
function action_CreateBoss(context,evt)
	ScriptLib.PrintContextLog(context,"【[action_CreateBoss]】evt.param1 = ".. evt.param1)
	local result = ScriptLib.CreateMonster(context, {config_id = defs.Boss, delay_time = 0})
	ScriptLib.SetGadgetStateByConfigId(context, Pursina[1][1], GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, Pursina[2][1], GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, Pursina[3][1], GadgetState.Default)
	if evt.param1 == 1 then 
		for k,v in pairs(gadgets) do
			if v.gadget_id == 70800055 then
				ScriptLib.CreateGadget(context,{config_id = v.config_id})
			end
			if v.gadget_id == 70800054 then
				ScriptLib.SetWorktopOptionsByGroupId(context, ScriptLib.GetContextGroupId(context), v.config_id,{175})
				ScriptLib.SetGroupTempValue(context,"Operator_Config_id",v.config_id,{})
			end
		end
	end
	ScriptLib.PrintContextLog(context,"【[action_CreateBoss]】result = " .. result)
	return 0
end
function action_showReminder(context,evt)
	ScriptLib.PrintContextLog(context,"【[action_showReminder]】")
	ScriptLib.ShowReminder(context,600073)
	return 0
end
function log_ActivityDig_2(context,result)	--胜负结果 & 失败原因 埋点
	ScriptLib.PrintContextLog(context,"【[log_ActivityDig_2]】"..result)
	--埋点
	local hp1=ScriptLib.GetGroupTempValue(context, "HP_1",{})
	local hp2=ScriptLib.GetGroupTempValue(context, "HP_2",{})
	local hp3=ScriptLib.GetGroupTempValue(context, "HP_3",{})
	ScriptLib.MarkGroupLuaAction(context, "ActivityDig_2",ScriptLib.GetGalleryTransaction(context, GALLERY_ID) , {["result"] = result,["left_hp1"]=hp1,["left_hp2"]=hp2,["left_hp3"]=hp3})
	return 0
end
function action_ALL_AVATAR_DIE(context,evt)
	ScriptLib.PrintContextLog(context,"【[action_ALL_AVATAR_DIE]】")
	log_ActivityDig_2(context,3)
	return 0
end
function enterRegion(context,evt)
	ScriptLib.PrintContextLog(context,"【[enterRegion]】")
	if evt.param1 == defs.region_Enter then
		ScriptLib.ForbidPlayerRegionVision(context, context.uid)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	end
	return 0 
end
function action_Active_Count(context,evt)	--纯reminder 用 无逻辑
	if defs.Boss ~= nil then 
		if evt.param1 == 2 and evt.param1 > evt.param2 then ScriptLib.ShowReminder(context,600081) end
		if evt.param1 == 3 and evt.param1 > evt.param2 then ScriptLib.ShowReminder(context,600080) end
	end
	return 0 
end
function action_Boss_SetBattle(context,evt)
	local groupID = ScriptLib.GetContextGroupId(context)
	--if defs.Boss ~= nil then ScriptLib.SetMonsterBattleByGroup(context, defs.Boss, groupID) end --LD负责通知进战
	if defs.Boss ~= nil then
		--给血量物件增加血量modifier
		ScriptLib.PrintContextLog(context, "【[find3digger]】defs.Boss ~= nil")
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {Pursina[1][2]}, "Upgrade_HP", 1)
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {Pursina[2][2]}, "Upgrade_HP", 1)
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {Pursina[3][2]}, "Upgrade_HP", 1)
	end
	return 0
end

function test_quickFinish(context,evt)
	finishPlay(context)
	return 0
end
function condition_EndGameCheck(context,evt)
	ScriptLib.PrintContextLog(context,"【onEndGameCheck】")
	if evt.param1 == 1  then return true end
	return false
end
function action_EndGame(context,evt)--只用来触发挑战,同时关gallery
	ScriptLib.PrintContextLog(context,"【EndGame】")
	ScriptLib.StopGallery(context,GALLERY_ID,true)
	return 0
end
function action_refreshgroup(context,evt)
	local groupID = ScriptLib.GetContextGroupId(context)
	ScriptLib.RefreshGroup(context, { group_id = groupID, suite = init_config.suite})
	return	0
end

function action_watcher3(context,evt)
	ScriptLib.PrintContextLog(context, "【[action_watcher3]】")
	ScriptLib.SetGroupTempValue(context,"watcher3",1,{})
	return 0
end

function gadgetDie(context,evt)
	ScriptLib.PrintContextLog(context, "【[gadgetDie]】")
	for i = 1 , #Pursina do
		if evt.param1 == Pursina[i][2] then
			log_ActivityDig_2(context,1)
			fail(context)
		end
	end
	return 0
end
function leaveRegion(context,evt)
	ScriptLib.PrintContextLog(context, "【[leaveRegion]】")
	if evt.param1 == defs.region_Leave then
		ScriptLib.PrintContextLog(context, "【[leaveRegion]】2")
		ScriptLib.RevertPlayerRegionVision(context, context.uid)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
		if ScriptLib.GetGroupVariableValue(context,"IsFinished") == 0 then --该then内为 未完成玩法时离开region时执行的操作
			log_ActivityDig_2(context,4) 
			fail(context)
		end
	end
	return 0
end
function fail(context) --离场、超时后执行。关tick、关gallery、标记玩法结束、refresh
	ScriptLib.PrintContextLog(context, "【[fail]】")
	ScriptLib.EndTimeAxis(context, "tick")
	--标识回到未开始状态
	ScriptLib.SetGroupVariableValue(context, "IsFinished", 2)
	local groupID = ScriptLib.GetContextGroupId(context)
	-- 停止标识为"looptime"的时间轴【LD需求】
	ScriptLib.EndTimeAxis(context, "looptime")
	ScriptLib.StopGallery(context,GALLERY_ID,false)
	ScriptLib.EndFatherChallenge(context, CHALLENGEID)
	--让他清理残留gadget
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, Operator_Config_id, "SGV_Try_Clean_Gadgets", 1.0)
	ScriptLib.RefreshGroup(context, { group_id = groupID, suite = init_config.suite})
end
--gadget创建时，如果是挑战操作台，增加挑战选项。
function SetOptionToOperator(context,evt)
	ScriptLib.PrintContextLog(context, "【[SetOptionToOperator]】")
	if evt.param2 == 70350082 or evt.param2 == 70800055 then
		ScriptLib.SetWorktopOptions(context, {175})
		ScriptLib.SetGroupTempValue(context,"Operator_Config_id",evt.param1,{})
	end
	return 0
end
--设置挖掘桩的state为201、给他们创建血量物件、给他们创建billboard
function find3digger(context)
	ScriptLib.PrintContextLog(context, "【[find3digger]】")
	if Pursina == nil then ScriptLib.PrintContextLog(context, "【LD请注意：】未在DEFS_MISCS中找到table:Pursina") end
	for i = 1 , #Pursina do
		ScriptLib.SetGadgetStateByConfigId(context, Pursina[i][1], GadgetState.GearStart)
		ScriptLib.CreateGadget(context, {config_id = Pursina[i][2]})
		ScriptLib.CreateGadget(context, {config_id = 888880 + i})
		ScriptLib.InitGalleryProgressScore(context, "digProgress".. i - 1, GALLERY_ID, {0,100}, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_DIG,GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NONE)
		ScriptLib.SetGroupTempValue(context, "FinishPursina_"..i,0,{})
	end
	return 0
end

function groupLoad(context,evt)
	ScriptLib.PrintContextLog(context, "【[groupLoad]】")
	ScriptLib.InitTimeAxis(context,"CreateBoss",{1},false)
	return 0
end
function groupRefresh(context,evt)
	ScriptLib.PrintContextLog(context, "【[groupRefresh]】[2021_7_29_171549]")
	ScriptLib.EndTimeAxis(context, "refreshgroup")
	ScriptLib.StopGallery(context,GALLERY_ID,false)
	ScriptLib.EndFatherChallenge(context, CHALLENGEID)
	ScriptLib.InitTimeAxis(context,"CreateBoss",{1},false)
	return 0
end

function Finteract(context, evt)
	if evt.param2 == 175 then
		local groupID = ScriptLib.GetContextGroupId(context)
		--boss专用:设置进战、初始化watcher
		if defs.Boss ~= nil then
			ScriptLib.PrintContextLog(context, "【[bOSS]1】")
			ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.Boss}, "isFinalChallenge", 1)
			ScriptLib.SetGroupTempValue(context,"watcher2",0,{})
			ScriptLib.SetGroupTempValue(context,"watcher3",0,{})	--代表耗时是否能完成watcher
			ScriptLib.InitTimeAxis(context, "watcher3", {Watcher_Condition[3]}, false)	--限时watcher用
			ScriptLib.SetGroupTempValue(context,"watcher4",0,{})	--代表中断特殊技能多少次
			ScriptLib.SetGroupTempValue(context,"watcher5",0,{})	--代表boss被击倒多少次
			ScriptLib.SetGroupTempValue(context,"watcher6",0,{})	--代表boss被击破弱点多少次
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, Pursina[1][1], "SGV_NeedCollider", 1.0)--打开ScenePropCollider（激光用）
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, Pursina[2][1], "SGV_NeedCollider", 1.0)--打开ScenePropCollider（激光用）
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, Pursina[3][1], "SGV_NeedCollider", 1.0)--打开ScenePropCollider（激光用）
		end
		--初始化LD用变量
		ScriptLib.SetGroupVariableValue(context, "IsFinished", 0)
		ScriptLib.SetGroupVariableValue(context, "Boss_Enhance", 0)
		ScriptLib.SetGroupVariableValue(context, "Active_Count", 0)
		--初始化TD用变量
		ScriptLib.SetGroupTempValue(context,"FinishPursinaCount",0,{})	--已经挖完多少个
		ScriptLib.SetGroupTempValue(context,"HP_1",100,{})	--初始血量1
		ScriptLib.SetGroupTempValue(context,"HP_2",100,{})	--初始血量2
		ScriptLib.SetGroupTempValue(context,"HP_3",100,{})	--初始血量3
		ScriptLib.SetGroupTempValue(context,"Progress_To_Add_1",0,{})	--挖掘进度中转变量
		ScriptLib.SetGroupTempValue(context,"Progress_To_Add_2",0,{})	--挖掘进度中转变量
		ScriptLib.SetGroupTempValue(context,"Progress_To_Add_3",0,{})	--挖掘进度中转变量
		
		-- 卸载操作台
		if defs.Boss == nil then ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) end
		ScriptLib.DelWorktopOptionByGroupId(context, groupID, evt.param1, 175)
		--gallery+challenge同开同关
		local uid = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetPlayerStartGallery(context, GALLERY_ID, {uid[1]})
		ScriptLib.CreateFatherChallenge(context,CHALLENGEID,CHALLENGEID,99999999, {success=1, fail=1,fail_on_wipe=false})
		ScriptLib.StartFatherChallenge(context, CHALLENGEID)
		ScriptLib.AttachChildChallenge(context,CHALLENGEID,CHALLENGEID_CHILD,CHALLENGEID_CHILD,{3,1000,1},{uid[1]},{success=1, fail=1})
		--标记挖掘桩，设置为201
		find3digger(context)
		 -- 创建标识为"tick"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
		ScriptLib.InitTimeAxis(context, "tick", {1}, true)
		--5秒后显示reminder
		ScriptLib.InitTimeAxis(context, "reminder", {6}, false)
	end 
	return 0
end
function tick(context,evt)--每tick计算进度  "Progress_To_Add_"..i
	local FinishPursina = {}
	for i = 1, #Pursina do
		FinishPursina[i] = ScriptLib.GetGroupTempValue(context,"FinishPursina_"..i,{})
		if FinishPursina[i] ~= 1 then
			local Progress_wait_for_Add = ScriptLib.GetGroupTempValue(context, "Progress_To_Add_"..i,{})	--取当前待增加进度
			if Progress_wait_for_Add >= 10 then 
				local real_add = math.floor(Progress_wait_for_Add/10)
				ScriptLib.AddGalleryProgressScore(context, "digProgress"..i-1, GALLERY_ID, real_add)
				ScriptLib.SetGroupTempValue(context,"Progress_To_Add_"..i,Progress_wait_for_Add - real_add*10,{})

				local nowProgress = ScriptLib.GetGalleryProgressScore(context,"digProgress".. i-1,GALLERY_ID) 
				if nowProgress >= 100 then 
					local groupID = ScriptLib.GetContextGroupId(context)
					ScriptLib.SetGadgetStateByConfigId(context,Pursina[i][1], GadgetState.GearAction1)
					ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, Pursina[i][2])
					ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, 888880+i)
					ScriptLib.SetGroupTempValue(context, "FinishPursina_"..i,1,{})
				end
			end
		end
	end
	if FinishPursina[1] == 1 and FinishPursina[2] == 1 and FinishPursina[3] == 1 then
		finishPlay(context)
	end
	return 0
end
function finishPlay(context)
	ScriptLib.PrintContextLog(context, "【[finishPlay]】")
	ScriptLib.EndTimeAxis(context, "tick")
	local groupID = ScriptLib.GetContextGroupId(context)
	--标识设为1
	ScriptLib.SetGroupVariableValue(context, "IsFinished", 1)
	-- 停止标识为"looptime"的时间轴【LD需求】
	ScriptLib.EndTimeAxis(context, "looptime")
	--让他清理残留gadget
	if Operator_Config_id ~= 0 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, Operator_Config_id, "SGV_Try_Clean_Gadgets", 1.0)
	end
	--中间操作台特效关掉
	ScriptLib.SetGadgetStateByConfigId(context, ScriptLib.GetGroupTempValue(context,"Operator_Config_id",{}), GadgetState.GearStop)
	--处理watcher
	local uid = ScriptLib.GetSceneUidList(context)
	local groupID = ScriptLib.GetContextGroupId(context)
	if defs.Boss ~= nil then
		--杀死boss
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.Boss}, "Monster_Konungmathr_None_RealDie_Label", 1)
		--2.2挖矿活动__完成
		ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_PursinaChallenge_watcher_1",1)
		--2.2挖矿活动__完成且所有光钉血量高于xx
		if ScriptLib.GetGroupTempValue(context,"watcher2",{}) == 0 then
			ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_PursinaChallenge_watcher_2", 1)
		end
		--2.2挖矿活动__特定时间内完成
	   local temp_result = ScriptLib.GetGroupTempValue(context,"watcher3",{})
	   if temp_result ~= 1 then
		   ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_PursinaChallenge_watcher_3", 1)
		   ScriptLib.PrintContextLog(context, "[通关成就]特定时间内完成")
	   end
--[[  		--2.2挖矿活动__完成且中断特殊技能n次
		local temp_result = ScriptLib.GetGroupTempValue(context,"watcher4",{})
		ScriptLib.PrintContextLog(context, "[通关计数]中断特殊技能".. temp_result.. "次")
		if temp_result >= Watcher_Condition[4] then
			ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_PursinaChallenge_watcher_4", 1)
		end ]]
		--2.2挖矿活动__完成且击倒boss不少于n次
		local temp_result = ScriptLib.GetGroupTempValue(context,"watcher5",{})
		ScriptLib.PrintContextLog(context, "[通关计数]击倒boss".. temp_result.. "次")
		if temp_result >= Watcher_Condition[5] then 
			ScriptLib.AddExhibitionAccumulableData(context,  uid[1], "Activity_PursinaChallenge_watcher_5", 1)
		end
		--2.2挖矿活动__完成且未击倒boss
		if temp_result == 0 then 
			ScriptLib.AddExhibitionAccumulableData(context,  uid[1], "Activity_PursinaChallenge_watcher_4", 1)
		end
		--完成后，等待一段时间refreshgroup
		ScriptLib.InitTimeAxis(context, "refreshgroup", {15}, false)
	else
		ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_Pursina_Group_".. groupID,1)
		ScriptLib.FinishGroupLinkBundle(context, groupID)
	end
	
	log_ActivityDig_2(context,0)
	return 0
end
function gallerytimeout(context,evt)
	ScriptLib.PrintContextLog(context, "【[gallerytimeout]】")
	ScriptLib.PrintContextLog(context, "【[gallerytimeout]】evt.param1="..evt.param1)
	ScriptLib.PrintContextLog(context, "【[gallerytimeout]】evt.param2="..evt.param2)
	ScriptLib.PrintContextLog(context, "【[gallerytimeout]】GALLERY_ID="..GALLERY_ID)
	if evt.param1 == GALLERY_ID and evt.param2 == 0 then
		if evt.param3 == 1 then 
			ScriptLib.PrintContextLog(context, "【[gallerytimeout]】evt.param3="..evt.param3)
			--埋点
			log_ActivityDig_2(context,2)
		end
		fail(context)
	end
	return 0
end
function action_HPChange_1(context,evt)
	ScriptLib.PrintContextLog(context, "【[action_HPChange_1]】")
	ScriptLib.SetGroupTempValue(context,"HP_1",evt.param3,{})
	if evt.param3 < 20 then ScriptLib.ShowReminder(context,RMD_HP_LOW[1]) end
	if evt.param3 < Watcher_Condition[2] then ScriptLib.SetGroupTempValue(context,"watcher2",1,{}) end
	return 0
end
function action_HPChange_2(context,evt)
	ScriptLib.PrintContextLog(context, "【[action_HPChange_2]】")
	ScriptLib.SetGroupTempValue(context,"HP_2",evt.param3,{})
	if evt.param3 < 20 then ScriptLib.ShowReminder(context,RMD_HP_LOW[2]) end
	if evt.param3 < Watcher_Condition[2] then ScriptLib.SetGroupTempValue(context,"watcher2",1,{}) end
	return 0
end
function action_HPChange_3(context,evt)
	ScriptLib.PrintContextLog(context, "【[action_HPChange_3]】")
	ScriptLib.SetGroupTempValue(context,"HP_3",evt.param3,{})
	if evt.param3 < 20 then ScriptLib.ShowReminder(context,RMD_HP_LOW[3]) end
	if evt.param3 < Watcher_Condition[2] then ScriptLib.SetGroupTempValue(context,"watcher2",1,{}) end
	return 0
end
--以下为ServerLuaCall函数。
function AddProgress_LowPower(context)
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	for i = 1 , #Pursina do
		if configID ==Pursina[i][1] then
			ScriptLib.ChangeGroupTempValue(context,"Progress_To_Add_"..i, LOWPOWER_SPEED,{})
			end
	end
	return 0
end
function AddProgress_MediumPower(context)
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	for i = 1 , #Pursina do
		if configID ==Pursina[i][1] then
			ScriptLib.ChangeGroupTempValue(context,"Progress_To_Add_"..i, MEDIUMPOWER_SPEED,{})
		end
	end
	return 0
end
function AddProgress_HighPower(context)
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	for i = 1 , #Pursina do
		if configID ==Pursina[i][1] then
			ScriptLib.ChangeGroupTempValue(context,"Progress_To_Add_"..i, HIGHPOWER_SPEED,{})
		end
	end
	return 0
end
function LowPower(context)
	ScriptLib.PrintContextLog(context, "【[LowPower]】")
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	ScriptLib.MarkGroupLuaAction(context, "ActivityDig_3",ScriptLib.GetGalleryTransaction(context, GALLERY_ID), {["Pursina_ID"] = configID,["change_type"]=4})
	return 0 
end
function MediumPower(context)
	ScriptLib.PrintContextLog(context, "【[MediumPower]】")
 	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	ScriptLib.MarkGroupLuaAction(context, "ActivityDig_3",ScriptLib.GetGalleryTransaction(context, GALLERY_ID) , {["Pursina_ID"] = configID,["change_type"]=3})
	return 0 
end
function HighPower(context)
	ScriptLib.PrintContextLog(context, "【[HighPower]】")
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	if defs.Boss ~= nil then ScriptLib.SetGroupVariableValue(context, "Boss_SetBattle", 1) end
	ScriptLib.MarkGroupLuaAction(context, "ActivityDig_3",ScriptLib.GetGalleryTransaction(context, GALLERY_ID), {["Pursina_ID"] = configID,["change_type"]=2})
	return 0
end

function SLC_ShowUI(context)
	ScriptLib.PrintContextLog(context, "【[SLC_ShowUI]】")
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	for i = 1, #Pursina do
		if Pursina[i][2] == configID then ScriptLib.CreateGadget(context, {config_id = 888880 + i}) end
	end	
	return 0 
end
function SLC_HideUI(context)
	ScriptLib.PrintContextLog(context, "【[SLC_HideUI]】")
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	local groupID = ScriptLib.GetContextGroupId(context)
	for i = 1, #Pursina do
		if Pursina[i][2] == configID then ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, 888880+i) end
	end	
	return 0 
end
function ServerLuaCall_Pursina_Start(context)--桩子物件用，用于当前激活桩子的计数,顺便埋个点
	ScriptLib.ChangeGroupVariableValue(context, "Active_Count", 1)
	ScriptLib.MarkGroupLuaAction(context, "ActivityDig_3",ScriptLib.GetGalleryTransaction(context, GALLERY_ID), {["Pursina_ID"] = configID,["change_type"]=1})
	return 0
end
function ServerLuaCall_Pursina_End(context)--桩子物件用，用于当前激活桩子的计数
	ScriptLib.ChangeGroupVariableValue(context, "Active_Count", -1)
	return 0
end
function ServerLuaCall_Enhance_Start(context)--事件[Boss狂暴开始]供战斗组的ServerLuaCall调用
	ScriptLib.SetGroupVariableValue(context, "Boss_Enhance", 1)
	ScriptLib.ShowReminder(context,600083)
	return 0
end
function ServerLuaCall_Enhance_End(context)--事件[Boss狂暴结束]供战斗组的ServerLuaCall调用
	ScriptLib.SetGroupVariableValue(context, "Boss_Enhance", 0)
	return 0
end
function watcher4_count(context)--事件[中断特殊技能]供战斗组的ServerLuaCall调用
	ScriptLib.PrintContextLog(context, "【[watcher4_count]】")
	ScriptLib.ChangeGroupTempValue(context, "watcher4", 1, {})
	return 0
end
function watcher5_count(context)--事件[击倒]供战斗组的ServerLuaCall调用
	ScriptLib.PrintContextLog(context, "【[watcher5_count]】")
	ScriptLib.ChangeGroupTempValue(context, "watcher5", 1, {})
	ScriptLib.ShowReminder(context,600078)
	return 0
end
function watcher6_count(context)--事件[击破弱点]供战斗组的ServerLuaCall调用  【直接add陈列室，因为不用局内计算 而是累计值】
	ScriptLib.PrintContextLog(context, "【[watcher6_count]】")
	local uid = ScriptLib.GetSceneUidList(context)
	ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_PursinaChallenge_watcher_6", 1)
	return 0
end
function ChargeBarChange(context)
	ScriptLib.PrintContextLog(context, "【[ChargeBarChange]】")

	return 0
end

function Initialize()
	--加触发器
	for k,v in pairs(Tirgger_Start) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for k,v in pairs(Pursina) do --根据桩子数量创建监控桩子血量的触发器
		table.insert(triggers,{ name = "HP"..k, config_id = 8000000+k, event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(Pursina[k][2]), condition = "", action = "action_HPChange_"..k,trigger_count = 0})
		table.insert(suites[1].triggers, "HP"..k)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end
	--调整血量物件位置
	for k,v in pairs(gadgets) do
		for k2,v2 in pairs(Pursina) do
			if v.config_id == v2[2] then
				for k3,v3 in pairs(gadgets) do
					if v3.config_id == v2[1] then v.pos = v3.pos end
				end
			end
		end
		if v.config_id == 70800055 then
			v.server_global_value_config = {["SGV_Try_Clean_Gadgets"]= 0}
			Operator_Config_id = 70800055
		end
	end
	--加物件（隐形billboard挂点）
	for k,v in pairs(gadgets) do
		if v.gadget_id == 70800047 then
			table.insert(gadgets , {config_id = 888881 , gadget_id = 70800050, pos = v.pos, rot = v.rot, level = v.level, area_id = v.area_id })
			break
		end 
	end
	for k,v in pairs(gadgets) do
		if v.gadget_id == 70800048 then
			table.insert(gadgets , {config_id = 888882 , gadget_id = 70800051, pos = v.pos, rot = v.rot, level = v.level, area_id = v.area_id })
			break
		end 
	end
	for k,v in pairs(gadgets) do
		if v.gadget_id == 70800049 then
			table.insert(gadgets , {config_id = 888883 , gadget_id = 70800052, pos = v.pos, rot = v.rot, level = v.level, area_id = v.area_id })
			break
		end 
	end
	return 0
end
Initialize()

