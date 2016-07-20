.class Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CloseAppDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/CloseAppDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

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

    .line 91
    const-string v2, "option"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "opt":I
    const-string v2, "dir"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "dir":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->switchTip(I)V
    invoke-static {v2, v0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$000(Lcom/zte/zgesture/setting/CloseAppDemoActivity;I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->removeTip()V
    invoke-static {v2}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$100(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAppAnim(I)V
    invoke-static {v2, v0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$200(Lcom/zte/zgesture/setting/CloseAppDemoActivity;I)V

    .line 100
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->refeshTip()V
    invoke-static {v2}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$300(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    .line 101
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->removeTip()V
    invoke-static {v2}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$100(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    goto :goto_0
.end method
