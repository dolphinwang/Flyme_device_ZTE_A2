.class Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;
.super Ljava/lang/Object;
.source "PocketModeIntroActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/PocketModeIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/PocketModeIntroActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->access$000(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_pocket"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->access$000(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 63
    return-void
.end method
