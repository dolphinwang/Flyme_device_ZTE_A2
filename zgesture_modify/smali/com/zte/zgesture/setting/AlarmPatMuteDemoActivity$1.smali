.class Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmPatMuteDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    :try_start_0
    const-string v1, "motion"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 38
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;

    # invokes: Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->handleMotion(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->access$000(Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method
