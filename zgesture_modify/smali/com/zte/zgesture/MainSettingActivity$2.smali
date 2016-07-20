.class Lcom/zte/zgesture/MainSettingActivity$2;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/MainSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/MainSettingActivity;

.field final synthetic val$service:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/MainSettingActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/zgesture/MainSettingActivity$2;->this$0:Lcom/zte/zgesture/MainSettingActivity;

    iput-object p2, p0, Lcom/zte/zgesture/MainSettingActivity$2;->val$service:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 127
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$2;->val$service:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    # getter for: Lcom/zte/zgesture/MainSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/zte/zgesture/MainSettingActivity;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$2;->val$service:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
