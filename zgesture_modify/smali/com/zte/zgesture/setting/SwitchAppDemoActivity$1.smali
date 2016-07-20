.class Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SwitchAppDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v2, "option"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, "opt":I
    const-string v2, "dir"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "dir":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->switchTip(I)V
    invoke-static {v2, v0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$000(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->removeTip()V
    invoke-static {v2}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$100(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->switchAppAnim(I)V
    invoke-static {v2, v0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$200(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;I)V

    .line 76
    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->removeTip()V
    invoke-static {v2}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$100(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V

    goto :goto_0
.end method
