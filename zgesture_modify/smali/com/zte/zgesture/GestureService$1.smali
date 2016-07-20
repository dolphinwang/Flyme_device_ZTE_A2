.class Lcom/zte/zgesture/GestureService$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/GestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/GestureService;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/GestureService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/zgesture/GestureService$1;->this$0:Lcom/zte/zgesture/GestureService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/zgesture/GestureService$1;->this$0:Lcom/zte/zgesture/GestureService;

    # getter for: Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/GestureService;->access$000(Lcom/zte/zgesture/GestureService;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 41
    return-void
.end method
