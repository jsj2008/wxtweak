#include "wxUtil.h"

%hook WCDeviceUserSportDevice
- (void)setM_stepCount:(unsigned int )m_stepCount { %log; %orig; }
- (unsigned int )m_stepCount { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_DID:(long long )m_DID { %log; %orig; }
- (long long )m_DID { %log; long long  r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)setM_bleSimpleProtol:(long long )m_bleSimpleProtol { %log; %orig; }
- (long long )m_bleSimpleProtol { %log; long long  r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)setM_connProto:(NSString *)m_connProto { %log; %orig; }
- (NSString *)m_connProto { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_iconUrl:(NSString *)m_iconUrl { %log; %orig; }
- (NSString *)m_iconUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_deviceName:(NSString *)m_deviceName { %log; %orig; }
- (NSString *)m_deviceName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_appName:(NSString *)m_appName { %log; %orig; }
- (NSString *)m_appName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_bundleId:(NSString *)m_bundleId { %log; %orig; }
- (NSString *)m_bundleId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_deviceType:(NSString *)m_deviceType { %log; %orig; }
- (NSString *)m_deviceType { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_deviceId:(NSString *)m_deviceId { %log; %orig; }
- (NSString *)m_deviceId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_isHealThkitOrApp:(_Bool )m_isHealThkitOrApp { %log; %orig; }
- (_Bool )m_isHealThkitOrApp { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isSimpleProfileDevcie { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isBLEDevice { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isM7Device { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
%end
%ctor {
    if (checkPluginCanUse()){
        %init;
    }
    //    [[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")] show];
}