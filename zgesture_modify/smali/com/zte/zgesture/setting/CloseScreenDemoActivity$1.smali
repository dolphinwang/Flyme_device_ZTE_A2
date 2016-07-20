.class Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CloseScreenDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/CloseScreenDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mDark:Z
    invoke-static {v0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->access$000(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->access$100(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackgroundColor(I)V

    .line 30
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->access$100(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->mDark:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;->access$002(Lcom/zte/zgesture/setting/CloseScreenDemoActivity;Z)Z

    .line 34
    :cond_0
    return-void
.end method
