.class Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;
.super Landroid/content/BroadcastReceiver;
.source "AppListSlideRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;->this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;->this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    # invokes: Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->removeTips()V
    invoke-static {v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->access$300(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)V

    .line 108
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;->this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    iget-object v1, v1, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 110
    .local v0, "winManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;->this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    # setter for: Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I
    invoke-static {v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->access$402(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;I)I

    .line 112
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;->this$0:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    # setter for: Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I
    invoke-static {v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->access$502(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;I)I

    .line 114
    return-void
.end method
