.class Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AirGesturesSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/AirGesturesSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 34
    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v2, "setting_all"

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v2, "setting_air_gestures"

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->enablePreference(Z)V

    .line 38
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->updatePreferenceStatus()V

    .line 39
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
