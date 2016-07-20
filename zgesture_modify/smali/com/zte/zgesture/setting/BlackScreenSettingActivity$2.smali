.class Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;
.super Ljava/lang/Object;
.source "BlackScreenSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 62
    iput-object p1, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_black_screen_gesture"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/setting/BlackScreenSettingActivity$2;->this$0:Lcom/zte/zgesture/setting/BlackScreenSettingActivity;

    # getter for: Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/BlackScreenSettingActivity;->access$000(Lcom/zte/zgesture/setting/BlackScreenSettingActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 67
    return-void
.end method
