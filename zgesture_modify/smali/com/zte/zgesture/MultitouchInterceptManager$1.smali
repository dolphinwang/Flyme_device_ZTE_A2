.class Lcom/zte/zgesture/MultitouchInterceptManager$1;
.super Ljava/lang/Object;
.source "MultitouchInterceptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 62
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-static {}, Lcom/zte/zgesture/GestureService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 68
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 73
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$002(Lcom/zte/zgesture/MultitouchInterceptManager;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->lastPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$100(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->lastPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$100(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$000(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$200(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/data/MultitouchApp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$000(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/data/MultitouchApp;->isAlertApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$200(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/data/MultitouchApp;

    move-result-object v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/zte/zgesture/data/MultitouchApp;->shouldShowAlertDialog(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # invokes: Lcom/zte/zgesture/MultitouchInterceptManager;->showAlertDialog()V
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$300(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/zte/zgesture/MultitouchInterceptManager;->lastPackageName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$102(Lcom/zte/zgesture/MultitouchInterceptManager;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$600(Lcom/zte/zgesture/MultitouchInterceptManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager$1;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$400(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/Runnable;

    move-result-object v3

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->TIMER:I
    invoke-static {}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$500()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method
