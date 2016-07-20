.class Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;
.super Ljava/lang/Object;
.source "BlackScreenSettingActivity.java"

# interfaces
.implements Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->setFeaturePref(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

.field final synthetic val$drawType:I

.field final synthetic val$enableClick:Z

.field final synthetic val$setting:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;ZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    iput-boolean p2, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$enableClick:Z

    iput p3, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$drawType:I

    iput-object p4, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSwitch()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$setting:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 183
    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$enableClick:Z

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    const-class v2, Lcom/zte/zgesture/setting/DrawIntroActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->val$drawType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-virtual {v1, v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
