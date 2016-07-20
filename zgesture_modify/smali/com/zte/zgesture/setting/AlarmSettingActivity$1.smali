.class Lcom/zte/zgesture/setting/AlarmSettingActivity$1;
.super Ljava/lang/Object;
.source "AlarmSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/AlarmSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/AlarmSettingActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->access$000(Lcom/zte/zgesture/setting/AlarmSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_alarm_turn"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AlarmSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->access$000(Lcom/zte/zgesture/setting/AlarmSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 44
    return-void
.end method
