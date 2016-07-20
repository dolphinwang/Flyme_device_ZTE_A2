.class Lcom/zte/zgesture/MultitouchInterceptManager$2;
.super Landroid/content/BroadcastReceiver;
.source "MultitouchInterceptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MultitouchInterceptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/MultitouchInterceptManager;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$2;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$2;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # invokes: Lcom/zte/zgesture/MultitouchInterceptManager;->updateScreenTouchInterceptProperty()V
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$700(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    .line 100
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$2;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # invokes: Lcom/zte/zgesture/MultitouchInterceptManager;->ifNeedCheckMultitouchApp()V
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$800(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    .line 101
    return-void
.end method
