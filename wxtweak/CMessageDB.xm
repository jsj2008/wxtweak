@class CMMDB;
#include "wxUtil.h"

%hook CMessageDB
//- (void)setM_oMMDB:(CMMDB *)m_oMMDB { %log; %orig; }
- (CMMDB *)m_oMMDB { %log; CMMDB * r = %orig; HBLogDebug(@" = %@", r); return r; }

- (void)setMessageUnreadCondition:(struct WCDBConditionBase *)arg1 { %log; %orig; }
- (void)fillDBMsg:(id)arg1 andProperty:(void *)arg2 fromMsgWrap:(id)arg3 des:(unsigned int)arg4 { %log; %orig; }
- (void)HandleMessage:(id)arg1 ChatName:(id)arg2 Des:(unsigned int)arg3 { %log; %orig; }
- (id)GetLocalUsrName:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)InsertNewRowInDuplicateMsg:(long long)arg1 Time:(unsigned int)arg2 { %log; %orig; }
- (void)DelMsgInDuplicateMsg { %log; %orig; }
- (void)AddMsgToSendTable:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (unsigned int)GetUnReadCountInHello:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetCountInHello:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetSayHelloStatus:(id)arg1 LocalID:(unsigned int)arg2 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (_Bool)SetSayHelloStatus:(id)arg1 LocalID:(unsigned int)arg2 Status:(unsigned int)arg3 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)ClearHelloUnRead:(id)arg1 HelloUser:(id)arg2 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)DelHelloMsg:(id)arg1 HelloUser:(id)arg2 { %log; %orig; }
- (id)GetHelloMsg:(id)arg1 HelloUser:(id)arg2 Limit:(unsigned int)arg3 OnlyTo:(_Bool)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetHelloUsers:(id)arg1 Limit:(unsigned int)arg2 OnlyUnread:(_Bool)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (id)GetHelloMsgForSyncRead:(id)arg1 Where:(const struct WCDBConditionBase *)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetHelloMsg:(id)arg1 Where:(const struct WCDBConditionBase *)arg2 Order:(const struct WCDBConditionBase *)arg3 Limit:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)AddHelloMsg:(id)arg1 MsgWrap:(id)arg2 HelloUser:(id)arg3 OpCode:(unsigned int)arg4 DES:(unsigned int)arg5 checkCreateTime:(_Bool)arg6 status:(unsigned int)arg7 { %log; %orig; }
- (unsigned int)GetImgOrVideoMsgCount:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetImgOrVideoMsgCount:(id)arg1 FromID:(unsigned int)arg2 CreateTime:(unsigned int)arg3 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (id)GetImgOrVideoNextMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 CreateTime:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgOrVideoLastMsg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgOrVideoLastMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 CreateTime:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgAndVideoMsgList:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgMsgList:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsgForFlowWall:(id)arg1 Where:(const struct WCDBConditionBase *)arg2 Order:(const struct WCDBConditionBase *)arg3 Limit:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned int)GetImgMsgCount:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetImgMsgCount:(id)arg1 FromID:(unsigned int)arg2 CreateTime:(unsigned int)arg3 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (id)GetImgLastMsg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgLastMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 CreateTime:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetImgNextMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 CreateTime:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)UpdatePimMsg:(id)arg1 LocalID:(unsigned int)arg2 Content:(id)arg3 CreateTime:(unsigned int)arg4 { %log; %orig; }
- (void)UpdateVideoMessage:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)UpdateMessage:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)UpdateVoiceMessage:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)UpdateVoiceStatus:(id)arg1 LocalID:(unsigned int)arg2 DownloadStatus:(unsigned int)arg3 { %log; %orig; }
- (_Bool)AddMessageToChatExt:(id)arg1 MsgWrap:(id)arg2 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (unsigned int)GetMesCount:(id)arg1 MesType:(unsigned int)arg2 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetAllMesCount:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetUnReadCount:(id)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (unsigned int)GetTextMsgCount:(id)arg1 FromID:(unsigned int)arg2 ToID:(unsigned int)arg3 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)DelMsg:(id)arg1 MsgList:(id)arg2 DelAll:(_Bool)arg3 { %log; %orig; }
- (void)TransferMsgFromChatToDuplicate:(id)arg1 { %log; %orig; }
- (void)ClearUnReadForSync:(id)arg1 CreateTime:(unsigned int)arg2 { %log; %orig; }
- (_Bool)ClearUnRead:(id)arg1 FromID:(unsigned int)arg2 ToID:(unsigned int)arg3 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)DropChatTable:(id)arg1 { %log; %orig; }
- (void)ModVoipMsgStatus:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)ModMsgByBitSet:(id)arg1 MsgWrap:(id)arg2 BitSet:(unsigned int)arg3 { %log; %orig; }
- (void)ModLocationMsg:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)ModMsg:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (id)GetFirstUnreadMsg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetLastMsgToUsr:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetLastMsgFromUsr:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetLastMsg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetTextMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetTextMsg:(id)arg1 FromID:(unsigned int)arg2 ToID:(unsigned int)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsg:(id)arg1 BizMsgClientID:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsg:(id)arg1 n64SvrID:(long long)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsg:(id)arg1 LocalID:(unsigned int)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)QueryMsgByCreateTime:(id)arg1 FromID:(unsigned int)arg2 FromCreateTime:(unsigned int)arg3 Limit:(unsigned int)arg4 Where:(const struct WCDBConditionBase *)arg5 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetDownMsgByCreateTime:(id)arg1 FromID:(unsigned int)arg2 FromCreateTime:(unsigned int)arg3 Limit:(unsigned int)arg4 LeftCount:(unsigned int *)arg5 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsgByCreateTime:(id)arg1 FromID:(unsigned int)arg2 FromCreateTime:(unsigned int)arg3 Limit:(unsigned int)arg4 LeftCount:(unsigned int *)arg5 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetDownMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsg:(id)arg1 FromID:(unsigned int)arg2 Limit:(unsigned int)arg3 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsgForSyncRead:(id)arg1 Where:(const struct WCDBConditionBase *)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsg:(id)arg1 Where:(const struct WCDBConditionBase *)arg2 order:(const struct WCDBConditionBase *)arg3 Limit:(unsigned int)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (const struct WCDBConditionBase *)orderOfAscCreateTimeAndMsgLocalId { %log; const struct WCDBConditionBase * r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (const struct WCDBConditionBase *)orderOfDescCreateTimeAndMsgLocalId { %log; const struct WCDBConditionBase * r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (void)AddBackupMsg:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (void)AddMsg:(id)arg1 MsgWrap:(id)arg2 withTimeFixed:(_Bool)arg3 { %log; %orig; }
- (void)AddMsg:(id)arg1 MsgWrap:(id)arg2 { %log; %orig; }
- (_Bool)RollbackTransaction { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)CommitTransaction { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)BeginTransaction { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)DBContext { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)InitDB:(id)arg1 { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
%end



%ctor {
    if (checkPluginCanUse()){
        %init;
    }
    //    [[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")] show];
}


