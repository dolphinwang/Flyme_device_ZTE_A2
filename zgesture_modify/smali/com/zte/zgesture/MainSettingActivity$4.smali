.class final Lcom/zte/zgesture/MainSettingActivity$4;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/MainSettingActivity;->setFeaturePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;)Lcom/zte/zgesture/setting/SettingSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

.field final synthetic val$setting:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceFragment;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    iput-object p2, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$setting:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSwitch()Z
    .locals 2

    .prologue
    .line 257
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 250
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 251
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 253
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method
