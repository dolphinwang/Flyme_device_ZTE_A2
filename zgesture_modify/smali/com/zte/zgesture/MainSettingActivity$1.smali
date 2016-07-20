.class Lcom/zte/zgesture/MainSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MainSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/MainSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/MainSettingActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/zgesture/MainSettingActivity$1;->this$0:Lcom/zte/zgesture/MainSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 68
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$000()Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_all"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/zte/zgesture/MainSettingActivity;->enablePreference(Z)V

    .line 70
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->updatePreferenceStatus()V

    .line 71
    return-void
.end method
