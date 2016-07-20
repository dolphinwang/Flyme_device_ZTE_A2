.class public Lcom/zte/zgesture/MainSettingActivity$MotionFragment;
.super Lcom/zte/mifavor/preference/PreferenceFragment;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MainSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 457
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/MainSettingActivity$MotionFragment;->addPreferencesFromResource(I)V

    .line 459
    new-instance v5, Landroid/content/Intent;

    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .local v5, "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->callFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    const-string v4, "setting_call"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 464
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/4 v1, 0x7

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->answerFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    const-string v4, "setting_answer"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 469
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .restart local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    const-string v4, "setting_pocket"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 473
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0x8

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    const-string v4, "setting_call_turn"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 478
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/AlarmSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "enableSwitch"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    const-string v4, "setting_alarm_turn"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 483
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0xb

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    const-string v4, "setting_change_to_receiver"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 488
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "type"

    const/16 v1, 0xc

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    const-string v4, "setting_close_screen"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 493
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zte/zgesture/setting/ShakeSettingActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    .restart local v5    # "intent":Landroid/content/Intent;
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig;->shakeFeature:Ljava/lang/String;

    sget-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    const-string v4, "setting_shake"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .line 496
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    # setter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->access$002(Lcom/zte/zgesture/setting/GestureSetting;)Lcom/zte/zgesture/setting/GestureSetting;

    .line 498
    :try_start_0
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_all"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->enablePreference(Z)V

    .line 499
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->updatePreferenceStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    const-string v0, "MotionFragment onCreate"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 505
    return-void

    .line 500
    :catch_0
    move-exception v6

    .line 501
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set preferenceStatus error , Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onDestroy()V

    .line 510
    return-void
.end method
