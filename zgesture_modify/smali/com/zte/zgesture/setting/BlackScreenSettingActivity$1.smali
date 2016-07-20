.class Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BlackScreenSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/BlackScreenSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 32
    iget-object v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v2, "setting_all"

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v2, "setting_black_screen_gesture"

    invoke-virtual {v0, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->enablePreference(Z)V

    .line 36
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->updatePreferenceStatus()V

    .line 37
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
