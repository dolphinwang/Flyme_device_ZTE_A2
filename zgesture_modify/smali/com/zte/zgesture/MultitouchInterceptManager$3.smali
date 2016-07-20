.class Lcom/zte/zgesture/MultitouchInterceptManager$3;
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
    .line 104
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$3;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app installed!name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$3;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # invokes: Lcom/zte/zgesture/MultitouchInterceptManager;->ifNeedCheckMultitouchApp()V
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$800(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    .line 111
    return-void
.end method
