.class Lcom/zte/zgesture/setting/ShakeSettingActivity$1;
.super Ljava/lang/Object;
.source "ShakeSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/ShakeSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/ShakeSettingActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->access$000(Lcom/zte/zgesture/setting/ShakeSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_shake"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 47
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->access$000(Lcom/zte/zgesture/setting/ShakeSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 48
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    iget-object v1, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$1;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/ShakeSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->access$000(Lcom/zte/zgesture/setting/ShakeSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_shake"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->enablePreference(Z)V

    .line 49
    return-void
.end method
