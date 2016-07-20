.class Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;
.super Ljava/lang/Object;
.source "AirGesturesSettingActivity.java"

# interfaces
.implements Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

.field final synthetic val$enableClick:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$setting:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;ZLandroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    iput-boolean p2, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$enableClick:Z

    iput-object p3, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSwitch()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->access$000(Lcom/zte/zgesture/setting/AirGesturesSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 165
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$enableClick:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AirGesturesSettingActivity;

    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesSettingActivity$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/AirGesturesSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method
